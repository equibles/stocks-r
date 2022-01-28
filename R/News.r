# Stocks
#
# <h3>Authentication</h3>                     You need to authenticate to use this API.                     To authenticate click on the \"Authorize\" button and do one of the following steps.<br />                     1. Send your API key in the headers of the request by typing \"Bearer my-key\" on the Bearer authorization scheme.<br />                     2. Send your API key on the \"ApiKey\" query string parameter. To do this type your API key in the Query String authorization scheme.<br />                     Both methods are equally valid. We offer both options so that you can use the method that is easier to use in your application.<br />                     <br />                     <h3>API limits</h3>                     Your API key may be subject to daily/hourly limits. To know how much requests you have left look at the following headers in the response.<br />                     1. <strong>x-ratelimit-limit</strong> - The total number of requests that you are allowed to make in a given period (hour/day)                       2. <strong>x-ratelimit-remaining</strong> - The number of remaining requests that you can perform in the current period.<br />                     3. <strong>x-ratelimit-reset</strong> - The number of seconds until the current period resets.<br />                     <br />                     <h3>Suggestions</h3>                     You don't need to implement the whole API by hand in your programming language of choice.<br />                     Since this API has an OpenAPI specification you can use                      <a href=\"https://github.com/swagger-api/swagger-codegen\" target=\"_blank\">Swagger Generator</a>                      to automatically generate client stubs for more than 30 programming languages.                     <br />                     <br />                     You don't have an API key? <a href=\"https://www.equibles.com/api/pricing\" target=\"_blank\">Get one for free here.</a>
#
# OpenAPI spec version: v1
# Contact: equibles@gmail.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' News Class
#'
#' @field title 
#' @field ampUrl 
#' @field articleUrl 
#' @field author 
#' @field description 
#' @field imageUrl 
#' @field keywords 
#' @field financialAssets 
#' @field publishedTime 
#' @field publisherName 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
News <- R6::R6Class(
  'News',
  public = list(
    `title` = NULL,
    `ampUrl` = NULL,
    `articleUrl` = NULL,
    `author` = NULL,
    `description` = NULL,
    `imageUrl` = NULL,
    `keywords` = NULL,
    `financialAssets` = NULL,
    `publishedTime` = NULL,
    `publisherName` = NULL,
    initialize = function(`title`, `ampUrl`, `articleUrl`, `author`, `description`, `imageUrl`, `keywords`, `financialAssets`, `publishedTime`, `publisherName`){
      if (!missing(`title`)) {
        stopifnot(is.character(`title`), length(`title`) == 1)
        self$`title` <- `title`
      }
      if (!missing(`ampUrl`)) {
        stopifnot(is.character(`ampUrl`), length(`ampUrl`) == 1)
        self$`ampUrl` <- `ampUrl`
      }
      if (!missing(`articleUrl`)) {
        stopifnot(is.character(`articleUrl`), length(`articleUrl`) == 1)
        self$`articleUrl` <- `articleUrl`
      }
      if (!missing(`author`)) {
        stopifnot(is.character(`author`), length(`author`) == 1)
        self$`author` <- `author`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`imageUrl`)) {
        stopifnot(is.character(`imageUrl`), length(`imageUrl`) == 1)
        self$`imageUrl` <- `imageUrl`
      }
      if (!missing(`keywords`)) {
        stopifnot(is.list(`keywords`), length(`keywords`) != 0)
        lapply(`keywords`, function(x) stopifnot(is.character(x)))
        self$`keywords` <- `keywords`
      }
      if (!missing(`financialAssets`)) {
        stopifnot(is.list(`financialAssets`), length(`financialAssets`) != 0)
        lapply(`financialAssets`, function(x) stopifnot(is.character(x)))
        self$`financialAssets` <- `financialAssets`
      }
      if (!missing(`publishedTime`)) {
        stopifnot(is.character(`publishedTime`), length(`publishedTime`) == 1)
        self$`publishedTime` <- `publishedTime`
      }
      if (!missing(`publisherName`)) {
        stopifnot(is.character(`publisherName`), length(`publisherName`) == 1)
        self$`publisherName` <- `publisherName`
      }
    },
    toJSON = function() {
      NewsObject <- list()
      if (!is.null(self$`title`)) {
        NewsObject[['title']] <- self$`title`
      }
      if (!is.null(self$`ampUrl`)) {
        NewsObject[['ampUrl']] <- self$`ampUrl`
      }
      if (!is.null(self$`articleUrl`)) {
        NewsObject[['articleUrl']] <- self$`articleUrl`
      }
      if (!is.null(self$`author`)) {
        NewsObject[['author']] <- self$`author`
      }
      if (!is.null(self$`description`)) {
        NewsObject[['description']] <- self$`description`
      }
      if (!is.null(self$`imageUrl`)) {
        NewsObject[['imageUrl']] <- self$`imageUrl`
      }
      if (!is.null(self$`keywords`)) {
        NewsObject[['keywords']] <- self$`keywords`
      }
      if (!is.null(self$`financialAssets`)) {
        NewsObject[['financialAssets']] <- self$`financialAssets`
      }
      if (!is.null(self$`publishedTime`)) {
        NewsObject[['publishedTime']] <- self$`publishedTime`
      }
      if (!is.null(self$`publisherName`)) {
        NewsObject[['publisherName']] <- self$`publisherName`
      }

      NewsObject
    },
    fromJSON = function(NewsJson) {
      NewsObject <- jsonlite::fromJSON(NewsJson)
      if (!is.null(NewsObject$`title`)) {
        self$`title` <- NewsObject$`title`
      }
      if (!is.null(NewsObject$`ampUrl`)) {
        self$`ampUrl` <- NewsObject$`ampUrl`
      }
      if (!is.null(NewsObject$`articleUrl`)) {
        self$`articleUrl` <- NewsObject$`articleUrl`
      }
      if (!is.null(NewsObject$`author`)) {
        self$`author` <- NewsObject$`author`
      }
      if (!is.null(NewsObject$`description`)) {
        self$`description` <- NewsObject$`description`
      }
      if (!is.null(NewsObject$`imageUrl`)) {
        self$`imageUrl` <- NewsObject$`imageUrl`
      }
      if (!is.null(NewsObject$`keywords`)) {
        self$`keywords` <- NewsObject$`keywords`
      }
      if (!is.null(NewsObject$`financialAssets`)) {
        self$`financialAssets` <- NewsObject$`financialAssets`
      }
      if (!is.null(NewsObject$`publishedTime`)) {
        self$`publishedTime` <- NewsObject$`publishedTime`
      }
      if (!is.null(NewsObject$`publisherName`)) {
        self$`publisherName` <- NewsObject$`publisherName`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "title": %s,
           "ampUrl": %s,
           "articleUrl": %s,
           "author": %s,
           "description": %s,
           "imageUrl": %s,
           "keywords": [%s],
           "financialAssets": [%s],
           "publishedTime": %s,
           "publisherName": %s
        }',
        self$`title`,
        self$`ampUrl`,
        self$`articleUrl`,
        self$`author`,
        self$`description`,
        self$`imageUrl`,
        lapply(self$`keywords`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`financialAssets`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`publishedTime`,
        self$`publisherName`
      )
    },
    fromJSONString = function(NewsJson) {
      NewsObject <- jsonlite::fromJSON(NewsJson)
      self$`title` <- NewsObject$`title`
      self$`ampUrl` <- NewsObject$`ampUrl`
      self$`articleUrl` <- NewsObject$`articleUrl`
      self$`author` <- NewsObject$`author`
      self$`description` <- NewsObject$`description`
      self$`imageUrl` <- NewsObject$`imageUrl`
      self$`keywords` <- NewsObject$`keywords`
      self$`financialAssets` <- NewsObject$`financialAssets`
      self$`publishedTime` <- NewsObject$`publishedTime`
      self$`publisherName` <- NewsObject$`publisherName`
    }
  )
)
