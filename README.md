# Sonoguide

Sonoguide is an attempt at creating a probe guidance web application. It has been designed to work with SonoAssist, another LATIS project. 

## Installing for development (Linux)

Please note that the first development attempt has been done on ubuntu, but the following steps should work on any linux-based system. 

1. **Install dependencies :** Make sure you have the following packages installed

build-essential , bluez , libboost-all-dev , libbluetooth-dev , libgtk2.0-dev , pkg-config , libavcodec-dev , libavformat-dev , libswscale-dev , redis-server , redis-tools.

2. **Clone the repo :** Using `git clone <url>`.
3. **Pull submodules :** The repo includes two submodules, run the `deploy.sh` script once to pull their code. This script will try to launch the application, which will not work this first time, because you still need to set up a few things.
4. **Create a python virtual environment :** navigate to the backend folder and create a python environment using `virtualenv pyenv`. The virtual environment should have this very specific name for the `launch_back.sh` script to work. Activate your python virtual environment using `source pyenv/bin/activate/`.
5. **Install python dependencies :** use `pip install -r requirements.txt` in the backend directory (and using your python venv !) to download the necessary python libraries.
6. **Launch the application** by running the `deploy.sh` script again.
7. Happy coding ! 
