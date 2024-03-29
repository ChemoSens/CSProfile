% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/profileFlashTable.R
\name{profileFlashTable}
\alias{profileFlashTable}
\title{profileFlashTable}
\usage{
profileFlashTable(
  profileObject,
  classificationMethod = "Complete",
  explainedVariance = 0.5,
  alphaContrast = 0.1,
  similarity = "Pearson",
  fileName = "FlashTable",
  show = "",
  contrastOption = "GMean",
  contrastProduct = NULL
)
}
\arguments{
\item{profileObject}{profile object from \link{profileReadData}}

\item{classificationMethod}{default to"Complete", could also be any method available in the method of hclust ward.D", "ward.D2", "single", "complete", "average" (= UPGMA), "mcquitty" (= WPGMA), "median" (= WPGMC) or "centroid" (= UPGMC).}

\item{explainedVariance}{default to 0.5. Percentage of variance to be explained.}

\item{alphaContrast}{default to 0.1. Limit for significance of the contrast tests}

\item{similarity}{default to "Pearson". Can also be 'Spearman' or 'Kendall'}

\item{fileName}{default to "Flash table"}

\item{show}{"" by default, can also contain "Colors" or "NonSignificantDifferentMeans"}

\item{contrastOption}{default to "GMean". Can also be "Product". In this case, the name of the product should be entered in contrastProduct parameter.}

\item{contrastProduct}{default to NULL. When contrastOption=="Product", should be the name of a product (character)}
}
\description{
Return the flash table of the profileObject
}
\examples{
data(cheeses)
profileFlashTable(cheeses)
}
