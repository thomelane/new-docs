% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lr_scheduler.R
\name{mx.lr_scheduler.MultiFactorScheduler}
\alias{mx.lr_scheduler.MultiFactorScheduler}
\title{Multifactor learning rate scheduler. Reduction based on a factor value at different steps.}
\usage{
mx.lr_scheduler.MultiFactorScheduler(step, factor_val, stop_factor_lr = 1e-08,
  verbose = TRUE)
}
\arguments{
\item{step}{(array of integer)
Schedule learning rate after n updates}

\item{factor}{(double)
The factor for reducing the learning rate}
}
\value{
scheduler function
}
\description{
Multifactor learning rate scheduler. Reduction based on a factor value at different steps.
}

