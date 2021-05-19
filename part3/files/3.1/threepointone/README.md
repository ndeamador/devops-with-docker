Basic node application for the [**Devops with Docker**](https://devopswithdocker.com/) course by the **University of Helsinki**.

***

It merely renders the message 'Exercise 3.1 done'.

Used for both exercise **1.15** in [part 1](https://devopswithdocker.com/part1/) and exercise **3.1** in [part 3](https://devopswithdocker.com/part3/).

<br>

Deployed to [Docker Hub](https://hub.docker.com/repository/docker/ndeamador/devopswithdocker-1-15).

Deployed to [Heroku](https://ndeamador-devopsdocker-3-1.herokuapp.com/)

<br>


## Run Docker container:
---

Run the command:

```
docker run --rm -p 3000:3000 ndeamador/devopswithdocker-1-15
```

And visit http://localhost:3000/ in your browser.

<br>

## Development:
---

As I have uploaded the application as a subfolder in the course repository, to modify the project you will have to clone the entire repository and initialize git in the app's folder (`/devops-with-docker/part3/files/3.1/threepointone`).

When pushing changes to GitHub, GitHub Actions will automatically **deploy the app to Heroku** if the commit message includes the string `#heroku-push` and will **deploy the app to Docker Hub** if the commit message includes the string `#dockerhub-push`.
