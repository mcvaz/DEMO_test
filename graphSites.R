source("asters.R")
graphSites = function(x,y,type="OLS",log="",legat="topleft",jag=1.05,labX="",labY="",title=""){
  if(log==""){logX = function(x){x};logY = function(x){x}}
  if(log=="xy"){logX = function(x){log(x)};logY = function(x){log(x)}}
  if(log=="x"){logX = function(x){log(x)};logY = function(x){x}}
  if(log=="y"){logX = function(x){x};logY = function(x){log(x)}}
  if(type=="OLS"){
    mod = lm(logY(y)~logX(x))
    plot(logY(y)~logX(x),xlab=labX,ylab=labY,pch=16,main=title)
    r2 = round(summary(mod)$adj.r.squared,2)
    pp = asters(summary(mod)$coefficients[2,4])
    if(pp!=""){
      abline(mod,col=2,lwd=2)
      legend(x=legat,legend=paste("R^2 =",r2,pp),bty="n",text.col=2)
      }
    text(x=jag*logX(x),y=jag*logY(y),site,cex=.7)
  }else{
    mod = sma(y~x,log=log)
    plot(y~x,log=log,xlab=labX,ylab=labY,pch=16,main=title)
    r2 = round(mod$r2[[1]],2)
    pp = asters(mod$pval[[1]])
    if(pp!=""){
      abline(mod,col=2,lwd=2)
      legend(x=legat,legend=paste("R^2 =",r2,pp),bty="n",text.col=2)
      }
    text(x=jag*x,y=jag*y,site,cex=.7)  
    }
  }