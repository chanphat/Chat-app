from app.main import db
from app.main.model.user import User
from app.main.model.user_role import User_Role
from app.main.model.blacklist import BlacklistToken
from sqlalchemy import func
import app.main.util.helper as helper
import app.main.util.validate as validate

#---------- get all user----------------
def get_all_user_new():
    try:
        users = User.query.join(User_Role, User_Role.id == User.id).add_columns(
            User.id,
            User.user,
            User.password,
            User.role_id,
            User_Role.role,
            User_Role.description
        )

        return {
            "message": "Susscessfully",
            "data"  : {
                "users": [{
                            'user_id': User.id, 
                            'user': User.user, 
                            'password': User.password,
                            'role_id': User.role_id,
                            'role': User.role
                        } for User in users]
            }
        }, 200
    except Exception as e:
        print('error: ', e)
        return {
            'message': "some error occurred. Please try again" 
        }, 400

#----------Get all Role-----------
def get_all_role():
    try:
        roles = User_Role.query.all()
        return {
            "message": "Susscessfully",
            "data"  : {
                "users": [{
                            'role_id': role.id, 
                            'role': role.role, 
                            'description': role.description
                        } for role in roles]
            }
        }, 200
    except Exception as e:
        print('error: ', e)
        return {
            'message': 'some error occurred. Please try again'
        }, 400    

#--------create new user-----------

#get validate data
def validate_new_user(data):
    is_user = True
    validate_mess = None
    #check null data
    if 'user_name' not in data or 'password' not in data or validate.is_null_data_in_list(data) == True:
        validate_mess = "Some data field is missing or null. Please try again"
        is_user = False
        return is_user, validate_mess
    # check user already exits
    is_exits_user = User.query.filter_by(user = data['user_name'].strip().lower()).first()
    if is_exits_user is not None:
        is_user = False
        validate_mess = 'User name already exits. Please change user name.'
    return is_user, validate_mess

def create_new_user(data):
    try:
        is_user, validate_mess = validate_new_user(data)
        max_id = db.session.query(func.max(User.id)).one()[0] + 1
        print(helper.decode_hash(data['password']))
        if is_user == True:
            new_user = User(
                id = max_id,
                user = data['user_name'],
                password = helper.decode_hash(data['password']),
                role_id = 2
            )
            helper.save_db(new_user)
            return {
                "message": "create new successfully"
            }, 200
        return {
            "message": validate_mess
        }, 400
    except Exception as e:
        print('error: ', e)
        return {
            'message': "some error occurred. Please try again" 
        }, 400


#---------Login-------
def get_user_by_name(user_name):
    user = User.query.filter_by(user = user_name).first()
    return user

def login(data):
    is_null_data = validate.is_null_data_in_list(data)
    if is_null_data == False:
        user = get_user_by_name(data['user_name'])
        if user is not None:
            is_password = helper.is_hash_value(user.password , data['password'])
            if is_password == False:
                return {
                    'message': 'Password incorrect. Please try again'
                }, 400
            
            return {
                'message': 'Login successfully',
                'token': helper.create_token(user.id).decode()
            }, 200
        return {
            'message': 'User name in correct. Please try again'
        }, 400
    return {
        'message': 'Some data field is missing or null. Please try again'
    }, 400

#-----------Logout---------------

def save_token(token):
    max_id = db.session.query(func.max(BlacklistToken.id)).one()[0]
    if max_id == None:
        max_id = 1
    blacklist_token = BlacklistToken(id = max_id, token = token)
    try:
        helper.save_db(blacklist_token)
        return {
            'message': 'Successfully logged out.'
        }, 200
    except Exception as e:
        return {
            'message': e
        }, 200

def logout(data):
    if data == None or data == '':
        return {
                'message': 'Provide a valid auth token.'
            }, 403
    resp = helper.decode_token(data)
    if not isinstance(resp, str):
        return save_token(data)    
    return {
        'message': resp
    }, 401
        


