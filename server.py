from flask import Flask, request

app = Flask(__name__)

@app.route('/', methods=['GET'])
def root_path():
    return "Root path was called"


@app.route('/inject', methods=['GET'])
def inject_path():
    return "/inject Path was called"


if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0',port=5000)