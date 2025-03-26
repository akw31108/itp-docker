# itp-docker
This is a local deployment to run server-side php scripts integrated with an NGINX web server. 

this is a php branch

## Architecture
TBD

## Prerequisites
- Docker version 27.4.0, build bde2b89
- sh shell with typical tools and perl

## testing notes
- Tested on windows 11 Home
- Tested with Docker version 27.4.0, build bde2b89
- Tested with GitBash

## Usage
1. Initialize the file structure and volumes.
    ```bash
    chmod +x scripts\init.sh;
    ./scripts/init.sh;
    ```
2. To up the compose stack:
    ```bash
    docker compose up -d
    ```

3. To down the compose stack:
    ```bash
    docker compose down;
    ```
