FROM vllm/vllm-openai:latest
ENV MODEL="meta-llama/Meta-Llama-3-8B-Instruct"
ENV MAX_MODEL_LEN=8192
ENV GPU_MEMORY_UTILIZATION=0.90

ENTRYPOINT python3 -m vllm.entrypoints.openai.api_server \
    --model ${MODEL} \
    --max-model-len ${MAX_MODEL_LEN} \
    --gpu-memory-utilization ${GPU_MEMORY_UTILIZATION} \
    --port 8000
