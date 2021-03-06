
###Mean-Centering $B$K$h$j!"(BBatch$B:9$rJd@5$9$k%9%/%j%W%H(B
###$BCm0UE@(B $BJd@5$r9T$C$F$bNI$$$+$I$&$+8!>Z$7$F$$$k$+MW3NG'(B
###$BK\%9%/%j%W%H$G$O!"Jd@5$N$_$r9T$$$^$9!#(B


### pamr Library$B$r%$%s%9%H!<%k$7$F$*$/(B
library("pamr")

#### $BF~NO$NH/8=CM%^%H%j%C%/%9!!(B $B9T(B:$B0dEA;R(B or Probe  $BNs(B:$B%5%s%W%k(B
### $BE,59(B input.tab$B$N=j$rJT=8(B 
exprsFile <- "input.tab"
exprs <- as.matrix(read.table (exprsFile, header=TRUE , sep="\t", row.names=1,as.is=TRUE))


### $B%5%s%W%k$4$H$N>pJs(B($B<B83F|!"(BClass$B$N>pJs(B)
### $B%?%V6h@Z$j$N%^%H%j%C%/%9$r:n@.$9$k$3$H!#$b$7$/$O(Bsep="\t"$B$N$H$3$m$rJQ99(B
pDataFile <- "./pData.txt"
pData <- read.table(pDataFile,row.names=1,header=TRUE,sep="\t")




batch = pData$ExpDay
mydata <- list(x=exprs,y=factor(pData$Class),batchlabels=factor(batch))
###

mydata_mod = pamr.batchadjust(mydata)

### output~ $B$H$$$&L>A0$GJd@58e$N%^%H%j%C%/%9$r=PNO(B
### $BE,59(B output_meanCentering.txt $B$N=j$rJT=8(B  
write.table(mydata_mod$x,"output_meanCentering.txt",sep="\t",quote=FALSE,col.names=NA)

