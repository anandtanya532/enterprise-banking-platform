from flask import Flask, render_template
import requests

app = Flask(__name__)

ACCOUNT_SERVICE = "http://localhost:5001/account"

@app.route("/")
def home():

    response = requests.get(ACCOUNT_SERVICE)

    account = response.json()

    return render_template("index.html", account=account)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)