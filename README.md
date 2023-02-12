# Mendel University ML container image

Create `notebooks` directory in your $HOME to allow for persistent storage.

If you have compatible Nvidia GPU with i[nstalled dependencies](https://www.tensorflow.org/install/docker#gpu_support) you can initialize the environment with:

`
 docker run -it -p 8888:8888 --gpus all --rm -v $HOME/notebooks:/tf/notebooks jpodivin/mendel-ml-gpu:latest
`

otherwise remove the `--gpus all` argument and run:

`
 docker run -it -p 8888:8888 ---rm -v $HOME/notebooks:/tf/notebooks jpodivin/mendel-ml-gpu:latest
`
