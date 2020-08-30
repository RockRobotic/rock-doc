# Rock Robotic Docs

View the [Rock Robotic Docs](https://docs.rockrobotic.com/).

This is a repo containing all Rock Robotic docs. Rock Docs uses [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/). MkDocs is a static site generator geared towards (technical) project documentation.

Visit the [Rock Robotic](https://rockrobotic.com) site or our [Community](https://community.rockrobotic.com) site for more information.


# Contributing

Review the [Getting Started Guide](https://squidfunk.github.io/mkdocs-material/getting-started/) to get spun up quickly. If there's a change you would like to make to the documentation please Fork the repository and issue a [Pull Request](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request-from-a-fork).

## Quick Commands

1. Get the Docker container.
`docker pull squidfunk/mkdocs-material`

2. Build mkdocs.
`docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material`

# CI/CD

We use GitHub Actions to build the static site. Once built, the static site is committed to the gh-pages branch.
