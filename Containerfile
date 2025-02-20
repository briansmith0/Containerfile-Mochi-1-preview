FROM registry.access.redhat.com/ubi9
RUN dnf install -y git python3.12 python3.12-pip

WORKDIR /
RUN git clone https://github.com/comfyanonymous/ComfyUI.git
WORKDIR ComfyUI

RUN pip3.12 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu126
RUN pip3.12 install -r requirements.txt

EXPOSE 8188
CMD ["python3.12", "main.py"]
