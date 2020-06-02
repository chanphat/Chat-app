from .. import db
import datetime


class BlacklistToken(db.Model):
    """
    Token Model for storing JWT tokens
    """
    __tablename__ = 'BLACK_LIST_TOKEN'

    id = db.Column(db.Integer, primary_key=True)
    token = db.Column(db.String(500),nullable=False)
    black_list_on = db.Column(db.DateTime, nullable=False)

    def __init__(self, id, token):
        self.id = id,
        self.token = token,
        self.black_list_on = datetime.datetime.now()
