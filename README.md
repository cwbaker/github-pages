# Github Pages

A Docker image to serve Github Pages locally.

## Usage

Build the Docker image by running Docker from the directory containing the local repository, you may want to replace `cwbaker/github-pages` with your own tag:

~~~sh
docker build -t cwbaker/github-pages .
~~~

Serve Github Pages by running the following from the directory containing the site, again you may want to replace `cwbaker/github-pages`:

~~~sh
docker run --rm -it -v ${PWD}:/github-pages -p 4000:4000 cwbaker/github-pages
~~~

## Contributions

I'm not expecting or accepting contributions to this repository.  Fork it and make it your own!

## License

The contents of this repository are licensed under the [MIT License](http://www.opensource.org/licenses/MIT).
