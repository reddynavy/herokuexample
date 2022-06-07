FROM python:3.9

WORKDIR /src
COPY requirement.txt ./requirement.txt
RUN pip3 install -r requirement.txt
COPY . .
CMD ["sh", "-c", "streamlit run --server.port $PORT src/app.py"]
