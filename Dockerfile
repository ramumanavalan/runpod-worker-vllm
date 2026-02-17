FROM runpod/worker-v1-vllm:v2.12.2

# Install vLLM with FlashInfer - use CUDA 12.8 PyTorch wheels (compatible with vLLM 0.15.0)
RUN python3 -m pip install vllm==0.15.1 transformers accelerate huggingface-hub

COPY src /src

# Start the handler
CMD ["python3", "/src/handler.py"]
