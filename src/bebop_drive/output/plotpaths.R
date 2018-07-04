library(tidyverse)
library(rgl)

setwd("/home/nb950/catkin_ws/src/bebop_drive/output/")

angle <- 10;

angle <- angle * pi/180;
functionoutput <- read_csv("functionoutput.csv")


get_colors <- function(groups, group.col = palette()){
  groups <- as.factor(groups)
  ngrps <- length(levels(groups))
  if(ngrps > length(group.col)) 
    group.col <- rep(group.col, ngrps)
  color <- group.col[as.numeric(groups)]
  names(color) <- as.vector(groups)
  return(color)
}
A = matrix(
  c(1.0, 0.0, 0.0, 0.0, cos(angle), -sin(angle),0.0, sin(angle), cos(angle)), # the data elements
  nrow=3,              # number of rows
  ncol=3,              # number of columns
  byrow = TRUE)


for (row in 1:nrow(functionoutput)){
  p = matrix(
    c(as.double(functionoutput[row,3]),as.double(functionoutput[row,4]),as.double(functionoutput[row,5])),
    nrow=1,
    ncol=3,
    byrow=FALSE
  )
  r <- p%*%A;
  functionoutput[row,3] = r[,1];
  functionoutput[row,4] = r[,2];
  functionoutput[row,5] = r[,3];
}


rgl_init <- function(new.device = FALSE, bg = "white", width = 640) { 
  if( new.device | rgl.cur() == 0 ) {
    rgl.open()
    par3d(windowRect = 50 + c( 0, 0, width, width ) )
    rgl.bg(color = bg )
  }
  rgl.clear(type = c("shapes", "bboxdeco"))
  rgl.viewpoint(theta = 15, phi = 20, zoom = 0.7)
}

rgl_init()
x <- functionoutput$x
y <- functionoutput$y
z <- functionoutput$z
t <- functionoutput$t
type <- functionoutput$type
rgl.spheres(x, y, z, r = 3, color = get_colors(type))  
rgl.lines(c(min(x), max(x)), c(0, 0), c(0, 0), color = "black")
rgl.lines(c(0, 0), c(min(y),max(y)), c(0, 0), color = "red")
rgl.lines(c(0, 0), c(0, 0), c(min(z),max(z)), color = "green")


l = min(nrow(functionoutput %>% filter(type == "predicted")),nrow(functionoutput %>% filter(type == "actual")))

pre <- functionoutput %>% filter(type == "predicted")
act <- functionoutput %>% filter(type == "actual")

xs <- c()
ys <- c()
zs <- c()
ts <- c()
for (i in 1:l){
  lines3d(c(pre[i, 3],act[i,3]), c(pre[i, 4],act[i,4]), c(pre[i, 5],act[i,5]), col = "red", lwd = 2)
  xs <- c(xs,(pre[i, 3]+act[i,3])/2 )
  ys <- c(ys,(pre[i, 4]+act[i,4])/2 - 3)
  zs <- c(zs,(pre[i, 5]+act[i,5])/2 )
  ts <- c(ts,i)
}

text3d(xs, ys, zs, text=ts,color = "red",  cex=1)

