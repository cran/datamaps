% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opts.R
\name{set_projection}
\alias{set_projection}
\title{Set projection}
\usage{
set_projection(p, fun = htmlwidgets::JS())
}
\arguments{
\item{p}{a datamaps object.}

\item{fun}{a JavaScript function.}
}
\description{
Set projection
}
\note{
Does not work in RStudio viewer, open in browser.
}
\examples{
topo <- paste0("https://rawgit.com/Anujarya300/bubble_maps/",
  "master/data/geography-data/india.topo.json")
  
data <- data.frame(state = c("JH", "MH"), value = c(55, 28))
  
data \%>\% 
  datamaps(scope = "india") \%>\% 
  add_choropleth(state, value) \%>\% 
  config_geo(data.url = topo) \%>\% 
  set_projection(htmlwidgets::JS('
  function (element) {
    var projection = d3.geo.mercator()
    .center([78.9629, 23.5937])
    .scale(1000);
    var path = d3.geo.path().projection(projection);
    return { path: path, projection: projection };
  }
  ')
  )

}
\seealso{
\href{documentation}{https://github.com/Anujarya300/bubble_maps}
}
