# Gentelella Rails

This is mostly an experimental effort to inject the Gentelella theme into Rails assets pipeline.

My goal in building this gem was to learn:

  * how to automate bower updates
  * package up only the files needed for the gem to function in production
  * load everything up with just one or two requires in the Rails app that uses it

Beware that this gem furnishes a fairly comprehensive theme and pulls in *many* other libraries such as:

  * jquery and jquery_ujs
  * bootstrap-sass and font-awesome-sass
  * icheck
  * nprogress
  * moment JS
  * bootstrap date range picker
  * fastclick
  * ChartJS
  * jquery Flot
  * DateJS
  * Switchery
  * Select2
  * Parsley JS

Where possible, I utilized well-maintained Rails gems for the above.  However, if the gems were
out of date, I utilized the Bower supplied version.

You may also find the demo [Rails 5.x project on github](https://github.com/mwlang/gentelella-rails-demo)

## Theme Demo
![Gentelella Bootstrap Admin Template](https://github.com/mwlang/gentelella-rails-demo/blob/master/public/images/gentelella-admin-template-preview.jpg "Gentelella Theme Browser Preview")

**[Template Demo](https://colorlib.com/polygon/gentelella/index.html)**

## Installation
Add the following to your Rails application's Gemfile and bundle install:

```ruby
gem 'gentelella-rails'
```

Then perform the following:

```bash
bundle install
rails g gentelella:install
```

NOTE:  If the generator fails to work, then make sure you stop Spring: ```spring stop``` and then try again.

Add the following to your assets/javascripts/application.js

```javascript
//= require gentelella
//= require gentelella-custom
```

If you're working with jquery.vmap, then your application.js will look something like this:

```javascript
//= require gentelella
//= require jqvmap/maps/jquery.vmap.world
//= require jqvmap/maps/jquery.vmap.usa
//= require jquery.vmap.sampledata
//= require gentelella-custom
```

There is no need to include bootstrap-sprockets, font-awesome, jquery, etc. as these are all included via
the gem when you "require gentelella"

Finally, add the stylesheet directives to your assets/stylesheets/application.scss

```sass
@import "gentelella";
@import "gentelella-custom";
```

This will pull in all necessary stylesheets including bootstrap, font-awesome, etc., which the theme uses.

```ruby
gem 'gentelella-rails'
```

## Contributing
I don't have any personal plans to utilize this theme in my projects, so if this project is of interest,
fork and send pull requests and I will publish!

The gem should be fairly easy to update to latest JS libraries as they come available.
If the JS or CSS libraries are via a rubygem, then:

```bash
bundle update GEMNAME
```

If the libraries are supplied by bower then:

```bash
rake bower:update
rake bower:vendor
```

## Credits
The original [theme](https://github.com/puikinsh/gentelella) was developed by
[Colorlib](https://colorlib.com/) and released under MIT license.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
