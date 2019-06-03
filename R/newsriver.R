BASE_URL <- "https://api.newsriver.io"

#' Setup
#' 
#' Setup API key to be used for subsequent calls.
#' 
#' @param key Your API key, freely available at \url{https://newsriver.io}.
#' 
#' @note You can specify \code{NEWSRIVER_API_KEY} as environment variable, 
#' likely in your \code{.Renviron} file.
#' 
#' @examples
#' \dontrun{
#' newsriver_key("xXXxxXxXxXxx")
#' }
#' 
#' @import assertthat
#' @import httr
#' @export
newsriver_key <- function(key) {
  assert_that(!missing(key), msg = "Missing key")
  Sys.setenv("NEWSRIVER_API_KEY" = key)
}

# get key
.get_key <- function() {
  key <- Sys.getenv("NEWSRIVER_API_KEY")
  assert_that(nchar(key) > 1, msg = "Missing key")
  return(key)
}

.get_header <- function(){
  key <- .get_key()
  add_headers("Authorization" = key)
}

#' Search
#' 
#' Search for articles.
#' 
#' @param q Your search query, i.e.: \code{text:(Barack AND Obama)}, more details \url{https://console.newsriver.io/code-book}.
#' @param sort_by How should the search result be sorted. By default, articles are sorted by date in descending order (newest items first). 
#' @param sort_order Sort order can be either \code{ASC} (ascending) or \code{DESC} (descending). The sort order is ignored if the search is sorted by (\code{sort_by}) \code{_score}.
#' @param results Number of results to return
#' 
#' @section Sort:
#' Articles can be sorted by: 
#' \itemize{
#'   \item{\code{_score} - the search matching score (most relevant items first).}
#'   \item{\code{discoverDate} - When the article has been first found online (typically close to publication date).}
#'   \item{\code{metadata.readTime.seconds} - Article's reading time.}  
#' }
#' Other metadata fields can be used for sorting, but search performance 
#' may be affected as only the fields mentioned above are currently indexed for sorting.
#' 
#' @examples
#' \dontrun{
#' newsriver_key("xXXxxXxXxXxx")
#' articles <- nr_search('language:en AND title:"New York"')
#' }
#' 
#' @export
nr_search <- function(q, sort_by = NULL, sort_order  = NULL, results = 100){
  assert_that(!missing(q), msg = "Missing q")
  assert_that(results <= 100 && results > 0)
  url <- parse_url(BASE_URL)
  url$path <- c("v2", "search")
  url$query <- list(query = q, sortBy = sort_by, sortOrder = sort_order, limit = results) 
  url <- build_url(url)
  
  response <- GET(url, .get_header())
  stop_for_status(response)
  content <- content(response)
  cat(crayon::blue(cli::symbol$info), length(content), "results returned\n")
  
  return(content)
}