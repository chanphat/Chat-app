
from .. import db, flask_bcrypt
import datetime
from app.main.model.blacklist import BlacklistToken


class User(db.Model):
    """ User Model for storing user related details """
    __tablename__ = "USER"

    id = db.Column(db.Integer, primary_key=True)
    user = db.Column(db.String, nullable = False)
    password = db.Column(db.String ,nullable = False)
    role_id = db.Column(db.Integer, nullable = False)
