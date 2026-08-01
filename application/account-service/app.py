from flask import Flask, jsonify
from database import SessionLocal
from models import Customer

app = Flask(__name__)

@app.route("/")
def home():
    return "Account Service is running"

@app.route("/account")
def account():

    db = SessionLocal()

    customer = db.query(Customer).first()

    db.close()

    if customer is None:
        return jsonify({"message": "No customer found"}), 404

    return jsonify({
        "customerName": customer.customer_name,
        "accountNumber": customer.account_number,
        "accountType": customer.account_type,
        "balance": customer.balance,
        "currency": customer.currency
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5001)