# Changelog

[![Gem Version](https://badge.fury.io/rb/fundamental.svg)](https://badge.fury.io/rb/fundamental)

Unstable until 1.0

*TODO:*
- ~~Pagination~~
- Categories

### 0.4.5 | 04/01/18

- Removed `:focus { outline: none }` from fundamentals file which is bad for accessibility, thanks [httpsterio](https://github.com/httpsterio)

### 0.4.4 | 30/08/17

- Small typographic changes
- Changed the previous/next article to resemble the tag cloud links more.


### 0.4.3 | 29/08/17

- Moved the dynamic media query into scss, didn't realise you could use liquid in scss!
- Changed the syntax-highlight theme to work better with the darker background.

### ~~0.4.1~~ 0.4.2 | 28/08/17

- Fixed a problem with the header media query not affecting the title *again

### 0.4.0 | 28/08/17

- **WARNING**: breaking changes. With 0.4.0 comes pagination - however, Jekyll **does not** support pagination on anything other than an `index.hmtl` file. YOU MUST change the extension to `.html` on the main `index.md` file in your base directory. Or omit `pagination: {{value}}` from your config file and pagination will not be used.
- The break point for the header collapsing is now set using a little algorithm based on how many pages have the `menu: true` in their frontmatter. So no need to worry about how many menu items you have, it'll work it out! Cool huh!
- Support for Jekyll `3.5.2`

- Make sure you add jekyll `3.5.2` to your gemfile or bundler won't be able to update the theme. 

### 0.3.3 | 26/08/17

- The post headers were far to big on the latest release. Fixed.

### 0.3.2 | 23/08/17

- Minor bug fixes with the new navbar solution. 
- Went back to one break point only (`600px`), which can be changed in the `_variables.scss` file. You might want to base this value on how many navigation links you have. The more you have, the bigger the breakpoint needs to be. You can leave it if you just have 1-4 items (unless they have huge titles).
- Viewport based responsive typography for headers.
- Made code blocks dark with white text.

### 0.3.1 | 23/08/17

- The bio link button now slides up and down, on mobile/tablet, based on the scroll direction (up it appears, down it disappears.) The whole bio section is still configurable in `config.yml`. Turning it off will remove it completely from the build.
- On mobile, the navigation menu now scrolls horizontally to better deal with larger menus.

### 0.3.0 | 06/08/17

*BIG UPDATE*

- Set the social buttons color by setting the value of `socialBtnsColor:` in `config.yml`. This also affects the _bio_ icon in the bottom right, if enabled – see below.
- New bio section. Copy this code into your config file. Enabled can be set to either true or false. You can then edit the fields how you like. The `img_url` can be linked to any image, locally or remote, `false` === a default icon which inherits the colour from `socialBtnsColor`.
      bio:
        enabled: true
        heading: 'Your bio title'
        subheading: 'Your bio subheading'
        img_url: false #put a url to an image in here or use the icon with false.
        body: >
          In this blog I'm documenting my ever evolving knowledge in
          making things for the web. I'll touch on topics like UI, UX,
          JavaScript, CSS and any other technologies I come across.

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


### 0.2.1 | 20/07/17
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
