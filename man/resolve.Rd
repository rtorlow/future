% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resolve.R
\name{resolve}
\alias{resolve}
\title{Resolve one or more futures synchronously}
\usage{
resolve(x, idxs = NULL, value = FALSE, recursive = 0, sleep = 1,
  progress = getOption("future.progress", FALSE), ...)
}
\arguments{
\item{x}{a list, an environment, or a list environment holding futures
that should be resolved.  May also be a single \link{Future}.}

\item{idxs}{(optional) integer or logical index specifying the subset of
elements to check.}

\item{value}{If TRUE, the values are retrieved, otherwise not.}

\item{recursive}{A non-negative number specifying how deep of a recursion
should be done.  If TRUE, an infinite recursion is used.  If FALSE or zero,
no recursion is performed.}

\item{sleep}{Number of seconds to wait before checking if futures have been
resolved since last time.}

\item{progress}{If TRUE textual progress summary is outputted.  If a
function, the it is called as \code{progress(done, total)} every time a
future is resolved.}

\item{\dots}{Not used}
}
\value{
Returns \code{x} (regardless of subsetting or not).
}
\description{
This function provides an efficient mechanism for waiting for multiple
futures in a container (e.g. list or environment) to be resolved while in
the meanwhile retrieving values of already resolved futures.
}
\details{
This function is resolves synchronously, i.e. it blocks until \code{x} and
any containing futures are resolved.
}
\seealso{
To resolve a future \emph{variable}, first retrieve its
\link{Future} object using \code{\link{futureOf}()}, e.g.
\code{resolve(futureOf(x))}.
}
