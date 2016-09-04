#' Die Roller
#'
#' Roll any number of dice any number of times apiece
#'
#' @author Mike Vlah, \email{vlahm13@gmail.com}
#' @param sides_vec vector where each element is a number of sides of a die
#' @param  rolls_vec vector of times to roll each corresponding die
#' @keywords probability
#' @return returns a list of vectors containing roll results for each die shape
#' @export
#' @examples
#' roller(c(6,12,20), 1:3)
#'
#' $`6-sided`
#' [1] 5
#'
#' $`12-sided`
#' [1] 12 11
#'
#' $`20-sided`
#' [1]  3 18 20
roller<-function(sides_vec, rolls_vec){
    results <- list()
    for(die in 1:length(sides_vec)){
        results[[die]] <- sample(1:sides_vec[die], rolls_vec[die], 
                                 replace=TRUE)
        names(results)[die] <- paste0(sides_vec[die], '-sided')
    }
    return(results)
}
