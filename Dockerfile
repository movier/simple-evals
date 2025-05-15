FROM python:3.10

WORKDIR /usr/src/simple-evals

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

WORKDIR /usr/src

CMD ["python", "-m", "simple-evals.simple_evals", "--eval=healthbench", "--model=deepseek-r1", "--n-threads=1", "--examples=1"]
