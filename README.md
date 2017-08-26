# ![Fundamental Logotype](http://svgshare.com/i/2V8.svg)

[![Gem Version](https://badge.fury.io/rb/fundamental.svg)](https://badge.fury.io/rb/fundamental)

See latest changes in [changelog.md](https://github.com/theomjones/fundamental/blob/master/changelog.md)

Fundamental is a clean, fully responsive, lightweight Jekyll theme for blogging. No frameworks. It uses system fonts, so no external stylesheets are loaded. The CSS is just 2Kb gzipped.

View the [demo here](https://blog.theomjones.com).

## Features

- Tag support
- Archive support
- Breadcrumbs
- Editable color palette via: (`_variables.scss`)
- Automatic header navigation
- Syntax highlighting
- Social Buttons
- Bio Section
- Pagination ***new** (please rename index.md to index.html, see [changelog.md](https://github.com/theomjones/fundamental/blob/master/changelog.md)) for more information.

![Screen Cap](http://i.imgur.com/jTFtqri.png)


## Installation

##### Via Direct Download:

[Download](https://github.com/theomjones/fundamental-blank/archive/master.zip) or [clone](https://github.com/theomjones/fundamental-blank/) the `fundamental-blank` repository. All you have to do from here is run `bundle install` and then `bundle update`. You're good to go!

**Or...**

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "fundamental"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: fundamental
```

And then execute:

    $ bundle

Or install it yourself as:

   $ gem install fundamental

## Usage

### Getting Started

After installing you should have a `config.yml` file in your base directory. Copy the contents of the repo [config.yml](https://github.com/theomjones/fundamental/blob/master/_config.yml) into your own config file. This will supply you with all the required configurations. You can edit them from here.

Jekyll gives you an `index.md` file as your homepage. Copy this into it to get started, the front matter will be explained below:  **!! Something to note**, Fundamental does not currently support categories (they're coming!). The default page Jekyll produces will break breadcrumbs (for now).
> !! Change the index.md extension to `.html` to allow pagination to work.

	---
	layout: home
	title: Home
	---

If you want to add the 'Archive' file you see in the demo. Create an `/archive` directory in your base directory. Then create an `index.md` inside it. Ensure it has the `layout: site-archive`. This layout displays all the posts in the site.

##### Plugins
Fundamemtal uses these plugins. When you have installed the Fundamental gem, run `bundle install` to install the required plugins. They can be turned on and off in your configuration file.

1. [jekyll-feed](https://github.com/jekyll/jekyll-feed)
2. [jekyll-archives](https://github.com/jekyll/jekyll-archives)
3. [jekyll-seo-tag](https://github.com/jekyll/jekyll-seo-tag)
3. [jekyll-paginate](https://jekyllrb.com/docs/pagination/)

#### Navigation
The top navigation loops through the sites pages that have `menu: true` in the front matter. This makes it easy to add new pages to your site. You can also order the pages by setting the value of `order`.

For instance: `order: 2` will place this item second (to the right of the first item).

The homepage is linked in the naviagtion statically by default. It can't be removed.

#### Config
The usual configuration settings can be found at the top of `config.yml`.

You can turn the themes components off and on by setting these to `true` or `false`. These are fairly self explanatory, the social ones can also be turned on or off independently.

```yaml
enabled:
  breadcrumbs: true
  tags: true
  # Enable RSS menu item
  rss: false
  seo: true
  # Share buttons are only on desktop (user use the share menu on mobile).
  social:
    enabled: true
    twitter: true
    facebook: true
    messenger: true
    whatsapp: true
```

##### Bio Section

You can copy this code into your `config.yml` file. `enabled` can be set to either true or false (as per plugins). You can then edit the fields how you like. The `img_url` can be linked to any image, locally or remote, `false` === a default icon which inherits the colour from `socialBtnsColor`.

    bio:
        enabled: true
        heading: 'Your bio title'
        subheading: 'Your bio subheading'
        img_url: false #put a url to an image in here or use the icon with false.
        body: >
          In this blog I'm documenting my ever evolving knowledge in
          making things for the web. I'll touch on topics like UI, UX,
          JavaScript, CSS and any other technologies I come across.

This appears as a slide out menu from a fixed circular icon in the bottom right corner.

#### Layouts
For blog posts use the `post` layout (this is already set as default via config file, unless changed.) For normal pages use the `page` layout. Naturally, the home layout is used for the home page which is where the post-loop (blog) lives. All of these layouts inherit from the `default` layout, which contains the head and footer includes.

The other layouts are for the `jekyll-archives` plugin.

###### File Structure

  	├── _layouts
  	│   ├── archive.html
  	│   ├── default.html
    |   ├── home.html
  	│   ├── month.html
  	│   ├── page.html
  	│   ├── post.html
  	|   ├── site-archive.html
  	│   └── tag_page.html


---

#### Includes
The includes are fairly self explanatory aside from info/item. `info.html` is the post information include in the `post` layout. Item is the blog item that gets outputted on the homepage. `tag-cloud.html` is the recurrent tag list you see on the homepage/throughout the sites pages.
There's a few svg includes as well that are just buttons/icons.
######File structure


    ├── _includes
    │   ├── bio.html
    │   ├── bio.svg
    │   ├── breadcrumbs.html
    │   ├── comments.html
    │   ├── facebook.svg
    │   ├── footer.html
    │   ├── head.html
    │   ├── header.html
    │   ├── info.html
    │   ├── item.html
    │   ├── messenger.svg
    │   ├── share.html
    │   ├── tag-cloud.html
    │   ├── twitter.svg
    │   └── whatsapp.svg


---


#### Sass
Sass is split into logical sections. The `main.scss` file is in `/assets/`.
To overwrite these files, add one with the equivalent name to your `_sass` directory (make one if it doesn't already exist). Jekyll will look in here before defaulting back to the theme files.

##### Sass Folder Structure

	  ├── _sass
	  │   ├── _blog.scss
	  │   ├── _footer.scss
	  │   ├── _fundamentals.scss
	  │   ├── _globals.scss
	  │   ├── _header.scss
	  │   ├── _post.scss
	  │   ├── _syntax.scss
	  │   ├── _tables.scss
	  │   ├── _typography.scss
	  │   └── _variables.scss

###### Variables

The first file to customise would be `_variables.scss`, you're probably best [copying it from the repo](https://github.com/theomjones/fundamental/blob/master/_sass/_variables.scss) and editing it. You can overwrite any of these variables with your own. There are four palette variables:

- `$base: #f5f2f2;` - the body background colour.
- `$textColor: #444;`
- `$accent: #4845DF;` - the purple colour
- `$tertiary: lighten($accent, 5%);` - lighter version of accent

`$font` uses a system font stack. Change this to whatever you wish.
`$font: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif;`

TODO: Separate palette from other variables. For easier custom colours.

## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/theomjones/fundamental). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## More Screenshots
### Blog Post
![Blog Screen Cap](http://i.imgur.com/39WA9LJ.png)

### 404 Page
![404 Screen Cap](http://i.imgur.com/G68JKgd.png)
[You can get this 404 page from the repo to use in your site.](https://github.com/theomjones/fundamental/blob/master/404.html) Just copy it into your main directory.
