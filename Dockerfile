# Use a Python base image
FROM python:3.10-slim

# Set working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt /app/

# Install the dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . /app/

# Expose the necessary port (Render will automatically bind to the right port)
EXPOSE 5000

# Run the bot
CMD ["python3", "bot.py"]
