# ArcGIS ready tools for nearest neighbor analysis in archaeology: Clark & Evans 1954 // Hopkins & Skellam 1954 test

Since [Walter Christaller's](https://www.worldcat.org/title/central-places-in-southern-germany/oclc/635646611&referer=brief_results) work on the central places in Germany, scholars have wondered about the properties and distribution of cities worldwide. That led to a significant scientific direction of studies impacting various disciplines, such as geography, economics, archaeology, and many others ([Central Place Theory](https://www.sciencedirect.com/topics/earth-and-planetary-sciences/central-place-theory)). 


Central Place Theory studies in archaeology resulted in many scientific papers. Some of them emphasized that the ideal spatial arrangement for centres, anticipated in CPT, never occurred in ancient times but should be measured. Therefore, a necessity of comparing the ancient settlement distribution to regular hexagon layout appeared.  

## Clark & Evans 1954 test 

Ph. J. Clark and F. Evans have suggested a measure *R* that enable to compare the point pattern distribution to a regular hexagon, which could be a usefull tool for  studies on [Central Place Theory](https://www.sciencedirect.com/topics/earth-and-planetary-sciences/central-place-theory) in archaeology. The formula for the ratio (R) proposed by Clarke and Evans can be calculated as follows. 

Density (*p*) is the ratio of the number of points (*N*) and the area (*A*) occupied by them: 

![\Large p = \frac{N }{A}](https://latex.codecogs.com/svg.image?p&space;=&space;\frac{N&space;}{A}) 

In that case, the average distance ![\Large \bar{r}_{A}](https://latex.codecogs.com/svg.image?\bar{r}_{A}) is the ratio of the sum of the distances between each point in the data set and its nearest neighbor and the number of points: 

![\Large \bar{r}_{A}=\frac{\sum r}{N}](https://latex.codecogs.com/svg.image?\bar{r}_{A}=\frac{\sum&space;r}{N})

  where *r* is the distance between the point and its closest neighbor. 
  
The average distance between the points and their closest neighbors, provided that the points are distributed randomly ![\Large \bar{r}_{E}](https://latex.codecogs.com/svg.image?\bar{r}_{E}), can be expressed as follows: 

![\Large \bar{r}_{E}=\frac{1}{2\sqrt{p}}](https://latex.codecogs.com/svg.image?\bar{r}_{E}=\frac{1}{2\sqrt{p}})

Then you can use the ratio of the average distance between the analyzed points and the closest neighbors and the average distance in the random distribution as an indicator showing the difference from the random distribution. 

![R=\frac{\bar{r}_{A}}{\bar{r}_{E}}](https://latex.codecogs.com/svg.image?R=\frac{\bar{r}_{A}}{\bar{r}_{E}})

The R index for a distribution where all points will occupy the same place will be 0, and in the case of a random distribution 1, because the observed average distances will be the same as expected. For a regular arrangement in the form of a hexagon (a regular hexagon is the basis of a perfect tassellation), R will be 2.1491 

[Clark, Ph. J., & Evans F. C., 1954.](https://doi.org/10.2307/1931034) “Distance to Nearest Neighbor as a Measure of Spatial Relationships in Populations.” Ecology 35 (4): 445–53.

## Hopkins & Skellam 1954 test 

According to the Hopkins-Skellam test of Complete Spatial Randomness the ratio of the sum of the distances between points and their nearest neighbors (I) and random points and their nearest neighbors (P) will be 1 if these points are also arranged in a random way. The measure that indicates the distribution of points is the index A, which can be expressed as follows:

![\Large A = \frac{\sum p^{2}}{\sum I^{2}}](https://latex.codecogs.com/svg.image?A&space;=&space;\frac{\sum&space;p^{2}}{\sum&space;I^{2}}) 

It must then be calculated and compared to the value of x to the beta distribution with parameters (n, n). The value of x may be calculated by the formula: 

![\Large x = \frac{A}{1 + A}](https://latex.codecogs.com/svg.image?x&space;=&space;\frac{A}{1&space;&plus;&space;A}) 

[Hopkins, B., & Skellam, J. G., 1954.](https://www.jstor.org/stable/42907238 ) A New Method for determining the Type of Distribution of Plant Individuals. Annals of Botany, 18(70), 213–227.

##  


This set of tools was used in PhD thesis [(Buławka, N., 2020)](https://www.researchgate.net/publication/345728606_Bulawka_Nazarij_2020_Osadnictwo_Kultury_Jaz_w_Oazach_Tedzenu_i_Murgabu_w_Turkmenistanie_The_Settlement_of_Yaz_Culture_in_the_Oases_of_Tedjen_and_Murghab_in_Turkmenistan_Rozprawa_Doktorska_Warsaw_Unive)  to be used directly in ArcGIS 10.3.1 version.

The tools uses [Spatstat](https://cran.r-project.org/web/packages/spatstat/index.html) R library 
###
[Buławka, N., 2020.](https://www.researchgate.net/publication/345728606_Bulawka_Nazarij_2020_Osadnictwo_Kultury_Jaz_w_Oazach_Tedzenu_i_Murgabu_w_Turkmenistanie_The_Settlement_of_Yaz_Culture_in_the_Oases_of_Tedjen_and_Murghab_in_Turkmenistan_Rozprawa_Doktorska_Warsaw_Unive) Osadnictwo kultury Jaz w oazach Tedżenu i Murgabu w Turkmenistanie [The settlement of Yaz culture in the oases of Tedjen and Murghab in Turkmenistan]. Rozprawa doktorska. University of Warsaw, Warszawa.


