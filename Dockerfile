FROM python:3.8
WORKDIR bot/
COPY requirements.txt ./
RUN git clone git@github.com:battleshipbot/bridge-wrapper.git bridge
RUN pip install -r requirements.txt
COPY . ./
CMD ["python", "main.py"]
