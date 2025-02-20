# itp-docker
This is a local deployment to serve the GitHub Pages app of [akw31108.github.io/client-side-demos]. (https://github.io/client-side-demos)

## Architecture
-requests to `http://localhost:8081` get routed to the `fp-svc` which has a webserver on port `7901`
    -for `http://fp-svc:7901/`, the container proxies to `http://hp-svc:6969/`
    -for `http://fp-svc:7901/pages-site`, the container serves the pages site stored inside the image at `/usr/share/nginx/html`
    - the `hp-svc` serves a landing page on port `6969` that comes from a volume and has a link to `http://localhost:8081/pages-site/`

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
    TBD
3. To down the compose stack:
    TBD
