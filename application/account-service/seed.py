from database import SessionLocal
from models import Customer

db = SessionLocal()

existing_customer = db.query(Customer).filter(
    Customer.account_number == "123456789"
).first()

if existing_customer:
    print("Customer already exists. Skipping seed.")
else:
    customer = Customer(
        customer_name="Tanya Anand",
        account_number="123456789",
        account_type="Savings",
        balance=150000,
        currency="INR"
    )

    db.add(customer)
    db.commit()

    print("Customer inserted.")

db.close()


