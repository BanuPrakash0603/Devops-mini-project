# Use official Python image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy entire project
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r app/requirements.txt

# Expose port
EXPOSE 5000

# Run Flask app
CMD ["python", "app/app.py"]