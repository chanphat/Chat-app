from app.main import db, flask_bcrypt
from app.main.config import key
import jwt
import datetime
from functools import wraps
from flask import request
from app.main.service.auth_helper import Auth
from app.main.model.user import User
from app.main.model.blacklist import BlacklistToken

#--------save db-----------
def save_db(data):
    db.session.add(data)
    db.session.commit()

#---------commi db---------
def commit_db():
    db.session.commit()

#---------decode hash------
def decode_hash(value):
    return flask_bcrypt.generate_password_hash(value).decode('utf-8')
#-------encode hash------
def is_hash_value(hash_value, value):
    try:
        return flask_bcrypt.check_password_hash(hash_value, value)
    except Exception as e :
        print(e)
        return False
    

#---------encode token----------

def create_token(id):
    try:
        payload = {
            'exp': datetime.datetime.utcnow() + datetime.timedelta(days=1, seconds=5),
            'iat': datetime.datetime.utcnow(),
            'sub': id
        }
        return jwt.encode(
            payload,
            key,
            algorithm='HS256'
        )
    except Exception as e:
        print(e)
        return "Some error when encode token"

#----------decode token-----------------

def check_blacklist(auth_token):
    res = BlacklistToken.query.filter_by(token = str(auth_token)).first()
    return res is not None

def decode_token(auth_token):
    try:
        payload = jwt.decode(auth_token, key)
        is_blacklisted_token = check_blacklist(auth_token)
        if is_blacklisted_token:
            return 'Token blacklisted. Please log in again.'
        else:
            return payload['sub']
    except jwt.ExpiredSignatureError:
        return 'Signature expired. Please log in again.'
    except jwt.InvalidTokenError:
        return 'Invalid token. Please log in again.'

#------------check is token-------------
def is_token(f):
    @wraps(f)
    def decorated(*args, **kwargs):

        data, status = get_logged_in_user(request)
        token = data.get('data')

        if not token:
            return data, status

        return f(*args, **kwargs)

    return decorated


#--------------check is token admin----
def is_admin_token(f):
    @wraps(f)
    def decorated(*args, **kwargs):

        data, status = get_logged_in_user(request)
        token = data.get('data')

        if not token:
            return data, status

        admin = token.get('role_id')
        if admin != 1:
            return {
                'message': 'Need Amin role'
            }, 401

        return f(*args, **kwargs)

    return decorated

#-----------get_logger_user----------------
def get_logged_in_user(new_request):
    # get the auth token
    auth_token = new_request.headers.get('Authorization')
    if auth_token:
        resp = decode_token(auth_token)
        if not isinstance(resp, str):
            user = User.query.filter_by(id = resp).first()
            response_object = {
                'status': 'success',
                'data': {
                    'role_id': user.role_id,
                }
            }
            return response_object, 200
        response_object = {
            'message': resp
        }
        return response_object, 401
    return {
        'message': 'Provide a valid auth token.'
    }, 401

