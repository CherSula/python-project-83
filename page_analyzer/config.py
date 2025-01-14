import os

from dotenv import load_dotenv

load_dotenv()


class Config:
    SECRET_KEY = 'b51f49b0-01b8-4183-bc1e-519f98247b7f'
    # os.getenv("SECRET_KEY")
    DATABASE_URL = os.environ.get("DATABASE_URL")

    def __init__(self):
        if not self.SECRET_KEY:
            raise ValueError("SECRET_KEY not found in environment variables")
        if not self.DATABASE_URL:
            raise ValueError("DATABASE_URL not found in environment variables")


config = Config()
