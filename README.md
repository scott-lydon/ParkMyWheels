# ParkMyWheels
An iOS app that shows SF Public Motorcycle Parking on a map

# Notes
- This app was coded with a highly modular style which I currently favor, because navigating the project only requires toggling the up and down arrows, and because there are fewer distractions on a view the code is very easy to understand.  

- I am 100% open to trying different ways of styling code and willing to adapt my style guide to the needs of my company. 

- The file structure: Lets say functionA contains functionB, and functionC.  The convention will be: FunctionA.swift, followed by a folder: FunctionA, with contents FunctionB.swift, and FunctionC.swift. 

- As a general rule I attempt to have all individual functions and blocks of code shorter than 15 lines each. 


# Cautions
- Running this app on XCode 9 Beta, since it uses the Google Maps pod, creates a threading bug which I have mentioned on [StackOverflow.](https://stackoverflow.com/questions/44767778/main-thread-checker-ui-api-called-on-a-background-thread-uiapplication-appli/45913510#45913510) (handle: ScottyBlades)

- zipping and unzipping this project corrupt the storyboard files likely also because of the Google Maps pod. Cloning and pulling from a repo is preferred. 

# Design Note
- There are two endpoints called for parking spots, one for metered parking, and one for nonmetered parking.  While handling the responses from both endpoints are similar processes.  There are two reasons I decided to keep the handlers as 2 separate lines of execution and not combine them.  
  - The two different endpoints use two different sets of conventions.  For example, metered parking returns a dictionary with the latitude and longitude as values for a key titled: "location", while non metered parking has the otherwise similar key named: "Geom." 
  - Keeping the two functions separate helps avoid race conditions. 
