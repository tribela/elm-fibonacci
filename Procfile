dev: FLASK_APP=app.py FLASK_DEBUG=1 flask run
web: uwsgi --die-on-term --master --module app:app --http :${PORT:-5000}
