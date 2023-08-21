
# Movie Recommendation System

Welcome to the Movie Recommendation System project by [@botzaifa](https://github.com/botzaifa)!

This project focuses on building a movie recommendation system using a content-based approach, creating a user-friendly front-end web application to showcase the recommendations, and deploying the application using Docker and Google Kubernetes Engine.

## Project Summary

The project is divided into several key steps:

1. **Data Extraction using BeautifulSoup:**
   - We use the BeautifulSoup library to scrape movie data from the web. This data forms the basis for our recommendation system.

2. **Content-Based Recommendation System:**
   - Building upon the scraped data, we create a content-based recommendation system. This system suggests movies based on the content and features of the movies themselves, rather than relying on user preferences.

3. **Front-End Web App using Streamlit:**
   - To interact with our recommendation system, we design a front-end web application using Streamlit. Users can input their preferences, and the app will display relevant movie recommendations.

4. **Containerization with Docker:**
   - Our recommendation system is containerized using Docker. This ensures consistent behavior across different environments and simplifies deployment.

5. **Deployment on Google Kubernetes Engine:**
   - The containerized application is deployed on Google Kubernetes Engine (GKE). This allows us to scale our application easily and manage it effectively.

## Getting Started

Follow these steps to set up and run the Movie Recommendation System on your local machine:

1. Clone this repository:
   ```
   git clone https://github.com/botzaifa/Movie-Recommendation-System.git
   cd Movie-Recommendation-System
   ```

2. Install the required dependencies:
   ```
   pip install -r requirements.txt
   ```

3. Run the data extraction script:
   ```
   python scrape_data.py
   ```

4. Build and run the Streamlit app locally:
   ```
   streamlit run app.py
   ```

For deployment instructions using Docker and Google Kubernetes Engine, please refer to the corresponding sections below.

## Dockerization

To containerize the application using Docker:

1. Install Docker on your machine.
2. Build the Docker image:
   ```
   docker build -t movie-recommendation-app .
   ```
3. Run the Docker container:
   ```
   docker run -p 8080:8080 movie-recommendation-app
   ```

## Deployment on Google Kubernetes Engine

To deploy the containerized app on Google Kubernetes Engine:

1. Set up your GKE cluster.
2. Deploy the Docker image to GKE:
   ```
   kubectl create deployment movie-recommendation-app --image=movie-recommendation-app
   ```
3. Expose the deployment as a service:
   ```
   kubectl expose deployment movie-recommendation-app --type=LoadBalancer --port=80 --target-port=8080
   ```

## Contributing

Contributions to this project are welcome! If you find any bugs or have ideas for improvements, feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

# Created by: 
Me (Huzaifa Khan) here's my profile: [@botzaifa](https://github.com/botzaifa)
