#!/bin/bash

mkdir -p models/diffusion_models/
curl -L https://huggingface.co/Comfy-Org/mochi_preview_repackaged/resolve/main/split_files/diffusion_models/mochi_preview_bf16.safetensors?download=true -o models/diffusion_models/mochi_preview_bf16.safetensors

mkdir -p models/text_encoders/
curl -L https://huggingface.co/Comfy-Org/mochi_preview_repackaged/resolve/main/split_files/text_encoders/t5xxl_fp16.safetensors?download=true -o models/text_encoders/t5xxl_fp16.safetensors

mkdir -p models/vae/
curl -L https://huggingface.co/Comfy-Org/mochi_preview_repackaged/resolve/main/split_files/vae/mochi_vae.safetensors?download=true -o models/vae/mochi_vae.safetensors

mkdir -p workflows/
curl -L https://comfyanonymous.github.io/ComfyUI_examples/mochi/mochi_text_to_video_example.webp -o workflows/mochi_text_to_video_example.webp

mkdir -p output/
