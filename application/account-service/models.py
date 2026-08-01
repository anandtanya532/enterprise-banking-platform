from sqlalchemy.orm import DeclarativeBase
from sqlalchemy import Column, Integer, String

class Base(DeclarativeBase):
    pass

class Customer(Base):

    __tablename__ = "customers"

    id = Column(Integer, primary_key=True)

    customer_name = Column(String)

    account_number = Column(String)

    account_type = Column(String)

    balance = Column(Integer)

    currency = Column(String)