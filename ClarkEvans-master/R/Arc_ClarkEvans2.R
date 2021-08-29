tool_exec <- function(in_params, out_params)
{
  Data1 = NULL
  Data2 = NULL

  # Install packages on te go
  
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
  print("Libraries: OK")
  
  ##Declaring the inputs and Output
  input_feature = in_params[[1]]
  output_feature1 = out_params[[1]]
  print("The input and output params: OK")


  ## Open the data

  Data1 = arc.open(input_feature)
  print("Data: Step 1: OK")
  Data1a = arc.select(Data1)
  print("Data: Step 1a: OK")
  Data2a = arc.data2sp(Data1a)
  print("Data: Step 2a: OK")
  Data2 = as.ppp(Data2a)
  print("Data: Step 2: OK")
  Boxing <- convexhull(Data2)
  print("Convexhull: OK")

  arc.progress_label("Loading Dataset")
  
  ## Performing Clark and Evans 1954 test

  out_params <- clarkevans(Data2, correction=c("all"), clipregion=Boxing)
  print("Procedure: OK")

  print(out_params)
  return(out_params)
}
