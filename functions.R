#A lot of these functions are from https://www.datacamp.com/community/tutorials/r-web-scraping-rvest

read_page_names <- function(url, css_selector){
  page <- read_html(url)
  page_nodes <- html_nodes(page, css_selector)
  page_text <- html_text(page_nodes)
  page_text
}
