# 创建好conda环境后，使用 bash bash/install.sh 安装所需依赖包
# --------- pytorch --------- #
echo '>>>>>>>>>>>>>>>>>>>>>>>Installing pytorch...<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<'
conda install pytorch torchvision -c pytorch '-c=conda-forge'
echo '>>>>>>>>>>>>>>>>>>>>>>>Installing scikit-learn...<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<'
conda install scikit-learn
pip install numpy

# --------- transformers --------- #
echo '>>>>>>>>>>>>>>>>>>>>>>>Installing transformers...<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<'
# 安装tokenizers依赖rust，所以需要先安装rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
pip install transformers

# 由于conda安装好后IDE不能识别，需要pip安装
echo '>>>>>>>>>>>>>>>>>>>>>>>Installing torchvision...<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<'
pip install torch torchvision

echo '>>>>>>>>>>>>>>>>>>>>>>>Installing pytorch-lightning...<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<'
pip install pytorch-lightning

# --------- hydra --------- #
echo '>>>>>>>>>>>>>>>>>>>>>>>Installing hydra-core...<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<'
pip install --upgrade hydra-core -i http://mirrors.aliyun.com/pypi/simple --trusted-host mirrors.aliyun.com
echo '>>>>>>>>>>>>>>>>>>>>>>>Installing hydra-colorlog...<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<'
pip install hydra-colorlog

# 以下包为超参搜索所需，环境暂未适配
# git clone https://github.com/toshihikoyanase/hydra-optuna-sweeper.git
# pip install -e ./hydra-optuna-sweeper/.

pip install -r ../requirements.txt
