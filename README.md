# ParkMyWheels
An iOS app that shows SF Public Motorcycle Parking on a map

# Notes
-This app was coded with a highly modular style which I currently favor, because navigating the project only requires toggling the up and down arrows, and because there are fewer distractions on a view the code is very easy to understand.  

-I am 100% open to trying different ways of styling code and willing to adapt my style guide to the needs of my company. 

-The file structure: Lets say functionA contains functionB, and functionC.  The convention will be: FunctionA.swift, followed by a folder: FunctionA, with contents FunctionB.swift, and FunctionC.swift. 

-As a general rule I attempt to have all individual functions and blocks of code shorter than 15 lines each. 


# Cautions
- Running this app on XCode 9 Beta, since it uses the Google Maps pod, creates a threading bug which I have mentioned on [StackOverflow.](https://stackoverflow.com/questions/44767778/main-thread-checker-ui-api-called-on-a-background-thread-uiapplication-appli/45913510#45913510) (handle: ScottyBlades)

- zipping and unzipping this project corrupt the storyboard files likely also because of the Google Maps pod. Cloning and pulling from a repo is preferred. 

