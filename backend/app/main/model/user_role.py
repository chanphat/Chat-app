
from .. import db

class User_Role(db.Model):
    """ User role model """
    __tablename__ = "USER_ROLE"

    id = db.Column(db.Integer, primary_key=True)
    role = db.Column(db.String, nullable = False)
    description = db.Column(db.String)