% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mxnet_generated.R
\name{mx.nd.scatter.nd}
\alias{mx.nd.scatter.nd}
\title{Scatters data into a new tensor according to indices.}
\arguments{
\item{data}{NDArray-or-Symbol
data}

\item{indices}{NDArray-or-Symbol
indices}

\item{shape}{Shape(tuple), required
Shape of output.}
}
\value{
out The result mx.ndarray
}
\description{
Given `data` with shape `(Y_0, ..., Y_{K-1}, X_M, ..., X_{N-1})` and indices with shape
`(M, Y_0, ..., Y_{K-1})`, the output will have shape `(X_0, X_1, ..., X_{N-1})`,
where `M <= N`. If `M == N`, data shape should simply be `(Y_0, ..., Y_{K-1})`.
}
\details{
The elements in output is defined as follows::

output[indices[0, y_0, ..., y_{K-1}],
         ...,
         indices[M-1, y_0, ..., y_{K-1}],
         x_M, ..., x_{N-1}] = data[y_0, ..., y_{K-1}, x_M, ..., x_{N-1}]

all other entries in output are 0.

.. warning::

If the indices have duplicates, the result will be non-deterministic and
    the gradient of `scatter_nd` will not be correct!!

Examples::

data = [2, 3, 0]
  indices = [[1, 1, 0], [0, 1, 0]]
  shape = (2, 2)
  scatter_nd(data, indices, shape) = [[0, 0], [2, 3]]

data = [[[1, 2], [3, 4]], [[5, 6], [7, 8]]]
  indices = [[0, 1], [1, 1]]
  shape = (2, 2, 2, 2)
  scatter_nd(data, indices, shape) = [[[[0, 0],
                                        [0, 0]],

[[1, 2],
                                        [3, 4]]],

[[[0, 0],
                                        [0, 0]],

[[5, 6],
                                        [7, 8]]]]
}

