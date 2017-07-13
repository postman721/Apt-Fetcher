# Apt-Fetcher
Apt-Fetcher repository(Bash)

Here is something for all Debian based Linux distribution users. Apt-fetcher is a command line oriented program, which utilizes the apt-get functions found within Debian based distributions.

Without further ado here is a screenshot, which should give a pretty clear vision about the program itself.

![apt-fetcher](https://user-images.githubusercontent.com/29865797/28172109-4545d3bc-67f3-11e7-9f90-5c8cedaad304.png)

How to make everything functional

1. After download make apt-fetcher executable:

chmod +x apt.sh

2. Move apt-fetcher to /usr/share

sudo cp -R apt.sh /usr/share

You can of course put apt-fetcher anywhere you want. If you do use a custom location change all the respawn lines to point to that location. (look for the lines formatted as: sh /usr/share/apt.sh which appear within the selections.)

3. Run the program and enjoy

sh /usr/share/apt.sh

By default apt-fetcher presumes the usage of sudo.  If you have an actual root account you should be just fine using apt-fetcher once you have entered root state with su root

If you have any feedback contact me via Deviantart. Thank you.

Apt-fetcher 0.3 prints installed packages to the /opt/installed_packages.txt file. Apt-fetcher 0.2 prints them to the terminal client.

---------------------------------
Original post is at:
http://www.techtimejourney.net/apt-fetcher-released/
