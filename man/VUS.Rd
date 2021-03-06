% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/VUS.R
\name{VUS}
\alias{VUS}
\title{Volume under the ROC surface}
\usage{
VUS(y, fx)
}
\arguments{
\item{y}{a vector of realized categories.}

\item{fx}{a vector of predicted values of the ranking function f.}
}
\value{
The implemented algorithm is based on Waegeman, De Baets and Boullart (2008). A list of length two is returned, containing the following components:
\item{val}{volume under the ROC surface} 
\item{count}{counts the number of observations falling into each category}
}
\description{
This function computes the volume under the ROC surface (VUS) for a vector of realisations \code{y} (i.e. realised categories) and a vector of predictions \code{fx} (i.e. values of the a ranking function f) for the purpose of assessing the discrimiatory power in a multi-class classification problem. This is achieved by counting the number of r-tuples that are correctly ranked by the ranking function f. Thereby, r is the number of classes of the response variable \code{y}.
}
\examples{
VUS(rep(1:5,each=3),c(3,3,3,rep(2:5,each=3)))
}
\references{
Waegeman W., De Baets B., Boullart L., 2008. On the scalability of ordered multi-class ROC analysis. Computational Statistics & Data Analysis 52, 3371-3388.
}
