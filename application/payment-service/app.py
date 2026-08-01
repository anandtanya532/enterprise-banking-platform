from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return "Payment Service is running"

@app.route("/payments")
def payments():
    return jsonify({
        "transactions": [
            {
                "id": "TXN1001",
                "amount": 2500,
                "status": "SUCCESS"
            },
            {
                "id": "TXN1002",
                "amount": 500,
                "status": "PENDING"
            }
        ]
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5002)