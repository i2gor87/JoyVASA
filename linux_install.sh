apt update
apt install git-lfs -y
git clone https://huggingface.co/TencentGameMate/chinese-hubert-base
git clone https://huggingface.co/jdh-algo/JoyVASA
pip install -r requirements.txt
pip install -U "huggingface_hub[cli]"
huggingface-cli download KwaiVGI/LivePortrait --local-dir pretrained_weights --exclude "*.git*" "README.md" "docs"
cp -r chinese-hubert-base/ pretrained_weights/
cp -r JoyVASA/ pretrained_weights/
apt install ffmpeg -y
pip uninstall torch torchvision torchaudio xformers -y
pip install xformers --index-url https://download.pytorch.org/whl/cu121
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121
apt install vim -y