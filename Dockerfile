# Use Miniconda base image
FROM continuumio/miniconda3

# Set working directory
WORKDIR /app

# Copy environment file and install dependencies
COPY environment.yml .
RUN conda env create -f environment.yml

# Activate env, copy code
SHELL ["conda", "run", "-n", "blogenv", "/bin/bash", "-c"]
COPY . .

# Expose port and run
EXPOSE 8000
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

