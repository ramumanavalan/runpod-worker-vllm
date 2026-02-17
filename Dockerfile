FROM runpod/worker-v1-vllm:v2.12.2

# Install vLLM with FlashInfer - use CUDA 12.8 PyTorch wheels (compatible with vLLM 0.15.0)
RUN python3 -m pip install -U transformers

# Start the handler
CMD ["python3", "/src/handler.py"]
