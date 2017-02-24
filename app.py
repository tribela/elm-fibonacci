import os.path as path

from flask import Flask, render_template
from flask_webpack import Webpack


app = Flask(__name__)

here = path.abspath(path.dirname(__file__))

webpack = Webpack()
app.config['WEBPACK_MANIFEST_PATH'] = path.join(here, 'build', 'manifest.json')
webpack.init_app(app)


@app.route('/')
def index():
    return render_template('index.html')
