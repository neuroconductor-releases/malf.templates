% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/template_images.R
\name{malf_images}
\alias{malf_images}
\alias{malf_template_images}
\alias{malf_template_tissues}
\alias{malf_template_classified}
\alias{malf_template_brains}
\alias{malf_template_masks}
\alias{malf_template_labels}
\title{Get Image Filenames for templates}
\usage{
malf_images(group = c("train", "test"), n_templates = 35)

malf_template_images(...)

malf_template_tissues(...)

malf_template_classified(...)

malf_template_brains(...)

malf_template_masks(...)

malf_template_labels(...)
}
\arguments{
\item{group}{the group of images to return.  If both \code{train} and
\code{test}, all images will be returned.}

\item{n_templates}{Number of template filenames to return}

\item{...}{arguments to pass \code{\link{malf_images}}}
}
\value{
List of filenames
}
\description{
Return a list of filenames for the images
}
