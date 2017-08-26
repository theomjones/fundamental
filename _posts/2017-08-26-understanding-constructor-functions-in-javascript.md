---
date: 2017-08-05T16:33:42+01:00
title: Constructor Functions
tags: [javascript, objects]
---

It took me a bit of time to figure out constructor functions and how you might use them in practice, but they're properly useful.

---

Constructor functions are a great way to abstract reusable objects. Think user interface components, data processing objects etc. In a nutshell you want to create multiple objects with the same (or similar) properties and methods. In object oriented programming this type of object can be represented by a `class`. Classes can be super classes, or subclasses. The latter inheriting the properties and methods of the former.

Constructor functions, like everything in JavaScript, are objects. They're a little different to normal functions in that they are invoked with the special `new` keyword. So when we use the `new` keyword, the interpreter creates a new object, setting it's constructor value to the name of your function. Consider the code below:

{%- highlight javascript -%}
  function Person () {
    //...
  }

const me = new Person();
{%- endhighlight -%}

Here we've invoked a new instance of the `Person` object and assigned it to the variable `me`. (_Note that constructors [and classes] are given capital letters in order to diferentiate them from ordinary functions._)

> _Note: with ES6 JavaScript supports the `class` keyword. I'll be moving onto this at a later date._

<!-- <p data-height="480" data-theme-id="light" data-slug-hash="rzjNEP" data-default-tab="js,result" data-user="theomjones" data-embed-version="2" data-pen-title="Constructors" data-preview="true" class="codepen">See the Pen <a href="https://codepen.io/theomjones/pen/rzjNEP/">Constructors</a> by Theo (<a href="https://codepen.io/theomjones">@theomjones</a>) on <a href="https://codepen.io">CodePen</a>.</p>
<script async src="https://production-assets.codepen.io/assets/embed/ei.js"></script> -->
