cd /workspace/*/ComfyUI/models/diffusion_models
wget https://huggingface.co/Lightricks/LTX-2.3/resolve/main/ltx-2.3-22b-dev.safetensors

cd /workspace/*/ComfyUI/models/latent_upscale_models


wget https://huggingface.co/Lightricks/LTX-2.3/resolve/main/ltx-2.3-spatial-upscaler-x2-1.1.safetensors

cd /workspace/*/ComfyUI/models/text_encoders

wget https://huggingface.co/Winnougan/LTX-2.3-INT8/resolve/main/ltx-2.3_text_projection_fp8.safetensors

wget https://huggingface.co/Comfy-Org/ltx-2/resolve/main/split_files/text_encoders/gemma_3_12B_it_fp8_scaled.safetensors

cd /workspace/*/ComfyUI/models/vae

wget https://huggingface.co/Kijai/LTX2.3_comfy/resolve/main/vae/LTX23_video_vae_bf16.safetensors
wget https://huggingface.co/Kijai/LTX2.3_comfy/resolve/main/vae/LTX23_audio_vae_bf16.safetensors
wget https://huggingface.co/Kijai/LTX2.3_comfy/resolve/main/vae/taeltx2_3.safetensors

cd /workspace/*/ComfyUI/models/loras

wget https://huggingface.co/TenStrip/LTX2.3_Distilled_Lora_1.1_Experiments/resolve/main/ltx-2.3-22b-distilled-lora-1.1_fro90_ceil72_condsafe.safetensors
#wget https://huggingface.co/Kijai/LTX2.3_comfy/resolve/main/loras/ltx-2.3-22b-distilled-1.1_lora-dynamic_fro09_avg_rank_111_bf16.safetensors

wget https://huggingface.co/vrgamedevgirl84/LTX_2.3_Luxe_Sensual_Style_LoRa/resolve/main/Luxe_Sensual.safetensors
wget https://huggingface.co/vrgamedevgirl84/LTX_2.3_Crisp_Enhance_Style_LoRa/resolve/main/LTX2.3_Crisp_Enhance.safetensors
wget https://huggingface.co/vrgamedevgirl84/LTX_2.3_Fantasy_Realism_Style_LoRa/resolve/main/Fantasy_Realism.safetensors
wget https://huggingface.co/vrgamedevgirl84/LTX_2.3_Soft_Enhance_Style_LoRa/resolve/main/LTX2.3_Soft_Enhance.safetensors
wget https://huggingface.co/vrgamedevgirl84/LTX_2.3_Cinematic_Sci-fi-Cyberpunk_Style_LoRa/resolve/main/Cinematic_sci-fi-cyberpunk.safetensors

#wget https://huggingface.co/Lightricks/LTX-2.3/resolve/main/ltx-2.3-22b-distilled-lora-384-1.1.safetensors

#wget https://huggingface.co/Lightricks/LTX-2.3-22b-IC-LoRA-Union-Control/blob/main/ltx-2.3-22b-ic-lora-union-control-ref0.5.safetensors

#wget https://huggingface.co/Lightricks/LTX-2.3-22b-IC-LoRA-Motion-Track-Control/blob/main/ltx-2.3-22b-ic-lora-motion-track-control-ref0.5.safetensors

wget https://huggingface.co/LiconStudio/Ltx2.3-VBVR-lora-I2V/resolve/main/Ltx2.3-Licon-VBVR-I2V-390K-R32.safetensors

wget https://huggingface.co/Lightricks/LTX-2-19b-LoRA-Camera-Control-Static/resolve/main/ltx-2-19b-lora-camera-control-static.safetensors
wget https://huggingface.co/WarmBloodAban/Singularity_LTX-2.3_OmniCine_Preview0.1/resolve/main/Singularity%20LTX-2.3%20%20OmniCine%20Preview%20v0.1.safetensors

#wget https://huggingface.co/Comfy-Org/ltx-2.3/resolve/main/split_files/loras/ltx-2.3-id-lora-talkvid-3k.safetensors

#wget https://huggingface.co/Comfy-Org/ltx-2.3/resolve/main/split_files/loras/ltx-2.3-id-lora-celebvhq-3k.safetensors

cd /workspace/*/ComfyUI/custom_nodes
git clone https://github.com/kijai/ComfyUI-PromptRelay.git
source /workspace/*/ComfyUI/.venv-cu128/bin/activate
pip install -r ComfyUI-PromptRelay/requirements.txt
pip install sageattention
pip install triton

cd /workspace/*/ComfyUI/models/unet
wget https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-Q8_0.gguf
cd /workspace/*/ComfyUI/models/diffusion_models
wget https://huggingface.co/TenStrip/LTX2.3-10Eros/resolve/main/10Eros_v1-fp8mixed_learned.safetensors

# python main.py --listen 0.0.0.0 --port 8188 --enable-cors-header --use-sage-attention

