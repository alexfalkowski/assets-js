#asset-js

A client side version of the [Asset Pipeline](http://guides.rubyonrails.org/asset_pipeline.html)

## Purpose

Rails has introduced a great concept of the Asset Pipeline. However we can't access it's magic through CoffeeScript or JavaScript

## Prerequisites

To include this library all you need to do is add to your application.coffee (or js)

    #= require assets

### Usage

The usage is quite simple all you need to do is in your CoffeeScript or JavaScript:

    Assets.path('logo.png')

Which would return:

    /assets/logo.png or /assets/logo-3642b05563457e20711ce6dc5f5fe8da.png
