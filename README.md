# Twitter::Bootstrap::Helpers

For Twitter Bootstrap 2.1+

## Installation

Add this line to your application's Gemfile:

    gem 'twitter-bootstrap-helpers'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install twitter-bootstrap-helpers

## Usage

See: http://twitter.github.com/bootstrap/components.html#labels-badges

...and components below.

All th examples below are written in HAML ;)

### Alerts

* alert_heading_tag
* alert_message
* alert_close_tag

```ruby
alert_heading_tag 'Important'
alert_close_tag

alert_message type: 'warning', close: true, heading: 'Important'
```

Aliases:

`ts_alert_message (or ts_alert), ts_alert_heading, ts_alert_close`

### Badge

`ts_badge type, text = '', options = {}, &block`

### Hero unit

`ts_hero_unit heading, tagline, options = {}, &block`

```haml
= ts_hero_unit 'Hello World', 'the place to be' do
  %p
    Where all is good...
  .btn btn-primary
    Enjoy
```

### Icon

```haml
= icon_for :ok, 'Okay'
= icon_for :ok, 'Okay', :right
```

Alias: `ts_icon`

### Label

`ts_label type, string = '', options = {}, &block`

```haml
= ts_label :info, 'More info...'
```

### Progress

`ts_progress options = {}, &block`

`ts_progress_bar width, options = {}, &block`

```haml
= ts_progress type: 'info' do
  = ts_progress_bar 60

= ts_progress do
  = ts_progress_bar 60, type: 'info'
  = ts_progress_bar 30, type: 'warning'
```

### Thumbnails

`ts_thumbnails options= {}, &block`

`ts_thumbnail size = 2, src, options = {}`

```haml
= ts_thumbnails do
  - pictures.each do |pic|
    ts_thumbnail src: pic.src
```

## More Twitter Bootstrap helpers

Twitter Bootstrap form builders:

* [formtastic-bootstrap](https://github.com/mjbellantoni/formtastic-bootstrap)
* [simple_form-bootstrap](git://github.com/rafaelfranca/simple_form-bootstrap.git)
* [twitter_bootstrap_form_for](https://github.com/stouset/twitter_bootstrap_form_for)
* [bootstrap_forms](https://github.com/sethvargo/bootstrap_forms)

Other View helpers

* [bootstrap-helper](https://github.com/xdite/bootstrap-helper)
* [font_awesome-sass-rails](https://github.com/kristianmandrup/font_awesome-sass-rails)
* [twitter-bootstrap-typeahead](https://github.com/tcrosen/twitter-bootstrap-typeahead)

Typeahead - See: https://github.com/tcrosen/twitter-bootstrap-typeahead/tree/2.0

## Cool extras

* [bootswatch](https://github.com/thomaspark/bootswatch)

See examples at [bootswatch.com](http://bootswatch.com/)

Many more gems and tools for TS with Rails out there... seek and you will find ;)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
