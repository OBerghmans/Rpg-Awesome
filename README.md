# [RPG Awesome](http://nagoshiashumari.github.io/Rpg-Awesome/)
### A fantasy themed font and CSS toolkit.

RPG Awesome is a suite of 495 pictographic, rpg and fantasy themes icons for easy scalable vector graphics on websites, created and maintained by [Daniela Howe](https://github.com/nagoshiashumari) and [Ivan Montiel](http://github.com/idmontie).

Super shoutout to [Game Icons](https://game-icons.net/) for providing a library of SVG icons that we used to create this project 🎉.

## Installation

### Bower

```
bower install rpg-awesome
```

### NPM

```
npm add --save rpg-awesome
```

Then in your code, you can use rpg-awesome by pathing to it:

```
./node_modules/rpg-awesome/css/rpg-awesome.min.css
```

If you are using Sass, you can import it directly:

```
@import "node_modules/rpg-awesome/scss/rpg-awesome";
```

### Meteor

```
meteor add rpg-awesome
```

## Developing

This project uses NPM and Grunt to compile SCSS into CSS usable by browsers.
The project also requires for you to have Ruby installed:

```sh
npm install
gem update --system && gem install scss-lint
grunt
```

### Docker (no local dependencies required)

If you don't want to install Ruby and Node locally, you can build using Docker Compose:

```sh
docker compose build
docker compose run --rm build
```

The compiled CSS files will be written to `./css/` on your host. To run the linter only:

```sh
docker compose run --rm lint
```

## Releasing

Releases are driven by [rpg-awesome-raw](https://github.com/OpenDominion/rpg-awesome-raw).
Once that repo has published a new release tag, trigger the **Update from rpg-awesome-raw**
workflow in GitHub Actions with the matching version tag (e.g. `v0.0.21`). It will:

1. Download the font and SCSS assets from the rpg-awesome-raw release
2. Rebuild the CSS
3. Bump `package.json` to the matching version
4. Commit, tag, and publish to npm automatically

If the npm publish step fails, use the **Publish** workflow and select the tag to retry.

An `NPM_TOKEN` secret with publish rights must be set in the repository settings.

## Generating and Adding New Icons

We have split up the generation process of the `/fonts` directory to
[this repo](https://github.com/nagoshiashumari/rpg-awesome-raw).

Any new icons will need to be added to that repo first. Then follow the steps located in that repo's documentation for generating new `.eot`, `.svg`, `.ttf`, and `.woff` files.

Note that when adding new icons to the font files, you will need to update the `scss/_variables.scss` file with all of the new offsets.

The `gh-pages` branch of this repo should also be updated to add the
new icon to the web docs.

## License
- The Rpg Awesome font is licensed under the SIL OFL 1.1:
  - http://scripts.sil.org/OFL
- Rpg Awesome CSS and SASS files are licensed under the MIT License:
  - http://opensource.org/licenses/mit-license.html
- The Rpg Awesome documentation is licensed under the CC BY 3.0 License:
  - http://creativecommons.org/licenses/by/3.0/
- Attribution is appreciated but not required
- Full details: https://github.com/nagoshiashumari/Rpg-Awesome/blob/master/LICENSE.md
