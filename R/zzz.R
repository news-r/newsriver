.onAttach <- function(libname = find.package("newsriver"), pkgname = "newsriver") {

  key <- Sys.getenv("NEWSRIVER_API_KEY")

  msg <- "No API key found, see `newsriver_key`"
  if(nchar(key) > 1) msg <- "API key loaded!"

  packageStartupMessage(msg)

}