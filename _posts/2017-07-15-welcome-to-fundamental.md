---
date: 2017-07-15T19:54:53+01:00
title: Welcome To Fundamental
author: Theo
tags:
  - Fundamental
  - Jekyll
  - Readme
---

Fundamental is a clean, simple, lightweight theme. No frameworks, no jQuery. It uses system fonts, so no external stylesheets are loaded. The CSS is just 2Kb gzipped.

Read the README over here --> [Repo](https://github.com/theomjones/fundamental)

Fundamemtal uses these plugins. When you have installed the Fundamental gem, run bundle install to install the required plugins. They can be turned on and off in your configuration file.

1. [jekyll-feed](https://github.com/jekyll/jekyll-feed)
2. [jekyll-archives](https://github.com/jekyll/jekyll-archives)
3. [jekyll-seo-tag](https://github.com/jekyll/jekyll-seo-tag)

Fundamental implements it's own breadcrumb solution. It is toggleable in the `config.yml` file by setting `breadcrumbs` to either `true` or `false`.

---

### Components


##### Blockquote

> "This is a blockquote, ain't it pretty."

Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Aenean lacinia bibendum nulla sed consectetur. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras justo odio, dapibus ac facilisis in, egestas eget quam.

#### Syntax Highlighting
`Let's write some code.`

{% highlight javascript linenos %}
class Person {
  constructor(age, name) {
    this.age = age;
    this.name = name;
  }
  greeting() {
    return 'Hello ' + this.name + ', How are you?';
  }
}

const david = new Person(22, 'David');

{% endhighlight %}

#### Table Time
Todo: Style tables better.

| Tables        | Are           | Boring  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |


#### Body Content

Nullam quis [risus](https://www.google.co.uk) eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et ~~magnis~~ dis parturient montes, nascetur ridiculus mus. Duis mollis, est non commodo luctus, **nisi erat** porttitor ligula, _eget_ lacinia odio sem nec elit. Curabitur blandit tempus <mark>porttitor</mark>. Etiam porta sem malesuada magna mollis euismod.

#### Lists

###### Ordered
1. Ordered lists
2. Not many people know why I was picked for Schindler's List
    1. Sub lists
    2. It was because I like lists.
3. ?

###### Unordered
- Unordered
- Lists are good. They help you get stuff done.
    - Sub lists
    - I like lists. They're easier than tables.
- Another item in the list.

### Images
(Of [Bill Murray](http://fillmurray.com))

![Cage](http://fillmurray.com/140/300)
![Cage](http://fillmurray.com/500/300)
![Cage](http://fillmurray.com/140/300)
![Cage](http://fillmurray.com/395/350)
![Cage](http://fillmurray.com/395/350)
![Cage](http://fillmurray.com/800/600)
*Bill Murray*
