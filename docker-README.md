# Knitweb Docker Container

This repository is a **fork** of [fossasia/knitweb](https://github.com/fossasia/knitweb) with added **Docker support**.

**This is NOT my original application.**  
I only added the Dockerfile and containerization setup as a **practice project** to learn Docker with a real Electron GUI app.

---

## What I Added

- Dockerfile based on Ubuntu
- Fixed missing dependencies (GTK, Cairo, Pango, etc.)
- Modified `run.sh` to handle Electron `--no-sandbox` and correct binary path
- X11 display forwarding instructions for running the GUI inside Docker
- Clean documentation

---

## Original Project

**Knitweb** is an open-source knitting web app (frontend + backend) by [FOSSASIA](https://fossasia.org/).  
It works with Knitlib server and uses the Knitpat format.

Original repo: https://github.com/fossasia/knitweb

---

## How to Use with Docker

### 1. Build the image
```bash
docker build -t knitweb .

2. Run the container (Linux with X11)bash

# Allow Docker to access your display
xhost +local:docker

# Run the app
docker run -e DISPLAY=$DISPLAY \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           --rm knitweb

# Revoke access when done (security)
xhost -local:docker

Important NotesThis is a learning / demonstration project only.
All credit for the Knitweb application goes to the FOSSASIA team.
My contribution is limited to the Docker setup and fixes for container environment.
Tested on Linux hosts with X11.

Skills DemonstratedWriting Dockerfiles for GUI/Electron apps
Troubleshooting dependency and library issues
X11 socket forwarding
Modifying entrypoint scripts

Feel free to use this as a reference for containerizing other Electron-based applications.
Made with  by Basima-dev (Obasi Princewill Chimezirim)


