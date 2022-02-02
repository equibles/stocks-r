# Stocks
#
# <h3>Authentication</h3>                     You need to authenticate to use this API.                     To authenticate click on the \"Authorize\" button and do one of the following steps.<br />                     1. Send your API key in the headers of the request by typing \"Bearer my-key\" on the Bearer authorization scheme.<br />                     2. Send your API key on the \"ApiKey\" query string parameter. To do this type your API key in the Query String authorization scheme.<br />                     Both methods are equally valid. We offer both options so that you can use the method that is easier to use in your application.<br />                     <br />                     <h3>API limits</h3>                     Your API key may be subject to daily/hourly limits. To know how much requests you have left look at the following headers in the response.<br />                     1. <strong>x-ratelimit-limit</strong> - The total number of requests that you are allowed to make in a given period (hour/day)                       2. <strong>x-ratelimit-remaining</strong> - The number of remaining requests that you can perform in the current period.<br />                     3. <strong>x-ratelimit-reset</strong> - The number of seconds until the current period resets.<br />                     <br />                     <h3>Suggestions</h3>                     You don't need to implement the whole API by hand in your programming language of choice.<br />                     Since this API has an OpenAPI specification you can use                      <a href=\"https://github.com/swagger-api/swagger-codegen\" target=\"_blank\">Swagger Generator</a>                      to automatically generate client stubs for more than 30 programming languages.                     <br />                     <br />                     You don't have an API key? <a href=\"https://www.equibles.com/api/pricing\" target=\"_blank\">Get one for free here.</a>
#
# OpenAPI spec version: v1
# Contact: equibles@gmail.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' StockProfileResponse Class
#'
#' @field status 
#' @field errorMessage 
#' @field results 
#' @field count 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StockProfileResponse <- R6::R6Class(
  'StockProfileResponse',
  public = list(
    `status` = NULL,
    `errorMessage` = NULL,
    `results` = NULL,
    `count` = NULL,
    initialize = function(`status`, `errorMessage`, `results`, `count`){
      if (!missing(`status`)) {
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!missing(`errorMessage`)) {
        stopifnot(is.character(`errorMessage`), length(`errorMessage`) == 1)
        self$`errorMessage` <- `errorMessage`
      }
      if (!missing(`results`)) {
        stopifnot(R6::is.R6(`results`))
        self$`results` <- `results`
      }
      if (!missing(`count`)) {
        stopifnot(is.numeric(`count`), length(`count`) == 1)
        self$`count` <- `count`
      }
    },
    toJSON = function() {
      StockProfileResponseObject <- list()
      if (!is.null(self$`status`)) {
        StockProfileResponseObject[['status']] <- self$`status`$toJSON()
      }
      if (!is.null(self$`errorMessage`)) {
        StockProfileResponseObject[['errorMessage']] <- self$`errorMessage`
      }
      if (!is.null(self$`results`)) {
        StockProfileResponseObject[['results']] <- self$`results`$toJSON()
      }
      if (!is.null(self$`count`)) {
        StockProfileResponseObject[['count']] <- self$`count`
      }

      StockProfileResponseObject
    },
    fromJSON = function(StockProfileResponseJson) {
      StockProfileResponseObject <- jsonlite::fromJSON(StockProfileResponseJson)
      if (!is.null(StockProfileResponseObject$`status`)) {
        statusObject <- ResponseStatus$new()
        statusObject$fromJSON(jsonlite::toJSON(StockProfileResponseObject$status, auto_unbox = TRUE))
        self$`status` <- statusObject
      }
      if (!is.null(StockProfileResponseObject$`errorMessage`)) {
        self$`errorMessage` <- StockProfileResponseObject$`errorMessage`
      }
      if (!is.null(StockProfileResponseObject$`results`)) {
        resultsObject <- StockProfile$new()
        resultsObject$fromJSON(jsonlite::toJSON(StockProfileResponseObject$results, auto_unbox = TRUE))
        self$`results` <- resultsObject
      }
      if (!is.null(StockProfileResponseObject$`count`)) {
        self$`count` <- StockProfileResponseObject$`count`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "status": %s,
           "errorMessage": %s,
           "results": %s,
           "count": %d
        }',
        self$`status`$toJSON(),
        self$`errorMessage`,
        self$`results`$toJSON(),
        self$`count`
      )
    },
    fromJSONString = function(StockProfileResponseJson) {
      StockProfileResponseObject <- jsonlite::fromJSON(StockProfileResponseJson)
      ResponseStatusObject <- ResponseStatus$new()
      self$`status` <- ResponseStatusObject$fromJSON(jsonlite::toJSON(StockProfileResponseObject$status, auto_unbox = TRUE))
      self$`errorMessage` <- StockProfileResponseObject$`errorMessage`
      StockProfileObject <- StockProfile$new()
      self$`results` <- StockProfileObject$fromJSON(jsonlite::toJSON(StockProfileResponseObject$results, auto_unbox = TRUE))
      self$`count` <- StockProfileResponseObject$`count`
    }
  )
)
