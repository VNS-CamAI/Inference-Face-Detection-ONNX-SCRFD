FROM baichenshan/onnxruntime-cuda:v2

RUN pip install --upgrade pip

RUN pip install opencv-python
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 -y
RUN pip install onnxruntime-gpu
