weatherGeeklet
==============

This Geeklet written for GeekTool is meant to display the weather status integrated with the wallpaper.  It includes the weather.sh bash script, an example of the weather.xml file, the cloud_360.png to be placed over the geektool, and four weather status PNG files (clear, partlycloudy, cloudy, and rain), as well as current.png.  I plan to add winter weather, but it hasn't snowed since I started working on this project.  

The while loop, which runs silently and indefinitely once every 1 hour, first pulls information from Wunderground.com and outputs it to an XML file (named weather.xml).

Lines 9 - 15 are involved in changing the weather status icon that is integrated with the background image (in this case behind the cloud).  Line 9 attempts to pul the name for the image file from the <icon> tag in the XML document created on line 8.  Here I am struggling with the regular expressions to assign just the word from between the tags to the variable 'weather' and not the entire string '<icon>cloudy</icon>'.  Line 10 is a manual stand in line to see if the rest of the code would feasibly work if line 9 was also.  Line 11 assigns the variable 'file' to the value of the 'weather' variable with the .png extension.  

Line 12 begins an if loop, where the conditional looks for 'current.png' and if one exists, removes it.  It then copies the value of the 'file' variable to current.png, which is used by the small shell script for the geektool itself, as below:

file://localhost/Users/glynis/Pictures/wallpapers/weatherGeeklet/current.png

