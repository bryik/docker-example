# writing-docker-example

This repo is an example of a toy Docker application used in the blog post "Writing Dockerfiles".

## How to use

After cloning the repo, open a terminal in the root directory and then run:

```bash
docker-compose up
```

The image should build and then run:

```bash
Attaching to docker-example_scraper_1
scraper_1  | <body>
scraper_1  | <div>
scraper_1  | <h1>Example Domain</h1>
scraper_1  | <p>This domain is established to be used for illustrative examples in documents. You may use this
scraper_1  |     domain in examples without prior coordination or asking for permission.</p>
scraper_1  | <p><a href="http://www.iana.org/domains/example">More information...</a></p>
scraper_1  | </div>
scraper_1  | </body>
docker-example_scraper_1 exited with code 0
```

## Other commands

### Building the image

```bash
docker build -t names-are-hard .
```

### Running the image

```bash
docker run names-are-hard
```

### Interactive mode

This command runs the image, but instead of executing `main.py` you will be dropped into a bash prompt inside the container. This is very useful for testing commands before committing them to a Dockerfile.

```bash
docker run -it names-are-hard bash
```

From the bash prompt, try `ls`. What files do you see?

To **exit** the prompt, hit `CTRL-D`.
