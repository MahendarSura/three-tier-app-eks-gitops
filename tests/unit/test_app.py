import pytest

from app import app



def test_app_exists():

    assert app is not None



def test_app_testing_mode():

    app.config["TESTING"] = True

    assert app.config["TESTING"] is True



def test_home_route():

    client = app.test_client()

    response = client.get("/")

    assert response.status_code == 200
