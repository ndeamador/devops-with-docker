Basic node application for the [**Devops with Docker**](https://devopswithdocker.com/) course by the **University of Helsinki**.

***

It merely renders the message 'Exercise 3.1 done'.

Used for both exercise **1.15** in [part 1](https://devopswithdocker.com/part1/) and exercise **3.1** in [part 3](https://devopswithdocker.com/part3/).

<br>

Deployed to [Docker Hub](https://hub.docker.com/repository/docker/ndeamador/devopswithdocker-1-15).

Deployed to [Heroku](https://ndeamador-devopsdocker-3-1.herokuapp.com/)


## Run Docker container:

Run the command:

```
docker run --rm -p 3000:3000 ndeamador/devopswithdocker-1-15
```

And visit http://localhost:3000/ in your browser.


## Local Development:

As I have uploaded the application as a subfolder in the course repository, to modify the project you will have to clone the entire repository and initialize git in the app's folder (`/devops-with-docker/part3/files/3.1/threepointone`).

### GitHub Actions conditional deployment:

Add the following strings to the GitHub commit message:

**To deploy the app to Heroku:**

```
#heroku-push
```

**To deploy the app to Docker Hub:**

```
#dockerhub-push
```

Note that the following secrets will have to be added to the GitHub Repositor:

To deploy to Heroku:
* HEROKU_EMAIL
* HEROKU_API_KEY
* HEROKU_APP_NAME

To deploy to Docker Hub:
* DOCKERHUB_USERNAME
* DOCKERHUB_TOKEN
