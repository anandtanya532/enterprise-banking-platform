from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return "Account Service is running"

@app.route("/account")
def account():

    return jsonify({

        "accountNumber": "123456789",

        "customerName": "Tanya Anand",

        "accountType": "Savings",

        "balance": 150000,

        "currency": "INR"

    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5001, debug=True)