## How to install

- Get [ArcGIS](https://www.arcgis.com/index.html) 
- Install [R](https://cran.r-project.org/)
- Follow instructions [here](https://github.com/R-ArcGIS/r-bridge-install) to install R-ArcGIS Bridge



## If you have issues using it on the new versions of ArcGIS Desktop




#### Error 1 "Failed to initialize R interpreter"


In the script I have included all nessary code to install all the packages, but somehow I could not figure it out why it does not start at ArcGIS 10.7.1, when it was working perfectly under ArcGIS 10.3.1. I found similar issues on the [web](https://github.com/R-ArcGIS/r-bridge-install/issues/73). Unfortunately there no proper solution to that. Perphaps the issues is the fact, that package is not ready for new versions of R. There is a temporary solution to that:

##### Install an older version of R (3.6.3) 

	https://cran.r-project.org/bin/windows/base/old/3.6.3/

"Failed to initialize R interpreter" is solved, but there are new issues occuring. Basically you can not install any of the packages on the go using for example   ````if (!requireNamespace("sp", quietly = True))
    install.packages("sp")````


#### Error 2 "there is no package called ‘sp’"


It is not possible to install packages, because you are using an old version of R (3.6.3). The R says that you may need Rtools and you do not have one.

- Install Rtools for R 3.6.3

https://cran.r-project.org/bin/windows/Rtools/Rtools35.exe

[Other versions here](https://cran.r-project.org/bin/windows/Rtools/history.html)


Installing Rtools of course does not solve the issue, but it is nessary to compile older versions of the packages.

#### Install packages manually using RGui

- Install Sp
```` 
install.packages("sp")
````
- Install Spdep
```` 
install.packages("spdep")
```` 
All the version of spdep will be younger, so R will ask you do you want to compile it. Say yes. It will take some time... finally when you will write ````require("spdep")```` it will load "sp", "spdata" and "spdep". 

- Install maptools

All the versions will be younger, so do the same as with Spdep, with all the following packages

```` 	
install.packages("maptools")
```` 

- Install spatstat

```` 
install.packages("spatstat")
```` 
- there is also another thing linked with maptools called rgeos and gpclib that somehow related to maptools and cause issues

	
```` 
install.packages("rgeos")

install.packages("gpclib")
```` 



### Finally works :)
