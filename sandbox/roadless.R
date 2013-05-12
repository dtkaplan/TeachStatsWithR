require(mosaic)
getLocation = function(counter) {
  googleMap(myroadless[counter,"latitude"], myroadless[counter,"longitude"],
            mark=TRUE, maptype="terrain", radius=1, browse=TRUE)
}
nsamp = 20
long = -runif(nsamp, min=65, max=125)  # approximate location of continental US
lat = runif(nsamp,min=25, max=50) # approximate location of continental US
myroadless = data.frame(sample=1:nsamp, latitude=round(lat, 4),longitude=round(long, 4),
  withincontinent=c(rep(NA, nsamp)),within1mile=c(rep(NA, nsamp)),
  location=character(nsamp),notes=character(nsamp))
myroadless
