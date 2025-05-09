# app.py
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello, CI/CD!"

@app.route('/status')
def status():
    return "ok"

if __name__ == "__main__":
    app.run()