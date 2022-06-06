FROM python:3.9
WORKDIR /app
COPY requirement.txt ./requirement.txt
RUN pip3 install -r requirement.txt
COPY . .


CMD streamlit run --server.port $PORT app.py
