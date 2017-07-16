# ![Fundamental Logotype](http://theomjones.com/fundamental/assets/images/logo.svg)

Fundamental is a clean, fully responsive, lightweight Jekyll theme for blogging. No frameworks, no JavaScript. It uses system fonts, so no external stylesheets are loaded. The CSS is just 2Kb gzipped.

View the [demo here](http://theomjones.com/fundamental).

## Features

- Tag support
- Archive support
- Breadcrumbs
- Editable color palette via: (`_variables.scss`)
- Automatic header navigation 
- Syntax highlighting 

 
![alt text](http://theomjones.com/fundamental/screenshot.png)


## Installation

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

After installing you should have a `config.yml` file in your base directory. If not, [grab the default one from the repository](https://github.com/theomjones/fundamental/blob/master/_config.yml).

##### Plugins
Fundamemtal uses these plugins. When you have installed the Fundamental gem, run `bundle install` to install the required plugins. They can be turned on and off in your configuration file.

1. [jekyll-feed](https://github.com/jekyll/jekyll-feed)
2. [jekyll-archives](https://github.com/jekyll/jekyll-archives)
3. [jekyll-seo-tag](https://github.com/jekyll/jekyll-seo-tag) 

#### Navigation
The top navigation loops through the sites pages that have `menu: true` in the front matter. This makes it easy to add new pages to your site. You can also order the pages by setting the value of `order`.

For instance: `order: 2` will place this item second (to the right of the first item).

#### Config
The usual configuration settings can be found at the top of `config.yml`.

You can turn the themes components off and on by setting these to `true` or `false`.

```yaml
enabled:
  breadcrumbs: true
  tags: true
  # Enable RSS menu item
  rss: false
  seo: true
```

#### Layouts
For blog posts use the `post.html` layout (this is already set as default via config file.) For normal pages use the `page.html` layout. Naturally, the blog layout is used for the blog page on the home screen. All of these layouts inherit from the `default` layout.

The other layouts are for the `jekyll-archives` plugin.

###### File Structure

	├── _layouts
	│   ├── archive.html
	│   ├── blog.html
	│   ├── default.html
	│   ├── month.html
	│   ├── page.html
	│   ├── post.html
	│   └── tag_page.html
		
	
---
	
#### Includes
The includes are fairly self explanatory aside from info/item. `info.html` is the post information include in the `post` layout. Item is the blog item that gets outputted on the homepage. `tag-cloud.html` is the recurrrent tag list you see on the homepage/throughout the sites pages.
######File structure

		
	├── _includes
	│   ├── breadcrumbs.html
	│   ├── footer.html
	│   ├── head.html
	│   ├── header.html
	│   ├── info.html
	│   ├── item.html
	│   └── tag-cloud.html


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

The first file to customise would be `_variables.scss`, you're probably best copying it from the repo and editing it. You can overwrite any of these variables with your own. There are four palette variables:

- `$base: #f5f2f2;` - the body background colour.
- `$textColor: #444;`
- `$accent: #4845DF;` - the purple colour
- `$tertiary: lighten($accent, 5%);` - lighter version of accent

There is one breakpoint: `$break: 600px;`

`$font` uses a system font stack. Change this to whatever you wish.
`$font: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif;`



## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/theomjones/fundamental). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## More Screenshots
### Blog Post
![alt text](http://theomjones.com/fundamental/assets/images/screenshot2.png)

### 404 Page
![alt text](http://theomjones.com/fundamental/assets/images/screenshot3.png)