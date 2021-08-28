tool_exec <- function(in_params, out_params)
{
  Data1 = NULL
  Data1a = NULL
  Data2a = NULL
  Data2 = NULL 
  input_feature = NULL 
  output_feature1 = NULL 
  
  #rm(list=ls())
  
  if (!requireNamespace("sp", quietly = T))
    install.packages("sp")
  if (!requireNamespace("spatstat",quietly = T))
    install.packages("spatstat")
  if (!requireNamespace("maptools",quietly = T))
    install.packages("maptools")
  if (!requireNamespace("spdep",quietly = T))
    install.packages("spdep")
  if (!requireNamespace("arcgisbinding",quietly = T))
    install.packages("arcgisbinding")
  
  require(sp)
  require(spatstat) 
  require(maptools)
  require(spdep)
  require(arcgisbinding)

  #print("libraries ok")
  
  ##Declaring the inputs and Output
  input_feature = in_params[[1]]
  #input_boundary = in_params[[2]]
  #Method = in_params[[2]]
  #MC = in_params[[3]]
  output_feature1 = out_params[[1]]
  #output_feature2 = out_params[[2]]
  #print("input and output params ok")
  
  # na razie nie ogarn¹³em jak te dane dobrze wydostaæ R. Akapit ##Declaring the inputs and Output jest domyœlny
  
  #open the data
  #Data1 <- readShapeSpatial("D:/GIS/Margiana/rethemurghabdelta/WektorAnalizy/MurgabYazI_1selection.shp")
  
  #Data1 <- readShapeSpatial(input_feature)
  #Data2 <- as.ppp(Data1)
  Data1 = arc.open(input_feature)
  #print("Data 1 ok")
  Data1a = arc.select(Data1)
  #print("Data 1a ok")
  Data2a = arc.data2sp(Data1a)
  #print("Data 2a ok")
  Data2 = as.ppp(Data2a)
  #print("Data 2 :) ok")
  #Boxing <- convexhull(Data2)
  #print("Boxing ok")
  # Wyswietla, ze cos robi
  #arc.progress_label("Loading Dataset")
  # czas na test Clark and Evans 1954
  #test <- clarkevans.test(Data2, correction="none", clipregion=Boxing, alternative=c(Method), nsim=MC)
  out_params <- hopskel(Data2)
  #print("test ok")
  #test <- clarkevans.test(Data2, correction="none", clipregion=NULL, alternative=c(Regular"), nsim=MC)test
  #test2 <- hopskel.test(y1, alternative=c("clustered"), method=c("MonteCarlo"), nsim=999)
  #test2
  print(out_params)
  return(out_params)
}