% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mxnet_generated.R
\name{mx.io.ImageRecordUInt8Iter}
\alias{mx.io.ImageRecordUInt8Iter}
\title{Iterating on image RecordIO files}
\usage{
mx.io.ImageRecordUInt8Iter(...)
}
\arguments{
\item{path.imglist}{string, optional, default=''
Path to the image list (.lst) file. Generally created with tools/im2rec.py. Format (Tab separated): <index of record>    <one or more labels>    <relative path from root folder>.}

\item{path.imgrec}{string, optional, default=''
Path to the image RecordIO (.rec) file or a directory path. Created with tools/im2rec.py.}

\item{path.imgidx}{string, optional, default=''
Path to the image RecordIO index (.idx) file. Created with tools/im2rec.py.}

\item{aug.seq}{string, optional, default='aug_default'
The augmenter names to represent sequence of augmenters to be applied, seperated by comma. Additional keyword parameters will be seen by these augmenters.}

\item{label.width}{int, optional, default='1'
The number of labels per image.}

\item{data.shape}{Shape(tuple), required
The shape of one output image in (channels, height, width) format.}

\item{preprocess.threads}{int, optional, default='4'
The number of threads to do preprocessing.}

\item{verbose}{boolean, optional, default=1
If or not output verbose information.}

\item{num.parts}{int, optional, default='1'
Virtually partition the data into these many parts.}

\item{part.index}{int, optional, default='0'
The *i*-th virtual partition to be read.}

\item{shuffle.chunk.size}{, optional, default=0
The data shuffle buffer size in MB. Only valid if shuffle is true.}

\item{shuffle.chunk.seed}{int, optional, default='0'
The random seed for shuffling}

\item{shuffle}{boolean, optional, default=0
Whether to shuffle data randomly or not.}

\item{seed}{int, optional, default='0'
The random seed.}

\item{batch.size}{int (non-negative), required
Batch size.}

\item{round.batch}{boolean, optional, default=1
Whether to use round robin to handle overflow batch or not.}

\item{prefetch.buffer}{, optional, default=4
Maximum number of batches to prefetch.}

\item{dtype}{{None, 'float16', 'float32', 'float64', 'int32', 'int64', 'uint8'},optional, default='None'
Output data type. ``None`` means no change.}

\item{resize}{int, optional, default='-1'
Down scale the shorter edge to a new size  before applying other augmentations.}

\item{rand.crop}{boolean, optional, default=0
If or not randomly crop the image}

\item{random.resized.crop}{boolean, optional, default=0
If or not perform random resized cropping on the image, as a standard preprocessing for resnet training on ImageNet data.}

\item{max.rotate.angle}{int, optional, default='0'
Rotate by a random degree in ``[-v, v]``}

\item{max.aspect.ratio}{float, optional, default=0
Change the aspect (namely width/height) to a random value. If min_aspect_ratio is None then the aspect ratio ins sampled from [1 - max_aspect_ratio, 1 + max_aspect_ratio], else it is in ``[min_aspect_ratio, max_aspect_ratio]``}

\item{min.aspect.ratio}{float or None, optional, default=None
Change the aspect (namely width/height) to a random value in ``[min_aspect_ratio, max_aspect_ratio]``}

\item{max.shear.ratio}{float, optional, default=0
Apply a shear transformation (namely ``(x,y)->(x+my,y)``) with ``m`` randomly chose from ``[-max_shear_ratio, max_shear_ratio]``}

\item{max.crop.size}{int, optional, default='-1'
Crop both width and height into a random size in ``[min_crop_size, max_crop_size].``Ignored if ``random_resized_crop`` is True.}

\item{min.crop.size}{int, optional, default='-1'
Crop both width and height into a random size in ``[min_crop_size, max_crop_size].``Ignored if ``random_resized_crop`` is True.}

\item{max.random.scale}{float, optional, default=1
Resize into ``[width*s, height*s]`` with ``s`` randomly chosen from ``[min_random_scale, max_random_scale]``. Ignored if ``random_resized_crop`` is True.}

\item{min.random.scale}{float, optional, default=1
Resize into ``[width*s, height*s]`` with ``s`` randomly chosen from ``[min_random_scale, max_random_scale]``Ignored if ``random_resized_crop`` is True.}

\item{max.random.area}{float, optional, default=1
Change the area (namely width * height) to a random value in ``[min_random_area, max_random_area]``. Ignored if ``random_resized_crop`` is False.}

\item{min.random.area}{float, optional, default=1
Change the area (namely width * height) to a random value in ``[min_random_area, max_random_area]``. Ignored if ``random_resized_crop`` is False.}

\item{max.img.size}{float, optional, default=1e+10
Set the maximal width and height after all resize and rotate argumentation  are applied}

\item{min.img.size}{float, optional, default=0
Set the minimal width and height after all resize and rotate argumentation  are applied}

\item{brightness}{float, optional, default=0
Add a random value in ``[-brightness, brightness]`` to the brightness of image.}

\item{contrast}{float, optional, default=0
Add a random value in ``[-contrast, contrast]`` to the contrast of image.}

\item{saturation}{float, optional, default=0
Add a random value in ``[-saturation, saturation]`` to the saturation of image.}

\item{pca.noise}{float, optional, default=0
Add PCA based noise to the image.}

\item{random.h}{int, optional, default='0'
Add a random value in ``[-random_h, random_h]`` to the H channel in HSL color space.}

\item{random.s}{int, optional, default='0'
Add a random value in ``[-random_s, random_s]`` to the S channel in HSL color space.}

\item{random.l}{int, optional, default='0'
Add a random value in ``[-random_l, random_l]`` to the L channel in HSL color space.}

\item{rotate}{int, optional, default='-1'
Rotate by an angle. If set, it overwrites the ``max_rotate_angle`` option.}

\item{fill.value}{int, optional, default='255'
Set the padding pixels value to ``fill_value``.}

\item{data.shape}{Shape(tuple), required
The shape of a output image.}

\item{inter.method}{int, optional, default='1'
The interpolation method: 0-NN 1-bilinear 2-cubic 3-area 4-lanczos4 9-auto 10-rand.}

\item{pad}{int, optional, default='0'
Change size from ``[width, height]`` into ``[pad + width + pad, pad + height + pad]`` by padding pixes}

\item{seed.aug}{int or None, optional, default='None'
Random seed for augmentations.}
}
\value{
iter The result mx.dataiter
}
\description{
This iterator is identical to ``ImageRecordIter`` except for using ``uint8`` as
the data type instead of ``float``.
}
\details{
Defined in src/io/iter_image_recordio_2.cc:L777
}

