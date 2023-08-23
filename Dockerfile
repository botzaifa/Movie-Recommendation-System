FROM python:3.9-slim

RUN apt-get update -y && apt-get clean

# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

RUN ls -la $APP_HOME/

# Install dependencies
RUN pip install -r requirements.txt

# Expose the port that Streamlit runs on (default is 8501)
EXPOSE 8501

# Run the Streamlit app on container startup
CMD ["python", "-m", "streamlit", "run", "app.py"]