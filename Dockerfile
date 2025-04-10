FROM python:3.10

# Set working directory inside container
WORKDIR /app

# Copy everything from local app/ to /app inside the container
COPY ./app /app

COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose FastAPI's default port
EXPOSE 8000

# Start the FastAPI server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]