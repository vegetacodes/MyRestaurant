## App for restaurant search.

### Scaffolds

    $ rails g scaffold Restaurant name phone deliver rating timings category

    $ rails g scaffold Menu item_id price

    $ rails g scaffold Location restaurant_id street zip city state

    $ rails g scaffold Item name

### Populating the DB
    $ rake import:restaurants
    $ rake import:locations
    $ rake import:menus
    $ rake import:items

### Future Work
* Geo-location API which does show restaurants nearby with a radius
* Gmaps and place the marker on map indicating the location of restaurant
