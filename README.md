# do-jupyterlab - Run JupyterLab using the [do-framework](https://bit.ly/do-framework)

This project simplifies running of JupyterLab in a container either locally using Docker or on a Kubernetes cluster.

# Configuration

Run the `./config.sh` script to open the project's configuration file.
The `JUPYTER_TOKEN` setting allows you to set a password for your JupyterLab instance
The `JUPYTER_GRANT_SUDO` setting allows you to enable/disable sudo access of the Jupyter Notebook user `jovyan`. By default sudo access is allowed.

# Build

Run the `./build.sh` script to build the container image.

This container image is pre-built and shared via DockerHub at iankoulski/do-jupyterlab. To simply run JupyterLab without building the container image, please use the following command:

```sh
docker run -it --rm -v $(pwd):/wd -p 8888:8888 -e JUPYTER_TOKEN=Jupyt3r -e GRANT_SUDO=yes iankoulski/do-jupyterlab
```

To run JupyterLab on Kubernetes using the pre-built container image, please use the following command:

```sh
kubectl apply -f https://bit.ly/do-jupyterlab-yaml
```

# Share

If you want to share the container with others or run it on a Kubernetes cluster, run the `./push.sh` script. This will push the container image to your configured registry.

# Run

Execute the `./run.sh` script to run JupyterLab locally using Docker.
If you would like to run the JupyterLab instance on Kubernetes, change the `TO` setting in the project configuration from `docker` to `kubernetes` first, then execute the `./run.sh` script.

# Project description

This is a Depend on Docker project which comes operational out of the box 
and is configured with reasonable defaults, which can be customized as needed.


The project contains the following scripts:
* `config.sh` - open the configuration file .env in an editor so the project can be customized
* `build.sh` - build the container image
* `test.sh` - run container unit tests
* `push.sh` - push the container image to a registry
* `pull.sh` - pull the container image from a registry
* `run.sh [cmd]` - run the container, passing an argument overrides the default command
* `status.sh` - show container status - running, exited, etc.
* `logs.sh` - tail container logs
* `exec.sh [cmd]` - open a shell or execute a specified command in the running container

# License

This project is released under the MIT [LICENSE](LICENSE).

