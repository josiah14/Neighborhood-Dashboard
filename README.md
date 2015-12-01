##Welcome
to the KCNeighborhoodStat app project! We're working  to help neighborhoods help themselves by giving them easy access to useful civic open data.
We're ultimately hoping to develop an app that- by providing easier access to civic open data- lets neighborhood
organization and neighbors:

*  **Better understand their neighborhood through data**
*What is my neighborhood- what are its boundaries? How many people live there? How much crime happens here?*

*  **More easily track development and others projects in their neighborhoods**
*Is a new business opening  down the street? Is a building being torn down?*

*  **Make better decisions as a community**
*Do we have a lot of senior citizens that need help with minor home repair?*

*  **Become more effective advocates for their community**
*We need more police patrols and codes inspections- here's the data*

### Civic data: the opportunity

These days, we're seeing a greater availability of civic open data in cities
across the country- Kansas City included! We believe this trend towards more open data is especially good news for
the neighborhoods that make up the fabric of the city. Rich,up-to-date information about crime, development, and demographics is what neighborhoods need to make better decisions and to advocate for themselves more effectively with government agencies and other organizations.

### Civic data: the problem

Unfortunately, even though the data are out there,  its potential power to help neighborhoods isn’t yet realized.
Accessing civic data might mean hours of wading through spreadsheets, then trying to interpret confusing terminology, or having to go through a website that is not easy to use for the average resident or neighborhood leader.
Meanwhile, civic data is usually not presented at the neighborhood-level geography. Right now, for instance, it’s not possible to see the population of a neighborhood or the number of crimes that have occurred there recently. 

## That’s why we created KCNeighborhoodStat
*We’re making an application that displays relevant civic open data at the neighborhood level.*

To help realize the full potential of this data in benefitting our city’s neighborhoods, we want this tool to be:

* User-friendly/visually appealing
* Customizable (users can select which datapoints to display for a particular neighborhood)
* Capable of displaying data over time (so that users can understand trends, put data in context)

### How it works
Users of the site will be prompted to select a neighborhood on the homepage. This will direct them to a "neighborhood page," 
where they will be able to select a number of datapoints they would like to study. 

Those data would be summarized in simple boxes, like in this example from this [civic data dashboard] (https://dashboard.edmonton.ca/) from the City of Edmonton, Canada’s website. 

Another aspect of Edmonton’s dashboard we plan incorporate in our app is the ability to view data over time. By clicking on one of the data boxes, a detailed explanation of the data would expand and the data would be displayed on a graph. The graph could be standalone, allowing multiple datasets to be added to it, to allow comparison.

Ideally, data with a specific location would be displayed on the page’s neighborhood map.

## Setting Up Your Development Environment

### Creating the virtual environment using Nix
If you look in this repository's root directory, you should see a `default.nix` file.  This file is actually a script which declares all of the system dependencies you need to get up and running for development on this project.  This script can be run through the **Nix Package Manager**. 

#### Installing Nix

To install Nix, run the following command in your Unix shell:
`curl https://nixos.org/nix/install | sh`

You may also need to follow the instructions after the install in order to set up your environment for using Nix.

Once you have Nix installed (you can check by running `which nix-shell`), make sure you take a look at the ~/.nix-channels config file.  Ensure that the following lines exist in that file, or else Nix might not be able to find the dependencies in the `default.nix` script.

```
https://nixos.org/channels/nixos-15.09 nixos-15.09
https://nixos.org/channels/nixos-15.09 nixpkgs
```

Once you have ensured that you have access to the proper channels, getting your system dependencies for development on this project is a matter of a single command:`nix-shell .`

*Note that if you are running on OSX, the first time you run `nix-shell .`, the install will take a while because there are some Linux dependencies that need to be compiled from the C source code that are rather large.  You may want to have other work you could be doing while you wait for the Nix package manager to compile and install your dependencies into the Nix Store.  It would also be a good idea to have your laptop plugged into a power source, since code compilation can be relatively resource intensive.*

If you have other projects running on your system Ruby, I highly encourage you to install your dependencies for this project locally if you choose to use Nix.  To do this, you can run the following commands:

```bash
# install the Ruby Gems dependencies in the Gemfile
bundle install --path vendor/bundle
bundle update

# install the Angular package manager, Bower
npm i bower

# install the front-end JavaScript dependencies using Bower
rake bower:install

# migrate and seed the Rails database
rake db:migrate db:seed

# Then run this to start the server from the gems in your vendor/bundle
bundle exec rails s
```
