#' @title Get Image Filenames for templates
#'
#' @description Return a list of filenames for the images
#' @param group the group of images to return.  If both \code{train} and
#' \code{test}, all images will be returned.
#' @param n_templates Number of template filenames to return
#'
#' @return List of filenames
#'
#' @export
malf_images = function(group = c("train", "test"),
                       n_templates = 35){

  df = malf.templates::malf_demographics
  df = df[ df$group %in% group,]
  df = df[ seq(min(nrow(df), n_templates)), ]
  ids = df$id

  fnames = paste0(ids, ".nii.gz")
  labels = paste0(ids, "_glm.nii.gz")
  ss = paste0(ids, "_SS.nii.gz")
  masks = paste0(ids, "_mask.nii.gz")
  tissues = paste0(ids, "_tissues.nii.gz")
  classified = paste0(ids, "_classified.nii.gz")

  L = list(images = fnames,
           labels = labels,
           brains = ss,
           masks = masks,
           tissues = tissues,
           classified = classified)
  L = lapply(L, function(x) {
    fnames = system.file( "extdata", x,
                        package = "malf.templates")
  })
  return(L)
}

#' @rdname malf_images
#' @param ... arguments to pass \code{\link{malf_images}}
#' @export
malf_template_images = function(...) {
  L = malf_images(...)
  return(L$images)
}

#' @rdname malf_images
#' @export
malf_template_tissues = function(...) {
  L = malf_images(...)
  return(L$tissues)
}

#' @rdname malf_images
#' @export
malf_template_classified = function(...) {
  L = malf_images(...)
  return(L$classified)
}

#' @rdname malf_images
#' @export
malf_template_brains = function(...) {
  L = malf_images(...)
  return(L$brains)
}

#' @rdname malf_images
#' @export
malf_template_masks = function(...) {
  L = malf_images(...)
  return(L$masks)
}


#' @rdname malf_images
#' @export
malf_template_labels = function(...) {
  L = malf_images(...)
  return(L$labels)
}

