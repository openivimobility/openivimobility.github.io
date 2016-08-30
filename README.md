These are the source files for the static documentation site hosted on GitHub Pages. The site builds with [Jekyll](http://jekyllrb.com/), using [asciidoctor](http://asciidoctor.org/) and the [asciidoctor Jekyll plugin](https://github.com/asciidoctor/jekyll-asciidoc). The theme is [jekyll-docs-template](http://bruth.github.io/jekyll-docs-template).

To get set up to build the site (also may work with other versions of Ruby; YMMV):

```
rvm use 2.3.1
bundle install
```

To see a local version of the site, run `jekyll serve`, then open a browser at <http://localhost:4000/>.

To simply build the site without running the local server, run `jekyll build`; it will output to `./_site/`.

You can also build or preview the site using Docker. `make` will build the site using a docker container and output it to `./_site/`. `make preview` will put the site up on [localhost:4000](http://localhost:4000).

To update the site on Github Pages, build the site with `jekyll build` or `make`, then copy the complete generated static site to the master branch, commit, and push.

To add a new page to the site, there's a little shell script in bin/jekyll-page. (You can do it manually, too, but the script is easier.) Each page has to have a category, and the valid categories are listed in `_config.yml`.

TODO: Make CI push the site to Github Pages automatically.
