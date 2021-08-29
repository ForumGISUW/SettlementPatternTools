# Settlement Pattern Tools 

This set of tools was used in PhD thesis to be used directly in ArcGIS 10.3.1 version.

[Buławka, N., 2020.](https://www.researchgate.net/publication/345728606_Bulawka_Nazarij_2020_Osadnictwo_Kultury_Jaz_w_Oazach_Tedzenu_i_Murgabu_w_Turkmenistanie_The_Settlement_of_Yaz_Culture_in_the_Oases_of_Tedjen_and_Murghab_in_Turkmenistan_Rozprawa_Doktorska_Warsaw_Unive) Osadnictwo kultury Jaz w oazach Tedżenu i Murgabu w Turkmenistanie [The settlement of Yaz culture in the oases of Tedjen and Murghab in Turkmenistan]. Rozprawa doktorska. University of Warsaw, Warszawa.



How to install



If you have issues ising it.....




Error 1

"Failed to initialize R interpreter"


In the script I have included nessary code to install all the packages, but somehow I could not figure it out why it does not start. I 

found similar issues on the [web](https://github.com/R-ArcGIS/r-bridge-install/issues/73). Unfortunately there no proper solution to 

that. Perphaps the issues is the fact, that package is not ready for new versions of R

Install and older version of R (3.6.3) then

	https://cran.r-project.org/bin/windows/base/old/3.6.3/

"Failed to initialize R interpreter" is solved, but there are new issues occuring. Basically you can not install any of the packages on 

the go.


Error 2

"there is no package called ‘sp’"


In the script I have included nessary code to install all the packages, but somehow it is not possible to install them using typical 

commands. The R says that you may need Rtools and you do not have one.


- Install Rtools for R 3.6.3

https://cran.r-project.org/bin/windows/Rtools/history.html
	https://cran.r-project.org/bin/windows/Rtools/Rtools35.exe



IStalling Rtools does not solve the issue, but it is nessary to compile older versions of the packages.

3. Install packages manually using RGui

- Install Sp
	install.packages("sp")

- Install Spdep
	install.packages("spdep")
All the version will be younger, so R will ask you do you want to compile it. Say yes. It will take some time... finally when you will 

write "require("spdep")" it will load "sp", "spdata" and "spdep"

- install maptools
	install.packages("maptools")

- there is also another thing linked with maptools called rgeos and gpclib

- install rgeos
	install.packages("rgeos")
- install gpclib
	install.packages("gpclib")

- install spatstat
	install.packages("spatstat")
All the version will be younger, so do the same as with Spdep

Finally works :)


