from flask import request
from flask_restplus import Resource
from app.main.util.decorator import admin_token_required
import app.main.Dto.user as userDto
import app.main.service.user_service as user_service
import app.main.util.helper as helper

api = userDto.UserDto.api
_create_normal_user = userDto.UserDto.create_normal_user
_login_user = userDto.UserDto.create_normal_user
@api.route('/')
class User(Resource):
    @api.doc('get all user')
    @helper.is_admin_token
    def get(self):
        """get all user"""
        return user_service.get_all_user_new()

@api.route('/create')
class User(Resource):
    @api.doc('create new user')
    @api.expect(_create_normal_user, validate=True)
    def post(self):
        """create new user"""
        data = request.json
        return user_service.create_new_user(data)

@api.route('/roles')
class User(Resource):
    @api.doc('get all role')
    # @helper.is_token
    def get(self):
        """get all role"""
        return user_service.get_all_role()

@api.route('/login')
class User(Resource):
    @api.doc('user login')
    @api.expect(_login_user, validate=True)
    def post(self):
        """user login"""
        data = request.json
        return user_service.login(data)

@api.route('/logout')
class User(Resource):
    @api.doc('user logout')
    def post(self):
        """user login"""
        auth_header = request.headers.get('Authorization')
        return user_service.logout(auth_header)


