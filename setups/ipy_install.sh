# install anoconda
# conda create -n myenv [python=version] [scipy=0.15.0] anaconda
conda create -n python3.7m python=3.7 anaconda

# Clone
# conda create --name myclone --clone myenv

# Add to notebook kernel without root
~/apps/anaconda3/envs/python/bin/python3.7m -m ipykernel install --user --name conda-py3.7
