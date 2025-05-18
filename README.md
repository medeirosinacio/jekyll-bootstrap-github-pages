# The Awesome Jekyll Template

A complete, production-ready Jekyll template with Bootstrap, designed for fast and easy deployment on GitHub Pages.

[Live Demo](https://jekyll-bootstrap.douglasmedeiros.dev/)

---

## Features

- **Jekyll**: Static site generator, fully compatible with GitHub Pages.
- **Bootstrap 5.3**: Responsive design with Sass support and [icons](https://github.com/twbs/icons).
- **HTML/CSS/JS Minification**: Optimized builds using [Jekyll Minifier](https://github.com/Mendeo/jekyll-minifier).
- **Landing Page Effects**: Integrated [AOS library](https://michalsnik.github.io/aos/) for animations.
- **Dynamic Blog**: Pagination, tags, and categories out of the box.
- **View Counter**: Integrated with [CountAPI](https://countapi.xyz/).
- **Comments**: Powered by [Disqus](https://disqus.com/).
- **Contact Form**: Email responses via [Static Forms](https://www.staticforms.xyz/).
- **Docker Support**: Easy local development with Docker.
- **Ready-to-use Configuration**: Global variables, directories, and assets pre-configured.

## Getting Started

### Prerequisites

- [Git](https://git-scm.com/)
- [Docker](https://www.docker.com/)
- [GNU Make](https://www.gnu.org/software/make/) (available by default on most Unix systems)

### Installation

1. **Clone the repository:**
    ```sh
    git clone https://github.com/medeirosinacio/jekyll-bootstrap-github-pages.git
    cd jekyll-bootstrap-github-pages
    ```

2. **Start the local server:**
    ```sh
    make setup
    ```
   The server will be available at [http://localhost:4000](http://localhost:4000).

> **Note:** The `make setup` command automatically detects your system architecture (x86 or ARM) and runs the appropriate Docker environment.

### Makefile Commands

- `make setup` &mdash; Sets up and runs the project in a Docker container. Detects your CPU architecture and uses the correct image.
- `make help` &mdash; Shows all available make commands and their descriptions.

### Dependencies

All runtime dependencies are managed inside the Docker container. You only need to have Docker and Make installed on your machine. The container will handle:

- Ruby and Bundler (for Jekyll)
- Node.js (for asset compilation)
- All required Ruby gems (see `Gemfile`)

## Usage

- Edit `_config.yml` to update site settings, URLs, and metadata.
- Add your posts in the `_posts` directory.
- Customize styles in `assets/css/`.
- All static assets are located in the `assets/` folder.

## Contributing

Contributions are welcome! Please open issues or submit pull requests for improvements and bug fixes.

## License

Distributed under the MIT License. See `LICENSE` for more information.

---

**Made with ❤️ by [Douglas Medeiros](https://github.com/medeirosinacio)**
