from app import app


def test_index():
    with app.test_client() as client:
        resp = client.get("/")
        assert resp.status_code == 200
        assert resp.get_json() == {"message": "Hello, World!"}
