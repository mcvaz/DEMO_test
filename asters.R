asters = function(x){
  if(x<0.05 & x>=0.01)
    {x = "*"} else {
      if(x<0.01 & x>=0.001)
        {x = "**"} else {
          if(x<0.001)
          {x = "***"} else {
              x = ""
            }
          }
    }
  return(x)
  }