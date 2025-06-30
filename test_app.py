import unittest
from app import app

class TestFlaskApp(unittest.TestCase):
    def setUp(self):
        self.client = app.test_client()

    def test_welcome(self):
        response = self.client.get('/welcome')
        self.assertEqual(response.get_json(), {"message": "You are welcome!"})
