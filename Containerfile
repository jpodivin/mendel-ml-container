# Building on existing tensorflow image with additional libraries
#
# by Jiri Podivin (jpodivin@gmail.com)
#
FROM tensorflow/tensorflow:latest-gpu-jupyter

LABEL "name"="ML containerfile"
LABEL "version"="0.4"
LABEL "author"="jpodivin"
RUN pip install -U pip nbformat jsonschema jupyterlab
RUN pip install matplotlib pandas scikit-learn statsmodels imageio keras-tuner tensorflow-hub opencv-python scikit-image

CMD [ "bash", "-c", "source /etc/bash.bashrc && jupyter lab --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root" ]
