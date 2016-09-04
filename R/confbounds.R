#' Add Confidence Bounds to Linear Model Plots
#'
#' Draws in confidence line segments based on model objects.
#'
#' @author Mike Vlah, \email{vlahm13@gmail.com}
#' @param model an object containing the results returned by a
#'   model fitting function (e.g., lm or glm).
#' @param xbounds left-right limits on the lines to be drawn.
#' @param level float (0,1); the confidence level, defaults to 0.95.
#' @keywords plotting, 'linear model'
#' @export
#' @examples
#' confbars(mod1, lty=2, col='red')
confbounds <- function(model, xbounds=range(model$model[,2]), level=.95, ...)
{
  confx<-seq(xbounds[1],xbounds[2], length.out=length(model$fitted.values))
  int.vals<-predict(model,newdata=data.frame(confx),interval="confidence",
                    level=level)
  lines(confx,int.vals[,2], ...)
  lines(confx,int.vals[,3], ...)
}
