addStar = function(x,y,x0=NULL,x1=NULL,y0=NULL,y1=NULL,type="x"){
  
  for(i in 1:length(x)){
    
    if(type=="x"){ segments(x0=x0[i],x1=x1[i],y0=y[i],y1=y[i]) } # x error
    if(type=="y"){ segments(x0=x[i],x1=x[i],y0=y0[i],y1=y1[i]) } # y error
    
    }

  }