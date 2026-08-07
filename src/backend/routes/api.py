from flask import Blueprint, jsonify
from services.service import get_status

api = Blueprint("api", __name__)

@api.route("/api/status")
def status():
    return jsonify(get_status())
