# <p align="center">SCRFD Face Detection</p>
<p align="center">
  <img src="docs/vinorsoft_logo.png" width="150">
  <br />
  <br />
  <a href="http://www.vinorsoft.com/"><img alt="Auth Vinorsoft" src="https://img.shields.io/badge/Auth-Vinorsoft-FFD500?style=flat&labelColor=005BBB" /></a>
  <a href="https://github.com/pytorch/fairseq/blob/main/LICENSE"><img alt="Team" src="https://img.shields.io/badge/Team-Camera AI-FFD500?style=flat&labelColor=005BBB" /></a>
  <a href="https://github.com/optimuskonboi"><img alt="Instructor DanPV" src="https://img.shields.io/badge/Instructor-DanPV-FFD500?style=flat&labelColor=005BBB" /></a>
  <a href="https://github.com/giangnv125"><img alt="Deployer GiangNV" src="https://img.shields.io/badge/Deployer-GiangNV-FFD500?style=flat&labelColor=005BBB" /></a>
</p>

## Overview
- This model based on [this repo](https://github.com/deepinsight/insightface/tree/master/detection/scrfd).
- SCRFD is an efficient high accuracy face detection approach.

## Model Performances

|                     Name                      | mAP_Easy | mAP_Medium | mAP_Hard | FLOPs | Params(M) | Infer(ms) |
|:---------------------------------------------:|----------|------------|----------|-------|-----------|-----------|
|     [SCRFD_500M](weights/SCRFD_500M.onnx)     | 90.57    | 88.12      | 68.51    | 500M  | 0.57      | **3.7**   | 
|       [SCRFD_1G](weights/SCRFD_1G.onnx)       | 92.38    | 90.57      | 74.80    | 1G    | 0.64      | 4.1       |
|     [SCRFD_2.5G](weights/SCRFD_2.5G.onnx)     | 93.78    | 92.16      | 77.87    | 2.5G  | 0.67      | 4.2       |
|      [SCRFD_10G](weights/SCRFD_10G.onnx)      | 95.16    | 93.87      | 83.05    | 10G   | 3.86      | 4.9       |
| [SCRFD_500M_KPS](weights/SCRFD_500M_KPS.onnx) | 90.97    | 88.44      | 69.49    | 500M  | 0.57      | 3.6       |
| [SCRFD_2.5G_KPS](weights/SCRFD_2.5G_KPS.onnx) | 93.80    | 92.02      | 77.13    | 2.5G  | 0.82      | 4.3       |
|  [SCRFD_10G_KPS](weights/SCRFD_10G_KPS.onnx)  | 95.40    | 94.01      | 82.80    | 10G   | 4.23      | 5.0       |

mAP, FLOPs and inference latency are all evaluated on VGA resolution.
``_KPS`` means the model includes 5 keypoints prediction.

## Installation & Run

- Clone code to local device:
```
git clone https://github.com/optimuskonboi/Inference-Face-Detection-ONNX-SCRFD.git
```
- Build docker image onnx gpu environment:
```
cd Inference-Face-Detection-ONNX-SCRFD
docker build -t onnx_gpu_env .
```
- Run docker conatainer onnx gpu environment and run code on container:
```
docker run --network host -it -v $(pwd):/home -w /home --name onnx_gpu_env_container <<onnx_gpu_env_image_id>> /bin/bash
python3 main.py --cam_id <<video_path>>
```
