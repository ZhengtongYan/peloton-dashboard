# Peloton Dashboard
peloton-dashboard.herokuapp.com

## Get started

1. Install [dashing](http://dashing.io/)
2. Clone this project and `bundle install`
3. `dashing start`

## How to create a new widget
Follow the steps [here](https://github.com/Shopify/dashing/wiki/Dashing-Workshop)

1. `dashing generate widget <widget-name>` This will create a folder under widgets with widget-name. It contains three files.
    - Modify `.html` file to structure the widget.
    - Modify `.scss` file to style the widget using [Scss](http://sass-lang.com/). 
    - Modify `.coffee` file to add dynamic UI using [CoffeeScript](http://coffeescript.org/).
2. `dashing generate job <job-name>` This will create a `.rb` file under `jobs` folder which is in charge of pulling the data into the widget.
    - It uses [rufus-scheduler](https://github.com/jmettraux/rufus-scheduler).
    - `config.rb` under jobs contains all constants needed for pulling data from Jenkins, Github and Coverall.

(Dashing uses [batman.js](http://batmanjs.org/) as its MVC framework.)

## How to create a new dashboard
1. `dashing generate dashboard <dashboard-name>`
2. Access it at `http://0.0.0.0:3030/<dashboard-name>`

## Todo
- Github API rate limit exceeded
- Get Peloton specific pull requests

## More useful widgets
- progress bar: https://gist.github.com/mdirienzo/6716905
- sparkline: https://gist.github.com/jorgemorgado/26068a72540619a4d4ec
