# Start with an official Jupyter Notebook image
FROM jupyter/base-notebook

# Set working directory
WORKDIR /home/jovyan

# Copy the repository content into the container
COPY . /home/jovyan/

# Install any required Python dependencies (if you have a requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port for Jupyter Notebook
EXPOSE 8888

# Command to run Jupyter notebook with no token and no browser
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
