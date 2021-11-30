from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return 'Flask with docker, hurrah!'

if __name__ == '__main__':
    # by default, flask runs on port 5000
    app.run(host="0.0.0.0", debug=True)
    
