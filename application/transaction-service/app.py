from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return "Transaction Service is running"

@app.route("/transactions")
def transactions():
    return jsonify({
        "transactions": [
            {
                "id": "TRX1001",
                "from": "Savings",
                "to": "Current",
                "amount": 2500,
                "status": "SUCCESS"
            },
            {
                "id": "TRX1002",
                "from": "Savings",
                "to": "Credit Card",
                "amount": 1500,
                "status": "PENDING"
            }
        ]
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5003)