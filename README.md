# ![alt text](assets/images/logo.svg)
---

Fundamental is a clean, simple, lightweight theme. No frameworks, no jQuery. It uses system fonts, so no external stylesheets are loaded. The CSS is just 2Kb gzipped.

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

#### Config
The usual configuration settings can be found at the top of `config.yml`.

You can turn the themes breadcrumbs off and on by setting `breadcrumbs` to `true` or `false`.

```yaml
# Breadcrumbs
breadcrumbs: true
```

Specify default layouts and anything else you'd like in the defaults scope.

	defaults:
	  -
	    scope:
	      path: "" # an empty string here means all files in the project
	      type: posts
	    values:
	      layout: "post"
	      author: "Theo"


#### Layouts
Fundamental has six layouts, all inheriting the layout of the `default` template. They are fairly self explanatory apart from: `tag_page` (the layout for showing individual tag pages) and `archive.html` which shows individual archive pages. Read the `jekyll-archives` [readme](https://github.com/jekyll/jekyll-archives) to get an understanding of how to configure this plugin.

###### File Structure
	├── _layouts
	│   ├── archive.html
	│   ├── blog.html
	│   ├── default.html
	│   ├── page.html
	│   ├── post.html
	│   └── tag_page.html
	
#### Includes
	├── _includes
	│   ├── breadcrumbs.html
	│   ├── footer.html
	│   ├── head.html
	│   └── header.html

#### Sass
Sass is split into logical sections. The `main.scss` file is in `/assets/`.
To overwrite these files, add one with the equivalent name to your `_sass` directory. Jekyll will look in here before defaulting back to the theme files.

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

The first file to customise would be `_variables.scss`. You can overwrite any of these variables with your own. There are four palette variables:

- `$base: #f5f2f2;` - the body background colour.
- `$textColor: #444;`
- `$accent: #4845DF;` - main secondary colour
- `$tertiary: lighten($accent, 5%);` - lighter version of accent

There is one breakpoint: `$break: 600px;`

`$font` uses a system font stack. Change this to whatever you wish.
`$font: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif;`



## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[theomjones]/hello. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, and `_sass` tracked with Git will be released.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
