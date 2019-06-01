# Spark FHE Experiment
  In this experiment, we aimed to log resource useage when jobs running in Docker containers and Kubernetes pods. All the jobs tested are sparkFHE examples running in spark standalone environment.

# Environment Setup
  To setup the environment for experiment, you need Docker and Kubernetes installed on your machine. If you have these installed already, go to the docker folder and install the docker image provided in the folder.

# How Does It Work?
1. Docker Containers:
   - Go to scripts/docker folder
   - Run command: bash run.sh [job name] [number of jobs] [container name]
2. Kubernetes:
   - Go to scripts/k8s folder
   - Run command: bash run.sh [job name]
   - Depending which and how many jobs you want to run in parallel, you need to modify the correspoindg yaml file.