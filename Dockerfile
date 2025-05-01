# Use Miniconda base image
FROM continuumio/miniconda3
# ✅ Base image with Conda
FROM continuumio/miniconda3

# ✅ Set working directory
WORKDIR /app

# ✅ Copy environment file and install dependencies
COPY environment.yml .
RUN conda env create -f environment.yml

# ✅ Activate environment and set shell
SHELL ["conda", "run", "-n", "blogenv", "/bin/bash", "-c"]

# ✅ Copy the rest of your app code
COPY . .

# ✅ Create static folder
RUN mkdir -p /app/staticfiles

# ✅ Copy and prepare entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# ✅ Expose Django port
EXPOSE 8000

# ✅ Start using your script
ENTRYPOINT ["/entrypoint.sh"]


