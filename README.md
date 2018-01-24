# scipy-jupyter-notebook

This quickstart consists of one microservice:


jupyter: Runs [Jupyter](https://jupyter.org/) IPython notebook with scipy (and other data analysis libraries) installed for building, analysing and visualising models interactively.

Follow along below to get the setup working on your cluster.

## Prerequisites

* Ensure that you have the [hasura cli](https://docs.hasura.io/0.15/manual/install-hasura-cli.html) tool installed on your system.

```sh
$ hasura version
```

Once you have installed the hasura cli tool, login to your Hasura account

```sh
$ # Login if you haven't already
$ hasura login
```


* You should also have [git](https://git-scm.com) installed.

```sh
$ git --version
```

## Getting started

```sh
$ # Run the quickstart command to get the project
$ hasura quickstart hasura/scipy-jupyter-notebook

$ # Navigate into the Project
$ cd scipy-jupyter-notebook
```
## Deploy app

```sh
$ # Ensure that you are in the scipy-jupyter-notebook directory
$ # Git add, commit & push to deploy to your cluster
$ git add .
$ git commit -m 'First commit'
$ git push hasura master
```

Once the above commands complete successfully, your cluster will have `jupyter` service  running. To get their URLs

```sh
$ # Run this in the scipy-jupyter-notebook directory
$ hasura microservice list
```

```sh
• Getting microservices...
• Custom microservices:
NAME       STATUS    INTERNAL-URL       EXTERNAL-URL
jupyter    Running   jupyter.default    http://jupyter.boomerang68.hasura-app.io

• Hasura microservices:
NAME            STATUS    INTERNAL-URL           EXTERNAL-URL
auth            Running   auth.hasura            http://auth.boomerang68.hasura-app.io
data            Running   data.hasura            http://data.boomerang68.hasura-app.io
filestore       Running   filestore.hasura       http://filestore.boomerang68.hasura-app.io
gateway         Running   gateway.hasura
le-agent        Running   le-agent.hasura
notify          Running   notify.hasura          http://notify.boomerang68.hasura-app.io
platform-sync   Running   platform-sync.hasura
postgres        Running   postgres.hasura
session-redis   Running   session-redis.hasura
sshd            Running   sshd.hasura
```

You can access the services at the `EXTERNAL-URL` for the respective service.

## Exploring Jupyter

### Open the Jupyter service

Head over to the EXTERNAL-URL of your `jupyter` service.

![Jupyter 1](https://raw.githubusercontent.com/hasura/scipy-jupyter-notebook/master/assets/jupyter_login.png "Jupyter 1")

### Authentication

```sh
$ # Run this in the scipy-jupyter-notebook directory
$ hasura ms logs jupyter
```

Copy the authentication token from the logs and enter it in the jupyter UI above. 

```sh
Executing the command: jupyter notebook
[I 07:14:46.914 NotebookApp] Writing notebook server cookie secret to /home/jovyan/.local/share/jupyter/runtime/notebook_cookie_secret
[W 07:14:47.379 NotebookApp] WARNING: The notebook server is listening on all IP addresses and not using encryption. This is not recommended.
[I 07:14:47.428 NotebookApp] JupyterLab alpha preview extension loaded from /opt/conda/lib/python3.6/site-packages/jupyterlab
[I 07:14:47.428 NotebookApp] JupyterLab application directory is /opt/conda/share/jupyter/lab
[I 07:14:47.434 NotebookApp] Serving notebooks from local directory: /home/jovyan
[I 07:14:47.434 NotebookApp] 0 active kernels
[I 07:14:47.434 NotebookApp] The Jupyter Notebook is running at:
[I 07:14:47.434 NotebookApp] http://[all ip addresses on your system]:8888/?token=cd596a9b5e90a83283e4c9d6b792b4a58cac38e06153fd12
[I 07:14:47.434 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 07:14:47.435 NotebookApp] 
    
    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://localhost:8888/?token=cd596a9b5e90a83283e4c9d6b792b4a58cac38e06153fd12

```

Start creating notebooks and showcase your work to the world!

