tool_exec <- function(in_params, out_params)
{
  Data1 = NULL
  Data1a = NULL
  Data2a = NULL
  Data2 = NULL 
  out = 0.0
  out2 = 0.0
  input_feature = NULL 
  output_feature1 = NULL 
  
    # Install packages on the go
  
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
  
  ## Initialize libraries
  
  require(sp)
  require(spatstat) 
  require(maptools)
  require(spdep)
  require(arcgisbinding)
  arc.check_product()
  
  #print("Libraries: OK")
  
  ##Declaring the inputs and Output
  input_feature = in_params[[1]]
  output_feature1 = out_params[[1]]
  #print("The input and output params: OK")
  
  Data1 = arc.open(input_feature)
  #print("Data: Step 1: OK")
  Data1a = arc.select(Data1)
  #print("Data: Step 1a: OK")
  Data2a = arc.data2sp(Data1a)
  #print("Data: Step 2a: OK")
  Data2 = as.ppp(Data2a)
  #print("Data: Step 1: OK")
  
  arc.progress_label("Loading Dataset")
  print("Running 999 interations of Hopkins and Skellam 1954 test")
  ## Performing Hopkins and Skellam 1954 test
  for(i in 1:999) {
    out[i] <- hopskel(Data2)
    #print(out[i])
  }
  out_params <- mean(out)
  out2 <- sd(out)
  print(paste("Mean of 999 iterations:",out_params))
  print(paste("Stantard deviation of 999 iterations:",out2))
  print(out_params)
  print(out2)
}
