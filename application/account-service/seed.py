from database import SessionLocal
from models import Customer

db = SessionLocal()

customer = Customer(
    customer_name="Tanya Anand",
    account_number="123456789",
    account_type="Savings",
    balance=150000,
    currency="INR"
)

db.add(customer)

db.commit()

db.close()

print("Customer inserted.")