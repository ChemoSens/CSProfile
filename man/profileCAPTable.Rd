% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/profileCAPTable.R
\name{profileCAPTable}
\alias{profileCAPTable}
\title{CAPTable}
\usage{
profileCAPTable(
  profileObject,
  model = "MAM",
  panelLimit = 0.05,
  indivLimit = 0.05,
  output = "CAPTable",
  correction = FALSE,
  correlationTest = "Kendall",
  indivRepLimCap = 0.01,
  indivAgLimCap = 0.2,
  repInIndModel = FALSE,
  negativeCorrection = TRUE,
  correctOnlyIfSignificant = FALSE
)
}
\arguments{
\item{profileObject}{resulted from \link{profileReadData}}

\item{model}{character. "TwoWayANOVA" or "MAM": model of performance tests. "TwoWayANOVA" refers to the first Schlich CAP table available on the SensoBase (www.sensobase.fr) and does not take the scaling into account."MAM" refers to the MAM-CAP table, using the performances tests of Mixed Assessor Model (2013)}

\item{panelLimit}{limit of the statistical tests concerning panel performances}

\item{indivLimit}{limit of the statistical tests concerning individual performances. When the chosen model is CAP, limitIndiv is only the limit of discrimination tests (Kendall agreement test limit = 0.2 and repeatability test= 0.01)}

\item{output}{the name of the html file is created in the current working directory}

\item{correction}{logical. If TRUE, limitIndiv is divided by the number of panelists}

\item{correlationTest}{if model=='CAP', test for the agreement between panelists 'kendall' by default, but can also be "spearman" or "pearson". See cor.test}

\item{indivRepLimCap}{if model =='CAP', limit for significance in repeatability tests. 0.01 by default}

\item{indivAgLimCap}{if model =='CAP', limit for significance in disagreement tests. 0.2 by default}

\item{repInIndModel}{if model =='CAP', repInIndModel indicates whether the replicate should be included in the individual model (using the model 'TwoWayAdditiveBySubject'). Default to FALSE (using the model 'OneWayBySubject')}

\item{negativeCorrection}{if TRUE, if model =="MAMCAP", negative scaling are NOT considered}

\item{correctOnlyIfSignificant}{if TRUE, only the attributes significant are corrected}
}
\description{
This function build an html file (CAPTable.html) containing a panel and panelist performance table (CAP or MAM-CAP table) in current working directory.
}
\examples{
data(cheeses)
profileCAPTable(cheeses)
profileCAPTable(cheeses,model="CAP")
}
\references{
Brockhoff P. , Schlich P.; Skovgaard I, Taking individual scaling differences into account by analyzing profile data with the Mixed Assessor Model. (submitted in Food Quality and Preferences in July 2013)
Peltier C., Brockhoff, P., Visalli, M., Schlich, P. The MAM-CAP table: a new tool to monitor panel performances. (accepted in Food Quality and Preferences in July 2013)
}
