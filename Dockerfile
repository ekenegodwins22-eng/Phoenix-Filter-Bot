# Don't Remove Credit @ph0enix_web
# Subscribe YouTube Channel For Amazing Bot @iyanuanjorindamilola
# Ask Doubt on telegram @ph0enix_web

# Use a newer, supported Debian base image (Bullseye)
FROM python:3.10-slim-bullseye

# Install system dependencies
# The apt update/upgrade command should now work correctly
RUN apt update && apt upgrade -y

# Install git (if needed for cloning or other operations)
RUN apt install git -y

# Copy requirements and install Python dependencies
COPY requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

# Copy the rest of the application code
COPY . /app
WORKDIR /app

# Command to run the bot
CMD ["python3", "bot.py"]
