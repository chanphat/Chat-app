from flask_restplus import Namespace, fields

class UserDto:
    api = Namespace('user', description='user related operations')\

    create_normal_user = api.model('create_user', {
        'user_name': fields.String(required = True),
        'password': fields.String(required = True),
    })