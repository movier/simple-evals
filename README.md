Put healthbench data into the data directory and set `INPUT_PATH` in `healthbench_eval.py`
```bash
docker build --platform linux/amd64 -t simple-evals .
docker run -it --rm -v .:/usr/src/simple-evals -v ./result:/tmp -e OPENAI_API_KEY=API_KEY -e DEEPSEEK_API_KEY=API_KEY simple-evals
```
