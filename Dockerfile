# Use the official Miniconda image
FROM continuumio/miniconda3:latest


# Copy the reinvent.yml file into the Docker image
COPY reinvent.yml .

# Install mamba and create the conda environment from the reinvent.yml file
RUN conda install -n base -c conda-forge mamba && \
    mamba env create -f reinvent.yml

# Install pip manually in case it is missing in the environment
RUN conda run -n reinvent.v3.2 python -m ensurepip --upgrade
RUN conda run -n reinvent.v3.2 python -m pip install --upgrade pip setuptools wheel

RUN cd /home && \
    git clone -b plugins https://github.com/Tabor-Research-Group/Reinvent
ENV PYTHONPATH=/home/Reinvent

# Set the default shell to use bash and activate the conda environment
ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "reinvent.v3.2"]
