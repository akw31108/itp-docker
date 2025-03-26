# itp-docker
This is a local deployment to serve the GitHub Pages app of [akw31108.github.io/client-side-demos]. (https://github.io/client-side-demos)

this is a php branch

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
    ```bash
    docker compose up -d
    ```
3. Visit the homepage by going to [localhost.8081](https://localhost:8081) in the browser.

4. Click the link you find on the homepage.

5. To monitor services, attach to the watchdog and curl different services
    ```bash
    docker compose attach watchdog-svc:
    ```
    (From inside watchdog-c)
    ```sh
    apk add curl;
    curl http://fp-svc:7901/; # proxied to http://hp-svc:6969/ (homepage)
    curl http://hp-svc:6969/; # hits http://hp-svc:6969/ (homepage)
    curl http://fp-svc:7901/pages-site/ # hit the pages site (pages-site)
    ```
    Use 'ctrl-c' to exit and restart that main shell process.

6. To down the compose stack:
    ```bash
    docker compose down;
    ```
