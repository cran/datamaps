% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opts.R
\name{config_arcs}
\alias{config_arcs}
\title{Configure arcs}
\usage{
config_arcs(p, stroke.color = "#DD1C77", stroke.width = 1,
  arc.sharpness = 1, animation.speed = 600, popup.on.hover = FALSE, ...)
}
\arguments{
\item{p}{a datamaps object.}

\item{stroke.color}{arc colors.}

\item{stroke.width}{arc width.}

\item{arc.sharpness}{arc sharpness.}

\item{animation.speed}{arc draw speed in milliseconds.}

\item{popup.on.hover}{whether to show tooltip.}

\item{...}{any additional options.}
}
\description{
Define options of the arcs.
}
\examples{
edges <- data.frame(origin = c("USA", "FRA", "BGD", "ETH", "KHM",
                               "GRD", "FJI", "GNB", "AUT", "YEM"),
    target = c("BRA", "USA", "URY", "ZAF", "SAU", "SVK", "RWA", "SWE",
               "TUV", "ZWE"))

edges \%>\%
    datamaps() \%>\%
    add_arcs_name(origin, target) \%>\%
    config_arcs(stroke.color = "blue", stroke.width = 2, arc.sharpness = 1.5,
                animation.speed = 1000)

}
