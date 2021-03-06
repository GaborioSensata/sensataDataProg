% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/translateFactors.R
\name{translateFactors}
\alias{translateFactors}
\title{Function to translate factors from sensata data from one language to another}
\usage{
translateFactors(
  df,
  fromDict,
  toDict,
  questionPrefix = "q_",
  skipQuestionStringFrom,
  skipQuestionStringTo
)
}
\arguments{
\item{fromDict}{dictionary created using dictGenerator.R from which to translate the data.}

\item{questionPrefix}{Character that identifies questions}

\item{skipQuestionStringFrom}{value that represents the skipped questions in original language}

\item{skipQuestionStringTo}{value that represents the skipped questions in target language}

\item{data}{data downloaded from Mongo, cleaned with cleanData.R and scrubbed with scrubData.R}

\item{toDic}{dictionary created using dictGenerator.R to translate the data to.}
}
\value{
Dataframe with questions in format that have been prepared with makeFactor
}
\description{
This function allows you to translate factors with the information from the dictionary to the variables in the microdata, from one language to another.
DO NOT USE for NPS questions that have range different than 0-10. This function erases attributes about sample sizes.
This function requires two dictionaries, one for the original language and another for the language to translate to
}
\examples{
coronaTestData <-makeFactors(data = bogData3, dict = bogExpDic)
}
\author{
Gabriel N. Camargo-Toledo \email{gcamargo@sensata.io}
}
\keyword{data-cleaning}
\keyword{dictionary}
\keyword{factors}
\keyword{microdata}
\keyword{sensata}
