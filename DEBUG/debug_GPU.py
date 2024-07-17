# Check if PyTorch is installed
import torch

# Check if CUDA is available
cuda_available = torch.cuda.is_available()
print(f"CUDA available: {cuda_available}")

# Check the name of the GPU
if cuda_available:
    gpu_name = torch.cuda.get_device_name(0)
    print(f"GPU in use: {gpu_name}")
else:
    print("No GPU found or CUDA is not available.")
