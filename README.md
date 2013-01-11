# Ajax-Chosen for rails asset pipeline

[Chosen](https://github.com/harvesthq/chosen) is a library for making long, unwieldy select boxes more user friendly.

The `ajax-chosen-rails` gem integrates `Chosen` and `Ajax-Chosen` with the Rails asset pipeline.

## Usage

### Install ajax-chosen-rails gem

Include `ajax-chosen-rails` *and* `chosen-rails` in Gemfile

    gem 'ajax-chosen-rails'
    gem 'chosen-rails'

Then run `bundle install`

### Include ajax-chosen (and chosen) javascript assets

#### NOTE: Ajax-Chosen automatically loads Chosen as a dependency

Add to your `app/assets/javascripts/application.js` if use with jQuery

    //= require ajax-chosen-jquery

Or with Prototype

    //= require ajax-chosen-prototype


### Include chosen stylesheet assets

Add to your `app/assets/stylesheets/application.css`

    *= require chosen

## Gem maintainance

Maintain `ajax-chosen-rails` gem with `Rake` commands.

Update origin chosen source files.

    rake update

Publish gem.

    rake release

## License

use MIT license.
