FROM runpod/worker-v1-vllm:dev-refs-pull-267-merge

# Install vLLM with FlashInfer - use CUDA 12.8 PyTorch wheels (compatible with vLLM 0.15.0)
RUN python3 -m pip install vllm==0.15.1 transformers accelerate huggingface-hub

# Start the handler
CMD ["python3", "/src/handler.py"]
