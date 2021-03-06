% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mxnet_generated.R
\name{mx.symbol.rcbrt}
\alias{mx.symbol.rcbrt}
\title{rcbrt:Returns element-wise inverse cube-root value of the input.}
\usage{
mx.symbol.rcbrt(...)
}
\arguments{
\item{data}{NDArray-or-Symbol
The input array.}

\item{name}{string, optional
Name of the resulting symbol.}
}
\value{
out The result mx.symbol
}
\description{
.. math::
   rcbrt(x) = 1/\sqrt[3]{x}
}
\details{
Example::

rcbrt([1,8,-125]) = [1.0, 0.5, -0.2]



Defined in src/operator/tensor/elemwise_unary_op_basic.cc:L898
}

