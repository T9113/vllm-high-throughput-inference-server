import requests
import time

def test_inference_latency():
    start = time.time()
    resp = requests.post("http://localhost:8000/v1/completions", json={
        "model": "meta-llama/Meta-Llama-3-8B-Instruct",
        "prompt": "Explain Kubernetes in 1 sentence.",
        "max_tokens": 50
    })
    print(f"Latency: {time.time() - start:.2f}s, Response: {resp.status_code}")

if __name__ == "__main__":
    test_inference_latency()
