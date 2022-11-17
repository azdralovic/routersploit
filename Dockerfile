FROM python:3.12-rc-slim

COPY requirements.txt /tmp/requirements.txt
RUN python -m pip install -r /tmp/requirements.txt

WORKDIR /routersploit
COPY . .

CMD ["python", "rsf.py"]
