conda install ffmpeg
conda install -c conda-forge git-lfs
cd /scratch/project_2011211/hamid/code/hallo2
# pip install torch==2.2.2 torchvision==0.17.2 torchaudio==2.2.2 --index-url https://download.pytorch.org/whl/cu121
pip install -r requirements.txt
# pip install .

pip install huggingface_hub
huggingface-cli download fudan-generative-ai/hallo2 --local-dir ./pretrained_models

# conda install -c conda-forge cudatoolkit

# conda install -c conda-forge yt-dlp

# cd /scratch/project_2011211/fang/code/facetts
# pip install -r requirements.txt
# conda install git
# pip install GitPython
# pip install pudb
# pip install sys
# pip install deepface
# pip install tf-keras
# pip install torchmetrics
# pip install torch-fidelity
# pip install cd-fvd
# pip install pymcd

# cd /scratch/project_2011211/fang/code/Wav2Lip/evaluation/syncnet_python
# pip install -r requirements.txt
# sh download_model.sh

# cd /scratch/project_2011211/fang/code/CosyVoice
# pip install -r requirements2.txt

# pip install protobuf==4.25.3
# cd /scratch/project_2011211/fang/code/CosyVoice/pretrained_models/CosyVoice-ttsfrd
# pip install ttsfrd-0.3.6-cp38-cp38-linux_x86_64.whl


# cd /scratch/project_2011211/fang/code/CosyVoice/third_party/Matcha-TTS
# pip install -e .



#  cd /scratch/project_2011211/fang/code/Wav2Lip/evaluation/syncnet_python
#  pip install -r requirements.txt