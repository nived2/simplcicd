from flask import Flask, jsonify
import os

app = Flask(__name__)

# Configuration
app.config['ENV'] = os.getenv('FLASK_ENV', 'production')

@app.route('/')
def hello():
    return 'Hello, DevOps World!'

@app.route('/health')
def health():
    return jsonify({
        'status': 'healthy',
        'environment': app.config['ENV']
    }), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=int(os.getenv('PORT', 5000)))
