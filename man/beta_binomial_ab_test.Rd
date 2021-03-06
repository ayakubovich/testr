% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/beta_binomial_ab_test.R
\name{beta_binomial_ab_test}
\alias{beta_binomial_ab_test}
\title{Run a Beta Binomial A/B Test}
\usage{
beta_binomial_ab_test(y, n, alpha0 = 1, beta0 = 1, tolerance = 0.001,
  nsim = 1e+05, conf.level = 0.1, expected_conversion_rate = NULL,
  groups = LETTERS[1:length(y)])
}
\arguments{
\item{y}{vector of counts of successes (i.e. number of converted users
across the groups)}

\item{n}{vector of counts of trials (i.e number of total users)}

\item{alpha0}{first shape parameter for beta prior. Increasing alpha0
reduces uncertainty about \code{expected_conversion_rate}.}

\item{beta0}{second shape parameter for beta prior. Ignored if
\code{expected_conversion_rate} is given.}

\item{tolerance}{smallest difference we care about}

\item{nsim}{number of monte carlo samples}

\item{conf.level}{specifies alpha for (1-alpha)*100\% credible intervals}

\item{expected_conversion_rate}{before seeing the data, what is is the most
likely conversion rate (i.e. mode of the beta prior)? From 0 to 1.}

\item{groups}{A character vector of group labels. Defaults to "A", "B", ...}
}
\value{
object of class beta_binomial_ab_test
}
\description{
Perform bayesian analysis of an experiment with a binary response variable.
  The experiment is modelled with a binomial likelihood and a beta prior.
  The beta is parameterized either with two shape parameters {alpha0, beta0}
  or with one shape parameter alpha0 and the \code{expected_conversion_rate}
  (mode of the beta prior).
}
\examples{
  beta_binomial_ab_test(y = c(100,120), n = c(1000, 999),
                        expected_conversion_rate = 0.1, alpha0 = 0.1)
}
\references{
\url{http://engineering.richrelevance.com/bayesian-ab-tests} for
  derivation of the model

\url{http://ayakubovich.github.io/bayes.pdf} for a
  parameterization fo the model in terms of expected conversion rate
}
\seealso{
\code{\link{plot.beta_binomial_ab_test}} to plot the marginal
  posteriors

\code{\link{plot_conversion_prior}} to plot the beta prior given
  its parameters

\code{\link{lognormal_ab_test}} to run an A/B test with a
  Lognormal model (i.e. for testing revenue)
}

