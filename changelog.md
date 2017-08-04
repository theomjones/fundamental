# Changelog

[![Gem Version](https://badge.fury.io/rb/fundamental.svg)](https://badge.fury.io/rb/fundamental)

Unstable until 1.0

### 0.2.4 | 04/08/17
- Added a direct download install option for super easy setup.
- Disqus Comments! Head over to your `config.yml` and add `comments: true` to your `enabled` block, make sure you pop your forum short name at the site level too: `disqus_shortname: your-forum-shortname`. Any post with `comments: true` set in the front matter will display comments. Set a default in the `posts` scope if you'd like all your posts to have comments.
- Easily caption your photos by putting a `em` tag on the line below the photo (no spaced line break)...
e.g.
      ![img]('your_img_url')
      *Your Caption*

![Bill Murray](http://i.imgur.com/9kczUsy.png)
### 0.2.3 | 04/08/17
- New Social Buttons! Grab the latest addition from [`config.yml`](https://github.com/theomjones/fundamental/blob/master/_config.yml)
- New tag cloud design
- Rewrote sections of default [`config.yml`](https://github.com/theomjones/fundamental/blob/master/_config.yml) to better suit a new user.

### 0.2.2 | 22/07/17
- Fixed a problem with code blocks pushing off the screen and causing horizontal scrolling on smaller devices.
- Did some more spacing changes.
- Changed the site-wide archive page to be grouped by year.


### 0.2.1 | ??/07/17
- `blog.html` template has been renamed to `home.html` to make installing the theme easier. Jekyll's default `index.md` file uses the home template.
- IE 10+ layout fixes where footer floated to the top.
- Navigation spacing on small screens (<400px).
- Footer layout has changed. It is now easily editable in `config.yml`. You can still use your own `_footer.html` include.
- Changes to default Config.
- Readme improvements.
- Added pretty permalinks
- Fixed broken links on site Archive page.

### 0.2.0

- Error publishing

### 0.1.2 | 16/07/17
- Site wide archive page now uses `site-archive.html` template.

### 0.1.0 | 16/07/17
- Initial release.
