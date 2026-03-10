# Awesome LTX-2

A curated list of models, text encoders, and tools for the LTX-2 video generation suite.

## Intro

* [LTX-2: A New Chapter in Generative AI](https://website.ltx.video/blog/introducing-ltx-2)
* ComfyUI official [blogpost](https://blog.comfy.org/p/ltx-2-open-source-audio-video-ai)
* [Prompting Guide for LTX-2](https://ltx.io/model/model-blog/prompting-guide-for-ltx-2)

* »» [LTX-2 in ComfyUI Chattable KB](https://notebooklm.google.com/notebook/4f07f98c-75b6-4278-bde1-906f9899b60c)

## Models

LTX-2 models are available in various formats including full weights, transformers-only, and GGUF quantizations for efficient inference.

### Checkpoints

* **[Lightricks/LTX-2](https://huggingface.co/Lightricks/LTX-2)** - Official repository.
* **[Lightricks/LTX-2.3](https://huggingface.co/Lightricks/LTX-2.3)** - Official repository (latest version).
* **[Drbaph](https://huggingface.co/drbaph/LTX-2.3-FP8)** - Quantization

| Ver | Name | Precision | Size | Download |
| :--- | :--- | :---: | :---: | :---: |
| **2.3** | `ltx-2.3-22b dev` | bf16 | 46.1 GB | [Lightricks](https://huggingface.co/Lightricks/LTX-2.3/resolve/main/ltx-2.3-22b-dev.safetensors) |
| **2.3** | `ltx-2.3-22b dev` | fp8 | 29.1 GB | [Lightricks](https://huggingface.co/Lightricks/LTX-2.3-fp8/resolve/main/ltx-2.3-22b-dev-fp8.safetensors) |
| **2.3** | `ltx-2.3-22b distilled` | bf16 | 46.1 GB | [Lightricks](https://huggingface.co/Lightricks/LTX-2.3/resolve/main/ltx-2.3-22b-distilled.safetensors) |
| **2.3** | `ltx-2.3-22b dev` | fp8 | 29.9 GB | [drbaph](https://huggingface.co/drbaph/LTX-2.3-FP8/resolve/main/ltx-2.3-22b-dev-fp8.safetensors) |
| **2.3** | `ltx-2.3-22b distilled` | fp8 | 29.9 GB | [drbaph](https://huggingface.co/drbaph/LTX-2.3-FP8/resolve/main/ltx-2.3-22b-distilled-fp8.safetensors) |
| | | | | |
| **2** | `ltx-2-19b dev` | bf16 | 43.3 GB | [Lightricks](https://huggingface.co/Lightricks/LTX-2/resolve/main/ltx-2-19b-dev.safetensors) |
| **2** | `ltx-2-19b dev` | fp8 | 27.1 GB | [Lightricks](https://huggingface.co/Lightricks/LTX-2/resolve/main/ltx-2-19b-dev-fp8.safetensors) |
| **2** | `ltx-2-19b dev` | fp4 | 20 GB | [Lightricks](https://huggingface.co/Lightricks/LTX-2/resolve/main/ltx-2-19b-dev-fp4.safetensors) |
| **2** | `ltx-2-19b distilled` | bf16 | 43.3 GB | [Lightricks](https://huggingface.co/Lightricks/LTX-2/resolve/main/ltx-2-19b-distilled.safetensors) |
| **2** | `ltx-2-19b distilled` | fp8 | 27.1 GB | [Lightricks](https://huggingface.co/Lightricks/LTX-2/resolve/main/ltx-2-19b-distilled-fp8.safetensors) |
| **2** | `ltx-2-19b distilled` | nvfp4 | 20 GB | [szwagros](https://huggingface.co/szwagros/ltx-2-dist-nvfp4/resolve/main/ltx-2-19b-distilled-nvfp4-fixed-calibrated.safetensors) |

Quantized to fp8_e5m2 to support older Triton with older Pytorch on 30 series GPUs. For WangGP in Pinokio

| Ver | Name | Precision | Size | Download |
| :--- | :--- | :---: | :---: | :---: |
| **2** | `ltx-2-19b dev` | fp8_e5m2 | 27.1 GB | [Lightricks](https://huggingface.co/progmars/ltx-2-19b-dev-fp8_e5m2) |

#### **Distilled LoRA**

| Ver | Rank | Precision | Size | Download |
| :--- | :--- | :---: | :---: | :---: |
| **2.3** | `384` | bf16 | 7.61 GB | [Lightricks](https://huggingface.co/Lightricks/LTX-2.3/resolve/main/ltx-2.3-22b-distilled-lora-384.safetensors) |
| **2.3** | `208` | bf16 | 4.97 GB | [drbaph](https://huggingface.co/drbaph/LTX-2.3-FP8/resolve/main/LoRA/ltx-2.3-22b-distilled-lora-resized_dynamic_rank_208_fro095_bf16.safetensors) |
| **2.3** | `159` | bf16 | 3.83 GB | [drbaph](https://huggingface.co/drbaph/LTX-2.3-FP8/resolve/main/LoRA/ltx-2.3-22b-distilled-lora-resized_dynamic_rank_159_fro09_bf16.safetensors) |
| **2.3** | `105` | bf16 | 2.59 GB | [Kijai](https://huggingface.co/Kijai/LTX2.3_comfy/resolve/main/loras/ltx-2.3-22b-distilled-lora-dynamic_fro09_avg_rank_105_bf16.safetensors) |
| | | | | |
| **2** | `384` | bf16 | 7.67 GB | [Lightricks](https://huggingface.co/Lightricks/LTX-2/resolve/main/ltx-2-19b-distilled-lora-384.safetensors) |
| **2** | `242` | bf16 | 4.88 GB | [Lightricks](https://huggingface.co/Kijai/LTXV2_comfy/resolve/main/loras/ltx-2-19b-distilled-lora-resized_dynamic_fro095_avg_rank_242_bf16.safetensors) |
| **2** | `175` | bf16 | 3.58 GB | [Lightricks](https://huggingface.co/Kijai/LTXV2_comfy/resolve/main/loras/ltx-2-19b-distilled-lora_resized_dynamic_fro09_avg_rank_175_bf16.safetensors) |
| **2** | `175` | fp8 | 1.79 GB | [Lightricks](https://huggingface.co/Kijai/LTXV2_comfy/resolve/main/loras/ltx-2-19b-distilled-lora_resized_dynamic_fro09_avg_rank_175_fp8.safetensors) |


#### **Spatial Upscaler**
Required for current two-stage pipeline implementations in this repository. Download to `COMFYUI_ROOT_FOLDER/models/latent_upscale_models` folder.

| Ver | Name | Size | Download |
| :--- | :--- | :--- | :--- |
| **2.3** | `spatial-upscaler x2 1.0` | 996 MB | [Lightricks](https://huggingface.co/Lightricks/LTX-2.3/resolve/main/ltx-2.3-spatial-upscaler-x2-1.0.safetensors) |
| **2.3** | `spatial-upscaler x1.5 1.0` | 1.09 GB | [Lightricks](https://huggingface.co/Lightricks/LTX-2.3/resolve/main/ltx-2.3-spatial-upscaler-x1.5-1.0.safetensors) |
| | | | |
| **2** | `spatial-upscaler x2 1.0` | 1.05 GB | [Lightricks](https://huggingface.co/Lightricks/LTX-2/resolve/main/ltx-2-spatial-upscaler-x2-1.0.safetensors) |

#### **Temporal Upscaler**
Required for current two-stage pipeline implementations in this repository. Download to `COMFYUI_ROOT_FOLDER/models/latent_upscale_models` folder.

| Ver | Name | Size | Download |
| :--- | :--- | :--- | :--- |
| **2.3** | `temporal-upscaler x2 1.0` | 262 MB | [Lightricks](https://huggingface.co/Lightricks/LTX-2.3/resolve/main/ltx-2.3-temporal-upscaler-x2-1.0.safetensors) |
| | | | |
| **2** | `temporal-upscaler x2 1.0` | 262 MB | [Lightricks](https://huggingface.co/Lightricks/LTX-2/resolve/main/ltx-2-temporal-upscaler-x2-1.0.safetensors) |

<p id="gguf" align="center">══════════════════════════════════</p>

### GGUF Quantized Models
These models are optimized for lower memory usage. Note that in ComfyUI, these are typically loaded as transformer-only models.

<details>
  <summary>QuantStack</summary>

  #### [QuantStack LTX-2.3](https://huggingface.co/QuantStack/LTX-2.3-GGUF)

| Model | Quant | Size | Download |
| :--- | :---: | :---: | :---: |
| ltx-2.3-22b | Q2_K | 12.4 GB | [dev](https://huggingface.co/QuantStack/LTX-2.3-GGUF/resolve/main/LTX-2.3-dev/LTX-2.3-dev-Q2_K.gguf) ┊ [distilled](https://huggingface.co/QuantStack/LTX-2.3-GGUF/resolve/main/LTX-2.3-distilled/LTX-2.3-distilled-Q2_K.gguf) |
| ltx-2.3-22b | Q3_K_M | 14.7 GB | [dev](https://huggingface.co/QuantStack/LTX-2.3-GGUF/resolve/main/LTX-2.3-dev/LTX-2.3-dev-Q3_K_M.gguf) ┊ [distilled](https://huggingface.co/QuantStack/LTX-2.3-GGUF/resolve/main/LTX-2.3-distilled/LTX-2.3-distilled-Q3_K_M.gguf) |
| ltx-2.3-22b | Q3_K_S | 14 GB | [dev](https://huggingface.co/QuantStack/LTX-2.3-GGUF/resolve/main/LTX-2.3-dev/LTX-2.3-dev-Q3_K_S.gguf) ┊ [distilled](https://huggingface.co/QuantStack/LTX-2.3-GGUF/resolve/main/LTX-2.3-distilled/LTX-2.3-distilled-Q3_K_S.gguf) |
| ltx-2.3-22b | Q4_K_M | 17.8 GB | [dev](https://huggingface.co/QuantStack/LTX-2.3-GGUF/resolve/main/LTX-2.3-dev/LTX-2.3-dev-Q4_K_M.gguf) ┊ [distilled](https://huggingface.co/QuantStack/LTX-2.3-GGUF/resolve/main/LTX-2.3-distilled/LTX-2.3-distilled-Q4_K_M.gguf) |
| ltx-2.3-22b | Q4_K_S | 16.7 GB | [dev](https://huggingface.co/QuantStack/LTX-2.3-GGUF/resolve/main/LTX-2.3-dev/LTX-2.3-dev-Q4_K_S.gguf) ┊ [distilled](https://huggingface.co/QuantStack/LTX-2.3-GGUF/resolve/main/LTX-2.3-distilled/LTX-2.3-distilled-Q4_K_S.gguf) |
| ltx-2.3-22b | Q5_K_M | 19.4 GB | [dev](https://huggingface.co/QuantStack/LTX-2.3-GGUF/resolve/main/LTX-2.3-dev/LTX-2.3-dev-Q5_K_M.gguf) ┊ [distilled](https://huggingface.co/QuantStack/LTX-2.3-GGUF/resolve/main/LTX-2.3-distilled/LTX-2.3-distilled-Q5_K_M.gguf) |
| ltx-2.3-22b | Q5_K_S | 18.5 GB | [dev](https://huggingface.co/QuantStack/LTX-2.3-GGUF/resolve/main/LTX-2.3-dev/LTX-2.3-dev-Q5_K_S.gguf) ┊ [distilled](https://huggingface.co/QuantStack/LTX-2.3-GGUF/resolve/main/LTX-2.3-distilled/LTX-2.3-distilled-Q5_K_S.gguf) |
| ltx-2.3-22b | Q6_K | 21 GB | [dev](https://huggingface.co/QuantStack/LTX-2.3-GGUF/resolve/main/LTX-2.3-dev/LTX-2.3-dev-Q6_K.gguf) ┊ [distilled](https://huggingface.co/QuantStack/LTX-2.3-GGUF/resolve/main/LTX-2.3-distilled/LTX-2.3-distilled-Q6_K.gguf) |
| ltx-2.3-22b | Q8_0 | 25.5 GB | [dev](https://huggingface.co/QuantStack/LTX-2.3-GGUF/resolve/main/LTX-2.3-dev/LTX-2.3-dev-Q8_0.gguf) ┊ [distilled](https://huggingface.co/QuantStack/LTX-2.3-GGUF/resolve/main/LTX-2.3-distilled/LTX-2.3-distilled-Q8_0.gguf) |

#### [QuantStack LTX-2](https://huggingface.co/QuantStack/LTX-2-GGUF)

| Model | Quant | Size | Download |
| :--- | :---: | :---: | :---: |
| LTX-2-dev | Q2_K | 8.03 GB | [QuantStack](https://huggingface.co/QuantStack/LTX-2-GGUF/resolve/main/LTX-2-dev/LTX-2-dev-Q2_K.gguf) |
| LTX-2-dev | Q3_K_M | 10.3 GB | [QuantStack](https://huggingface.co/QuantStack/LTX-2-GGUF/resolve/main/LTX-2-dev/LTX-2-dev-Q3_K_M.gguf) |
| LTX-2-dev | Q3_K_S | 9.57 GB | [QuantStack](https://huggingface.co/QuantStack/LTX-2-GGUF/resolve/main/LTX-2-dev/LTX-2-dev-Q3_K_S.gguf) |
| LTX-2-dev | Q4_K_M | 13.4 GB | [QuantStack](https://huggingface.co/QuantStack/LTX-2-GGUF/resolve/main/LTX-2-dev/LTX-2-dev-Q4_K_M.gguf) |
| LTX-2-dev | Q4_K_S | 12.3 GB | [QuantStack](https://huggingface.co/QuantStack/LTX-2-GGUF/resolve/main/LTX-2-dev/LTX-2-dev-Q4_K_S.gguf) |
| LTX-2-dev | Q5_K_M | 15 GB | [QuantStack](https://huggingface.co/QuantStack/LTX-2-GGUF/resolve/main/LTX-2-dev/LTX-2-dev-Q5_K_M.gguf) |
| LTX-2-dev | Q5_K_S | 14.2 GB | [QuantStack](https://huggingface.co/QuantStack/LTX-2-GGUF/resolve/main/LTX-2-dev/LTX-2-dev-Q5_K_S.gguf) |
| LTX-2-dev | Q6_K | 16.6 GB | [QuantStack](https://huggingface.co/QuantStack/LTX-2-GGUF/resolve/main/LTX-2-dev/LTX-2-dev-Q6_K.gguf) |
| LTX-2-dev | Q8_0 | 21.1 GB | [QuantStack](https://huggingface.co/QuantStack/LTX-2-GGUF/resolve/main/LTX-2-dev/LTX-2-dev-Q8_0.gguf) |

</details>

<details>
  <summary>Unsloth </summary>

#### [Unsloth LTX-2.3 GGUF](https://huggingface.co/unsloth/LTX-2.3-GGUF)

| Model | Quant | Size | Download |
| :--- | :--- | :--- | :--- |
| ltx-2.3-22b | BF16 | 42 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-BF16.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-BF16.gguf) |
| ltx-2.3-22b | F16 | 42 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-F16.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-F16.gguf) |
| ltx-2.3-22b | Q2_K | 8.28 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-Q2_K.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-Q2_K.gguf) |
| ltx-2.3-22b | Q3_K_M | 10.8 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-Q3_K_M.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-Q3_K_M.gguf) |
| ltx-2.3-22b | Q3_K_S | 9.95 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-Q3_K_S.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-Q3_K_S.gguf) |
| ltx-2.3-22b | Q4_0 | 12.7 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-Q4_0.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-Q4_0.gguf) |
| ltx-2.3-22b | Q4_1 | 13.8 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-Q4_1.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-Q4_1.gguf) |
| ltx-2.3-22b | Q4_K_M | 14.3 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-Q4_K_M.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-Q4_K_M.gguf) |
| ltx-2.3-22b | Q4_K_S | 13.1 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-Q4_K_S.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-Q4_K_S.gguf) |
| ltx-2.3-22b | Q5_0 | 15.3 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-Q5_0.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-Q5_0.gguf) |
| ltx-2.3-22b | Q5_1 | 16.3 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-Q5_1.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-Q5_1.gguf) |
| ltx-2.3-22b | Q5_K_M | 16.1 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-Q5_K_M.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-Q5_K_M.gguf) |
| ltx-2.3-22b | Q5_K_S | 15.2 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-Q5_K_S.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-Q5_K_S.gguf) |
| ltx-2.3-22b | Q6_K | 17.8 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-Q6_K.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-Q6_K.gguf) |
| ltx-2.3-22b | Q8_0 | 22.8 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-Q8_0.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-Q8_0.gguf) |
| ltx-2.3-22b | UD-Q2_K | 8.98 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-UD-Q2_K.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-UD-Q2_K.gguf) |
| ltx-2.3-22b | UD-Q3_K_M | 11.8 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-UD-Q3_K_M.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-UD-Q3_K_M.gguf) |
| ltx-2.3-22b | UD-Q3_K_S | 10.5 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-UD-Q3_K_S.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-UD-Q3_K_S.gguf) |
| ltx-2.3-22b | UD-Q4_K_M | 15.1 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-UD-Q4_K_M.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-UD-Q4_K_M.gguf) |
| ltx-2.3-22b | UD-Q4_K_S | 13.7 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-UD-Q4_K_S.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-UD-Q4_K_S.gguf) |
| ltx-2.3-22b | UD-Q5_K_M | 17.1 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-UD-Q5_K_M.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-UD-Q5_K_M.gguf) |
| ltx-2.3-22b | UD-Q5_K_S | 15.8 GB | [dev](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/ltx-2.3-22b-dev-UD-Q5_K_S.gguf) ┊ [distilled](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/distilled/ltx-2.3-22b-distilled-UD-Q5_K_S.gguf) |

#### [Unsloth LTX-2 GGUF](https://huggingface.co/unsloth/LTX-2-GGUF)

| Model | Quant | Size | Download |
| :--- | :--- | :--- | :--- |
| ltx-2-19b-dev | BF16 | 37.8 GB | [Unsloth](https://huggingface.co/unsloth/LTX-2-GGUF/resolve/main/ltx-2-19b-dev-BF16.gguf) |
| ltx-2-19b-dev | F16 | 37.8 GB | [Unsloth](https://huggingface.co/unsloth/LTX-2-GGUF/resolve/main/ltx-2-19b-dev-F16.gguf) |
| ltx-2-19b-dev | UD-Q2_K_L | 10.1 GB | [Unsloth](https://huggingface.co/unsloth/LTX-2-GGUF/resolve/main/ltx-2-19b-dev-UD-Q2_K_L.gguf) |
| ltx-2-19b-dev | UD-Q2_K_XL | 11.6 GB | [Unsloth](https://huggingface.co/unsloth/LTX-2-GGUF/resolve/main/ltx-2-19b-dev-UD-Q2_K_XL.gguf) |
| ltx-2-19b-dev | Q2_K | 8.1 GB | [Unsloth](https://huggingface.co/unsloth/LTX-2-GGUF/resolve/main/ltx-2-19b-dev-Q2_K.gguf) |
| ltx-2-19b-dev | Q3_K_L | 10.7 GB | [Unsloth](https://huggingface.co/unsloth/LTX-2-GGUF/resolve/main/ltx-2-19b-dev-Q3_K_L.gguf) |
| ltx-2-19b-dev | Q3_K_M | 10.1 GB | [Unsloth](https://huggingface.co/unsloth/LTX-2-GGUF/resolve/main/ltx-2-19b-dev-Q3_K_M.gguf) |
| ltx-2-19b-dev | Q3_K_S | 9.47 GB | [Unsloth](https://huggingface.co/unsloth/LTX-2-GGUF/resolve/main/ltx-2-19b-dev-Q3_K_S.gguf) |
| ltx-2-19b-dev | Q4_0 | 11.3 GB | [Unsloth](https://huggingface.co/unsloth/LTX-2-GGUF/resolve/main/ltx-2-19b-dev-Q4_0.gguf) |
| ltx-2-19b-dev | Q4_1 | 12.3 GB | [Unsloth](https://huggingface.co/unsloth/LTX-2-GGUF/resolve/main/ltx-2-19b-dev-Q4_1.gguf) |
| ltx-2-19b-dev | Q4_K_M | 12.8 GB | [Unsloth](https://huggingface.co/unsloth/LTX-2-GGUF/resolve/main/ltx-2-19b-dev-Q4_K_M.gguf) |
| ltx-2-19b-dev | Q4_K_S | 11.9 GB | [Unsloth](https://huggingface.co/unsloth/LTX-2-GGUF/resolve/main/ltx-2-19b-dev-Q4_K_S.gguf) |
| ltx-2-19b-dev | Q5_0 | 13.7 GB | [Unsloth](https://huggingface.co/unsloth/LTX-2-GGUF/resolve/main/ltx-2-19b-dev-Q5_0.gguf) |
| ltx-2-19b-dev | Q5_1 | 14.6 GB | [Unsloth](https://huggingface.co/unsloth/LTX-2-GGUF/resolve/main/ltx-2-19b-dev-Q5_1.gguf) |
| ltx-2-19b-dev | Q5_K_M | 14.3 GB | [Unsloth](https://huggingface.co/unsloth/LTX-2-GGUF/resolve/main/ltx-2-19b-dev-Q5_K_M.gguf) |
| ltx-2-19b-dev | Q5_K_S | 13.6 GB | [Unsloth](https://huggingface.co/unsloth/LTX-2-GGUF/resolve/main/ltx-2-19b-dev-Q5_K_S.gguf) |
| ltx-2-19b-dev | Q6_K | 16 GB | [Unsloth](https://huggingface.co/unsloth/LTX-2-GGUF/resolve/main/ltx-2-19b-dev-Q6_K.gguf) |
| ltx-2-19b-dev | Q8_0 | 20.4 GB | [Unsloth](https://huggingface.co/unsloth/LTX-2-GGUF/resolve/main/ltx-2-19b-dev-Q8_0.gguf) |


</details>

<details>
  <summary>Vantage</summary>

#### [Vantage AI GGUFs](https://huggingface.co/vantagewithai/)

| Model | Quant | Size | Download |
| :--- | :--- | :--- | :--- |
| ltx-2-19b-dev | Q3_K_M | 9.96 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/dev/ltx-2-19b-dev-Q3_K_M.gguf) |
| ltx-2-19b-dev | Q3_K_S | 9.28 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/dev/ltx-2-19b-dev-Q3_K_S.gguf) |
| ltx-2-19b-dev | Q4_0 | 11.6 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/dev/ltx-2-19b-dev-Q4_0.gguf) |
| ltx-2-19b-dev | Q4_1 | 12.4 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/dev/ltx-2-19b-dev-Q4_1.gguf) |
| ltx-2-19b-dev | Q4_K_M | 12.8 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/dev/ltx-2-19b-dev-Q4_K_M.gguf) |
| ltx-2-19b-dev | Q4_K_S | 11.8 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/dev/ltx-2-19b-dev-Q4_K_S.gguf) |
| ltx-2-19b-dev | Q5_0 | 13.6 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/dev/ltx-2-19b-dev-Q5_0.gguf) |
| ltx-2-19b-dev | Q5_1 | 14.5 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/dev/ltx-2-19b-dev-Q5_1.gguf) |
| ltx-2-19b-dev | Q5_K_M | 14.4 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/dev/ltx-2-19b-dev-Q5_K_M.gguf) |
| ltx-2-19b-dev | Q5_K_S | 13.5 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/dev/ltx-2-19b-dev-Q5_K_S.gguf) |
| ltx-2-19b-dev | Q6_K | 15.9 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/dev/ltx-2-19b-dev-Q6_K.gguf) |
| ltx-2-19b-dev | Q8_0 | 20.4 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/dev/ltx-2-19b-dev-Q8_0.gguf) |
| ltx-2-19b-distilled | Q3_K_M | 9.96 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/distilled/ltx-2-19b-distilled-Q3_K_M.gguf) |
| ltx-2-19b-distilled | Q3_K_S | 9.28 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/distilled/ltx-2-19b-distilled-Q3_K_S.gguf) |
| ltx-2-19b-distilled | Q4_0 | 11.6 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/distilled/ltx-2-19b-distilled-Q4_0.gguf) |
| ltx-2-19b-distilled | Q4_1 | 12.4 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/distilled/ltx-2-19b-distilled-Q4_1.gguf) |
| ltx-2-19b-distilled | Q4_K_M | 12.8 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/distilled/ltx-2-19b-distilled-Q4_K_M.gguf) |
| ltx-2-19b-distilled | Q4_K_S | 11.8 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/distilled/ltx-2-19b-distilled-Q4_K_S.gguf) |
| ltx-2-19b-distilled | Q5_0 | 13.6 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/distilled/ltx-2-19b-distilled-Q5_0.gguf) |
| ltx-2-19b-distilled | Q5_1 | 14.5 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/distilled/ltx-2-19b-distilled-Q5_1.gguf) |
| ltx-2-19b-distilled | Q5_K_M | 14.4 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/distilled/ltx-2-19b-distilled-Q5_K_M.gguf) |
| ltx-2-19b-distilled | Q5_K_S | 13.5 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/distilled/ltx-2-19b-distilled-Q5_K_S.gguf) |
| ltx-2-19b-distilled | Q6_K | 15.9 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/distilled/ltx-2-19b-distilled-Q6_K.gguf) |
| ltx-2-19b-distilled | Q8_0 | 20.4 GB | [Download](https://huggingface.co/vantagewithai/LTX-2-GGUF/resolve/main/distilled/ltx-2-19b-distilled-Q8_0.gguf) |

</details>

<p id="text-encoder" align="center">◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆</p>

## Text Encoders

LTX-2 requires Gemma-3-12b variants. LTX-2.3 uses text projection layers.

### **Comfy-Org Optimized Encoders**

Official and optimized versions for ComfyUI.

| Model Name | Size | Download |
| :--- | :--- | :---: |
| `gemma_3_12B_it` | 24.4 GB | [ComfyUI](https://huggingface.co/Comfy-Org/ltx-2/resolve/main/split_files/text_encoders/gemma_3_12B_it.safetensors?download=true) |
| `gemma_3_12B_it_fpmixed` | 13.7 GB | [ComfyUI](https://huggingface.co/Comfy-Org/ltx-2/resolve/main/split_files/text_encoders/gemma_3_12B_it_fpmixed.safetensors?download=true) |
| `gemma_3_12B_it_fp8_scaled` | 13.2 GB | [ComfyUI](https://huggingface.co/Comfy-Org/ltx-2/resolve/main/split_files/text_encoders/gemma_3_12B_it_fp8_scaled.safetensors?download=true) |
| `gemma_3_12B_it_fp4_mixed` |  9.5 GB | [ComfyUI](https://huggingface.co/Comfy-Org/ltx-2/resolve/main/split_files/text_encoders/gemma_3_12B_it_fp4_mixed.safetensors?download=true) |

* `gemma_3_12B_it_fpmixed`: Experimental quant. Should be better than the fp8 scaled
* `gemma_3_12B_it_fp4_mixed`: 90% fp4 layers

### **Gemma-3-12b Abliterated**

#### Why Choose Abliterated Encoders?
Standard Gemma models often incorporate safety alignment that "sanitizes" or weakens specific concepts within prompt embeddings. Even when the model doesn't explicitly refuse a request, this internal filtering can dilute creative intent. For LTX-2 video generation, using a standard encoder often results in:

*   **Reduced Prompt Adherence:** Key stylistic or descriptive terms may be ignored or weakened.
*   **Visual Softening:** Visual intensity and fine details are often "muted" to fit generic safety profiles.
*   **Concept Dilution:** Complex or niche creative requests are subtly altered, leading to less faithful representations of your vision.

**Abliteration** bypasses these restrictive alignment layers, allowing the encoder to translate your prompts into embeddings with maximum fidelity. This ensures LTX-2 receives the most accurate and un-filtered instructions possible.

<details>
  <summary>Gemma-3-12b-Abliterated</summary>

Fixed versions of the abliterated Gemma-3-12b-it model by [FusionCow](https://huggingface.co/FusionCow/Gemma-3-12b-Abliterated-LTX2), modified specifically for compatibility with LTX-2. The [original model](https://huggingface.co/mlabonne/gemma-3-12b-it-abliterated-v2)

| Model | Precision | Size | Download |
| :--- | :---: | :---: | :---: |
| `Gemma ablit fixed` | bf16 | 23.5 GB | [FusionCow](https://huggingface.co/FusionCow/Gemma-3-12b-Abliterated-LTX2/resolve/main/gemma_ablit_fixed_bf16.safetensors?download=true) |
| `Gemma ablit fixed` | fp8 | 13.8 GB | [FusionCow](https://huggingface.co/FusionCow/Gemma-3-12b-Abliterated-LTX2/resolve/main/gemma_ablit_fixed_fp8.safetensors?download=true) |

</details>

 <details>
  <summary>Gemma 3 12B IT Heretic</summary>

Models by [DreamFast](https://huggingface.co/DreamFast/gemma-3-12b-it-heretic)

#### Safetensors
| Model | Precision | Size | Download |
| :--- | :---: | :---: | :---: |
| `Gemma_3_12B_it Heretic` | bf16 | 23.5 GB | [DreamFast](https://huggingface.co/DreamFast/gemma-3-12b-it-heretic/resolve/main/comfyui/gemma_3_12B_it_heretic.safetensors) |
| `Gemma_3_12B_it Heretic` | fp8 | 12.8 GB | [DreamFast](https://huggingface.co/DreamFast/gemma-3-12b-it-heretic/resolve/main/comfyui/gemma_3_12B_it_heretic_fp8_e4m3fn.safetensors) |


#### GGUF

| Quant | Size | Quality | Recommendation  | Download |
|-------| :---: | :---: |----------------| :---: |
| `F16` | 22GB | Lossless | Reference, same as original | [DreamFast](https://huggingface.co/DreamFast/gemma-3-12b-it-heretic/resolve/main/gguf/gemma-3-12b-it-heretic-f16.gguf) |
| `Q8_0` | 12GB | Excellent | Best quality quantization | [DreamFast](https://huggingface.co/DreamFast/gemma-3-12b-it-heretic/resolve/main/gguf/gemma-3-12b-it-heretic-Q8_0.gguf) |
| `Q6_K` | 9.0GB | Very Good | High quality, good compression | [DreamFast](https://huggingface.co/DreamFast/gemma-3-12b-it-heretic/resolve/main/gguf/gemma-3-12b-it-heretic-Q6_K.gguf) |
| `Q5_K_M` | 7.9GB | Good | Balanced quality/size | [DreamFast](https://huggingface.co/DreamFast/gemma-3-12b-it-heretic/resolve/main/gguf/gemma-3-12b-it-heretic-Q5_K_S.gguf) |
| `Q5_K_S` | 7.7GB | Good | Slightly smaller Q5 | [DreamFast](https://huggingface.co/DreamFast/gemma-3-12b-it-heretic/resolve/main/gguf/gemma-3-12b-it-heretic-Q5_K_M.gguf) |
| `Q4_K_M` | 6.8GB | Good | Still useful | [DreamFast](https://huggingface.co/DreamFast/gemma-3-12b-it-heretic/resolve/main/gguf/gemma-3-12b-it-heretic-Q4_K_S.gguf) |
| `Q4_K_S` | 6.5GB | Decent | Smaller Q4 variant | [DreamFast](https://huggingface.co/DreamFast/gemma-3-12b-it-heretic/resolve/main/gguf/gemma-3-12b-it-heretic-Q4_K_M.gguf) |
| `Q3_K_M` | 5.6GB | Acceptable | For very low VRAM only | [DreamFast](https://huggingface.co/DreamFast/gemma-3-12b-it-heretic/resolve/main/gguf/gemma-3-12b-it-heretic-Q4_K_M.gguf) |

</details>

<p id="split" align="center">◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆</p>

## Separated Components

Separated LTX2 checkpoint by [Kijai](https://huggingface.co/Kijai/LTXV2_comfy) and [Kijai](https://huggingface.co/Kijai/LTX2.3_comfy) for LTX-2.3. For alternative way to load the models in Comfy.

### Diffusion Models (Transformer Only)

| Ver | Name | Precision | Size | Download |
| :--- | :--- | :---: | :---: | :---: |
| **2.3** | `ltx-2.3-22b dev` | bf16 | 42 GB | [Kijai](https://huggingface.co/Kijai/LTX2.3_comfy/resolve/main/diffusion_models/ltx-2.3-22b-dev_transformer_only_bf16.safetensors) |
| **2.3** | `ltx-2.3-22b dev`  | fp8 | 23.5 GB | [Kijai](https://huggingface.co/Kijai/LTX2.3_comfy/resolve/main/diffusion_models/ltx-2.3-22b-dev_transformer_only_fp8_scaled.safetensors) |
| **2.3** | `ltx-2.3-22b dev`  | fp8_input_scaled | 25 GB | [Kijai](https://huggingface.co/Kijai/LTX2.3_comfy/resolve/main/diffusion_models/ltx-2-3-22b-dev_transformer_only_fp8_input_scaled.safetensors) |
| **2.3** | `ltx-2.3-22b distilled` | bf16 | 42 GB | [Kijai](https://huggingface.co/Kijai/LTX2.3_comfy/resolve/main/diffusion_models/ltx-2.3-22b-distilled_transformer_only_bf16.safetensors) |
| **2.3** | `ltx-2.3-22b distilled` | fp8 input scaled | 23.5 GB | [Kijai](https://huggingface.co/Kijai/LTX2.3_comfy/resolve/main/diffusion_models/ltx-2.3-22b-distilled_transformer_only_fp8_input_scaled.safetensors) |
| **2.3** | `ltx-2.3-22b distilled` | fp8 input scaled v2 | 23.2 GB | [Kijai](https://huggingface.co/Kijai/LTX2.3_comfy/resolve/main/diffusion_models/ltx-2.3-22b-distilled_transformer_only_fp8_input_scaled_v2.safetensors) |
| **2.3** | `ltx-2.3-22b distilled` | fp8 | 23.5 GB | [Kijai](https://huggingface.co/Kijai/LTX2.3_comfy/resolve/main/diffusion_models/ltx-2.3-22b-distilled_transformer_only_fp8_scaled.safetensors) |
| | | | | |
| **2** | `ltx-2-19b dev` | bf16 | 37.8 GB | [Kijai](https://huggingface.co/Kijai/LTXV2_comfy/resolve/main/diffusion_models/ltx-2-19b-dev_transformer_only_bf16.safetensors) |
| **2** | `ltx-2-19b dev` | fp8 | 21.6 GB | [Kijai](https://huggingface.co/Kijai/LTXV2_comfy/resolve/main/diffusion_models/ltx-2-19b-dev-fp8_transformer_only.safetensors) |
| **2** | `ltx-2-19b dev` | fp4 | 14.5 GB | [Kijai](https://huggingface.co/Kijai/LTXV2_comfy/resolve/main/diffusion_models/ltx-2-19b-dev_fp4_transformer_only.safetensors) |
| **2** | `ltx-2-19b distilled` | bf16 | 37.8 GB | [Kijai](https://huggingface.co/Kijai/LTXV2_comfy/resolve/main/diffusion_models/ltx-2-19b-distilled_transformer_only_bf16.safetensors?download=true) |
| **2** | `ltx-2-19b distilled` | fp8 | 21.6 GB | [Kijai](https://huggingface.co/Kijai/LTXV2_comfy/resolve/main/diffusion_models/ltx-2-19b-distilled-fp8_transformer_only.safetensors) |

> [!NOTE]  
> input_scaled additionally have activation scaling, and are set to run with fp8 matmuls on supported hardware (roughly 40xx and later Nvidia GPUs).

### VAE (Video & Audio)

| Ver | Component | Precision | Size | Download |
| :--- | :--- | :---: | :---: | :--- |
| **2.3** | `Video VAE` | BF16 | 1.45 GB | [Kijai](https://huggingface.co/Kijai/LTX2.3_comfy/resolve/main/vae/LTX23_video_vae_bf16.safetensors) ┊ [Unsloth](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/vae/ltx-2.3-22b-dev_video_vae.safetensors)|
| **2.3** | `Audio VAE` | BF16 | 365 MB | [Kijai](https://huggingface.co/Kijai/LTX2.3_comfy/resolve/main/vae/LTX23_audio_vae_bf16.safetensors) ┊ [Unsloth](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/vae/ltx-2.3-22b-dev_audio_vae.safetensors)|
| | | | | |
| **2** | `Video VAE` | BF16 | 2.45 GB | [Kijai](https://huggingface.co/Kijai/LTXV2_comfy/resolve/main/VAE/LTX2_video_vae_bf16.safetensors) |
| **2** | `Audio VAE` | BF16 | 218 MB | [Kijai](https://huggingface.co/Kijai/LTXV2_comfy/resolve/main/VAE/LTX2_audio_vae_bf16.safetensors?download=true) |


### Embedding Connectors & Text Projection

| Ver | Name | Precision | Size | Download |
| :--- | :--- | :---: | :---: | :--- |
| **2.3** | `Embeddings Connectors dev` | bf16 | 2.31 GB | [Kijai](https://huggingface.co/Kijai/LTX2.3_comfy/resolve/main/text_encoders/ltx-2.3_text_projection_bf16.safetensors) ┊ [Unsloth](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/text_encoders/ltx-2.3-22b-dev_embeddings_connectors.safetensors) |
| **2.3** | `Embeddings Connectors distilled` | bf16 | 2.31 GB | [Unsloth](https://huggingface.co/unsloth/LTX-2.3-GGUF/resolve/main/text_encoders/ltx-2.3-22b-distilled_embeddings_connectors.safetensors) |
| | | | | |
| **2** | `Connector dev` | bf16 | 2.86 GB | [Kijai](https://huggingface.co/Kijai/LTXV2_comfy/resolve/main/text_encoders/ltx-2-19b-embeddings_connector_dev_bf16.safetensors) |
| **2** | `Connector distilled` | bf16 | 2.86 GB | [Kijai](https://huggingface.co/Kijai/LTXV2_comfy/resolve/main/text_encoders/ltx-2-19b-embeddings_connector_distill_bf16.safetensors) |

<p id="lora" align="center">◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆</p>

## LoRA

### Enchancer, special

* [JUST-DUB-IT](https://huggingface.co/justdubit/justdubit)
* [Best-Face-Swap-Video](https://huggingface.co/Alissonerdx/BFS-Best-Face-Swap-Video)
* [Image-to-Video Adapter LoRA](https://huggingface.co/MachineDelusions/LTX-2_Image2Video_Adapter_LoRa)
* [Lightricks LTX-2.3](https://huggingface.co/Lightricks)
  * [`Union Control`](https://huggingface.co/Lightricks/LTX-2.3-22b-IC-LoRA-Union-Control/resolve/main/ltx-2.3-22b-ic-lora-union-control-ref0.5.safetensors) (654 MB)
  * [`Motion Track Control`](https://huggingface.co/Lightricks/LTX-2.3-22b-IC-LoRA-Motion-Track-Control/resolve/main/ltx-2.3-22b-ic-lora-motion-track-control-ref0.5.safetensors) (327 MB)
  * [Motion Track Control](https://huggingface.co/Lightricks/LTX-2.3-22b-IC-LoRA-Motion-Track-Control)
* Lightricks LTX-2
  * [`Canny Control`](https://huggingface.co/Lightricks/LTX-2-19b-IC-LoRA-Canny-Control/blob/main/ltx-2-19b-ic-lora-canny-control.safetensors)
  * [`Depth Control`](https://huggingface.co/Lightricks/LTX-2-19b-IC-LoRA-Depth-Control/blob/main/ltx-2-19b-ic-lora-depth-control.safetensors)
  * [`Detailer`](https://huggingface.co/Lightricks/LTX-2-19b-IC-LoRA-Detailer/blob/main/ltx-2-19b-ic-lora-detailer.safetensors)
  * [`Pose Control`](https://huggingface.co/Lightricks/LTX-2-19b-IC-LoRA-Pose-Control/blob/main/ltx-2-19b-ic-lora-pose-control.safetensors)

### Styles
*   [LTX-2-19b-LoRA-SPROUT](https://huggingface.co/oumoumad/LTX-2-19b-LoRA-SPROUT)
*   [Hydraulic press](https://huggingface.co/kabachuha/ltx2-hydraulic-press)
*   [Cakeify](https://huggingface.co/kabachuha/ltx2-cakeify)
*   [Big Anime Breasts](https://huggingface.co/kabachuha/ltx2-big-anime-breasts)
*   [Clay Stop Motion](https://huggingface.co/oumoumad/clay-stop-motion-lora-ngtvspc)
*   [Eat](https://huggingface.co/kabachuha/ltx2-eat)
*   [Outfit Switch](https://huggingface.co/Nebsh/LTX2_Outfitswitch)
*   [Handheld run](https://huggingface.co/Nebsh/LTX2_Handheld_run)
*   [Atomic Explosion](https://huggingface.co/Nebsh/LTX2_AtomicExplosion)
*   [Squish](https://huggingface.co/ovi054/LTX-2-19b-Squish-LoRA)
*   [IC luminance map](https://huggingface.co/oumoumad/ltx-2_IC_LUMIPARTICLES)
*   [Yoshiaki Kawajiri Retro Anime](https://huggingface.co/tarn59/Yoshiaki_Kawajiri_Retro_Anime_LTX2)
*   [DonaldTrump](https://huggingface.co/Playtime-AI/LTX-2.DonaldTrump)
*   [WHATUSEE](https://huggingface.co/o-8-o/WHATUSEE_LTX-2-19B_LoRA)
*   [Squish – One Hand Only](https://huggingface.co/kabachuha/ltx2-squish-one-hand)
*   [Black Venom](https://huggingface.co/siraxe/black_venom_ltx2)
* [HERO CAM](https://huggingface.co/Nebsh/LTX2_Herocam_Lora)
* [Animatediff V1](https://huggingface.co/Nebsh/LTX2_Animatediff_style)
* [PUSH TO GLASS](https://huggingface.co/Nebsh/LTX2_Pushtoglass)
* [Object POV](https://huggingface.co/Nebsh/POVObject)
* [Group Photo](https://huggingface.co/o-8-o/GroupPhoto-LoRA-LTX-2-19b)
* [EarthZoomOut](https://huggingface.co/o-8-o/EarthZoomOut-LoRA-LTX-2-19b)
* Lightricks
  * [`Camera Control: dolly-in`](https://huggingface.co/Lightricks/LTX-2-19b-LoRA-Camera-Control-Dolly-In/blob/main/ltx-2-19b-lora-camera-control-dolly-in.safetensors)
  * [`Camera Control: dolly-left`](https://huggingface.co/Lightricks/LTX-2-19b-LoRA-Camera-Control-Dolly-Left/blob/main/ltx-2-19b-lora-camera-control-dolly-left.safetensors)
  * [`Camera Control: dolly-out`](https://huggingface.co/Lightricks/LTX-2-19b-LoRA-Camera-Control-Dolly-Out/blob/main/ltx-2-19b-lora-camera-control-dolly-out.safetensors)
  * [`Camera Control: dolly-right`](https://huggingface.co/Lightricks/LTX-2-19b-LoRA-Camera-Control-Dolly-Right/blob/main/ltx-2-19b-lora-camera-control-dolly-right.safetensors)
  * [`Camera Control: jib-down`](https://huggingface.co/Lightricks/LTX-2-19b-LoRA-Camera-Control-Jib-Down/blob/main/ltx-2-19b-lora-camera-control-jib-down.safetensors)
  * [`Camera Control: jib-up`](https://huggingface.co/Lightricks/LTX-2-19b-LoRA-Camera-Control-Jib-Up/blob/main/ltx-2-19b-lora-camera-control-jib-up.safetensors)
  * [`Camera Control: static`](https://huggingface.co/Lightricks/LTX-2-19b-LoRA-Camera-Control-Static/blob/main/ltx-2-19b-lora-camera-control-static.safetensors)
  * [`Union-Control`](https://huggingface.co/Lightricks/LTX-2-19b-IC-LoRA-Union-Control/resolve/main/ltx-2-19b-ic-lora-union-control-ref0.5.safetensors)


<p id="wf" align="center">◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆</p>

##  Workflow & Technical Notes

**Lightricks** official WF:
* [`Text to video full model`](https://raw.githubusercontent.com/Lightricks/ComfyUI-LTXVideo/refs/heads/master/example_workflows/LTX-2_T2V_Full_wLora.json)
* [`Text to video distilled model (Fast)`](https://raw.githubusercontent.com/Lightricks/ComfyUI-LTXVideo/refs/heads/master/example_workflows/LTX-2_T2V_Distilled_wLora.json)
* [`Image to video full model`](https://raw.githubusercontent.com/Lightricks/ComfyUI-LTXVideo/refs/heads/master/example_workflows/LTX-2_I2V_Full_wLora.json)
* [`Image to video distilled model (Fast)`](https://raw.githubusercontent.com/Lightricks/ComfyUI-LTXVideo/refs/heads/master/example_workflows/LTX-2_I2V_Distilled_wLora.json)
* [`Video to video detailer`](https://raw.githubusercontent.com/Lightricks/ComfyUI-LTXVideo/refs/heads/master/example_workflows/LTX-2_V2V_Detailer.json)
* [`IC-LoRA distilled model (depth + human pose + edges)`](https://raw.githubusercontent.com/Lightricks/ComfyUI-LTXVideo/refs/heads/master/example_workflows/LTX-2_ICLoRA_All_Distilled.json)

**ComfyUI** official WF:
* [Text-to-video](https://raw.githubusercontent.com/Comfy-Org/workflow_templates/refs/heads/main/templates/video_ltx2_t2v.json)
* [Text-to-video Distilled (faster, 8 steps)](https://raw.githubusercontent.com/Comfy-Org/workflow_templates/refs/heads/main/templates/video_ltx2_t2v_distilled.json)
* [Image-to-video](https://raw.githubusercontent.com/Comfy-Org/workflow_templates/refs/heads/main/templates/video_ltx2_t2v_distilled.json)
* [Image-to-video Distilled (faster, 8 steps)](https://raw.githubusercontent.com/Comfy-Org/workflow_templates/refs/heads/main/templates/video_ltx2_i2v_distilled.json)
* [Depth control](https://github.com/Comfy-Org/workflow_templates/raw/refs/heads/main/templates/video_ltx2_depth_to_video.json)
* [Canny control](https://raw.githubusercontent.com/Comfy-Org/workflow_templates/refs/heads/main/templates/video_ltx2_canny_to_video.json)
* [Pose control](https://raw.githubusercontent.com/Comfy-Org/workflow_templates/refs/heads/main/templates/video_ltx2_pose_to_video.json)

**RuneXX LTX-2.3 Workflows:**

| Workflow |
| :--- |
| [FL2V Custom Audio](https://huggingface.co/RuneXX/LTX-2.3-Workflows/resolve/main/LTX-2.3_-_FL2V_Custom_Audio.json) |
| [FL2V First Last Frame Injection](https://huggingface.co/RuneXX/LTX-2.3-Workflows/resolve/main/LTX-2.3_-_FL2V_First_Last_Frame_Injection.json) |
| [FML2V First Middle Last Frame Guider](https://huggingface.co/RuneXX/LTX-2.3-Workflows/resolve/main/LTX-2.3_-_FML2V_First_Middle_Last_Frame_Guider.json) |
| [FML2V First Middle Last Frame Injection](https://huggingface.co/RuneXX/LTX-2.3-Workflows/resolve/main/LTX-2.3_-_FML2V_First_Middle_Last_Frame_Injection.json) |
| [FML2V Guider Custom Audio](https://huggingface.co/RuneXX/LTX-2.3-Workflows/resolve/main/LTX-2.3_-_FML2V_Guider_Custom_Audio.json) |
| [I2V T2V Basic](https://huggingface.co/RuneXX/LTX-2.3-Workflows/resolve/main/LTX-2.3_-_I2V_T2V_Basic.json) |
| [I2V T2V Basic Custom Audio](https://huggingface.co/RuneXX/LTX-2.3-Workflows/resolve/main/LTX-2.3_-_I2V_T2V_Basic_Custom_Audio.json) |
| [I2V T2V Basic GGUF](https://huggingface.co/RuneXX/LTX-2.3-Workflows/resolve/main/LTX-2.3_-_I2V_T2V_Basic_GGUF.json) |
| [I2V T2V Single Pass](https://huggingface.co/RuneXX/LTX-2.3-Workflows/resolve/main/LTX-2.3_-_I2V_T2V_Single_Pass.json) |
| [T2V Basic](https://huggingface.co/RuneXX/LTX-2.3-Workflows/resolve/main/LTX-2.3_-_T2V_Basic.json) |
| [T2V Single Pass](https://huggingface.co/RuneXX/LTX-2.3-Workflows/resolve/main/LTX-2.3_-_T2V_Single_Pass.json) |

<details>
  <summary>RuneXX LTX-2 Workflows old pre_feb2026</summary>

| Workflow |
| :--- |
| [First Last Frame (guide node)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20First%20Last%20Frame%20(guide%20node).json) |
| [First Last Frame (in-place node)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20First%20Last%20Frame%20(in-place%20node).json) |
| [First Middle Last Frame (guide node)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20First%20Middle%20Last%20Frame%20(guide%20node).json) |
| [I2V Basic (GGUF)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20I2V%20Basic%20(GGUF).json) |
| [I2V Basic](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20I2V%20Basic.json) |
| [I2V IC-Control (pose)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20I2V%20IC-Control%20(pose).json) |
| [I2V Simple First Middle Last Frame (1-pass K-Sampler)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20I2V%20Simple%20First%20Middle%20Last%20Frame%20(1-pass%20K-Sampler).json) |
| [I2V Talking Avatar (voice clone Qwen-TTS)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20I2V%20Talking%20Avatar%20(voice%20clone%20Qwen-TTS).json) |
| [I2V and T2V (beta test sampler previews)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20I2V%20and%20T2V%20(beta%20test%20sampler%20previews).json) |
| [I2V and T2V Basic (Custom Audio)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20I2V%20and%20T2V%20Basic%20(Custom%20Audio).json) |
| [I2V and T2V IC-Control (All-In-One Pose Canny Depth)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20I2V%20and%20T2V%20IC-Control%20(All-In-One%20Pose%20Canny%20Depth).json) |
| [I2V and T2V Simple (1-pass K-Sampler)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20I2V%20and%20T2V%20Simple%20(1-pass%20K-Sampler).json) |
| [I2V and T2V Simple (1-pass)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20I2V%20and%20T2V%20Simple%20(1-pass).json) |
| [T2V Basic (GGUF)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20T2V%20Basic%20(GGUF).json) |
| [T2V Basic (low vram)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20T2V%20Basic%20(low%20vram).json) |
| [T2V Basic](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20T2V%20Basic.json) |
| [T2V Talking Avatar (voice clone Qwen-TTS)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20T2V%20Talking%20Avatar%20(voice%20clone%20Qwen-TTS).json) |
| [V2A Foley (add sound to any video)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20V2A%20Foley%20(add%20sound%20to%20any%20video).json) |
| [V2V (extend any video)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20V2V%20(extend%20any%20video).json) |
| [V2V Head Swap Experimental (BFS lora)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20V2V%20Head%20Swap%20Experimental%20(BFS%20lora).json) |
| [V2V Just Dub It (experimental)(translate speech auto dubbing)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20V2V%20Just%20Dub%20It%20(experimental)(translate%20speech%20auto%20dubbing).json) |
| [V2V Just Dub It (with voice clone)(auto dubbing translation)(experimental)](https://huggingface.co/RuneXX/LTX-2-Workflows/resolve/main/older_comfy_pre_feb2026/LTX-2%20-%20V2V%20Just%20Dub%20It%20(with%20voice%20clone)(auto%20dubbing%20translation)(experimental).json) |
</details>
