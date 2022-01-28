# Stocks
#
# <h3>Authentication</h3>                     You need to authenticate to use this API.                     To authenticate click on the \"Authorize\" button and do one of the following steps.<br />                     1. Send your API key in the headers of the request by typing \"Bearer my-key\" on the Bearer authorization scheme.<br />                     2. Send your API key on the \"ApiKey\" query string parameter. To do this type your API key in the Query String authorization scheme.<br />                     Both methods are equally valid. We offer both options so that you can use the method that is easier to use in your application.<br />                     <br />                     <h3>API limits</h3>                     Your API key may be subject to daily/hourly limits. To know how much requests you have left look at the following headers in the response.<br />                     1. <strong>x-ratelimit-limit</strong> - The total number of requests that you are allowed to make in a given period (hour/day)                       2. <strong>x-ratelimit-remaining</strong> - The number of remaining requests that you can perform in the current period.<br />                     3. <strong>x-ratelimit-reset</strong> - The number of seconds until the current period resets.<br />                     <br />                     <h3>Suggestions</h3>                     You don't need to implement the whole API by hand in your programming language of choice.<br />                     Since this API has an OpenAPI specification you can use                      <a href=\"https://github.com/swagger-api/swagger-codegen\" target=\"_blank\">Swagger Generator</a>                      to automatically generate client stubs for more than 30 programming languages.                     <br />                     <br />                     You don't have an API key? <a href=\"https://www.equibles.com/api/pricing\" target=\"_blank\">Get one for free here.</a>
#
# OpenAPI spec version: v1
# Contact: equibles@gmail.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' Exchange Class
#'
#' @field name 
#' @field assetType 
#' @field operatingMic 
#' @field country 
#' @field currencyCode 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Exchange <- R6::R6Class(
  'Exchange',
  public = list(
    `name` = NULL,
    `assetType` = NULL,
    `operatingMic` = NULL,
    `country` = NULL,
    `currencyCode` = NULL,
    initialize = function(`name`, `assetType`, `operatingMic`, `country`, `currencyCode`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`assetType`)) {
        stopifnot(R6::is.R6(`assetType`))
        self$`assetType` <- `assetType`
      }
      if (!missing(`operatingMic`)) {
        stopifnot(is.character(`operatingMic`), length(`operatingMic`) == 1)
        self$`operatingMic` <- `operatingMic`
      }
      if (!missing(`country`)) {
        stopifnot(is.character(`country`), length(`country`) == 1)
        self$`country` <- `country`
      }
      if (!missing(`currencyCode`)) {
        stopifnot(is.character(`currencyCode`), length(`currencyCode`) == 1)
        self$`currencyCode` <- `currencyCode`
      }
    },
    toJSON = function() {
      ExchangeObject <- list()
      if (!is.null(self$`name`)) {
        ExchangeObject[['name']] <- self$`name`
      }
      if (!is.null(self$`assetType`)) {
        ExchangeObject[['assetType']] <- self$`assetType`$toJSON()
      }
      if (!is.null(self$`operatingMic`)) {
        ExchangeObject[['operatingMic']] <- self$`operatingMic`
      }
      if (!is.null(self$`country`)) {
        ExchangeObject[['country']] <- self$`country`
      }
      if (!is.null(self$`currencyCode`)) {
        ExchangeObject[['currencyCode']] <- self$`currencyCode`
      }

      ExchangeObject
    },
    fromJSON = function(ExchangeJson) {
      ExchangeObject <- jsonlite::fromJSON(ExchangeJson)
      if (!is.null(ExchangeObject$`name`)) {
        self$`name` <- ExchangeObject$`name`
      }
      if (!is.null(ExchangeObject$`assetType`)) {
        assetTypeObject <- AssetType$new()
        assetTypeObject$fromJSON(jsonlite::toJSON(ExchangeObject$assetType, auto_unbox = TRUE))
        self$`assetType` <- assetTypeObject
      }
      if (!is.null(ExchangeObject$`operatingMic`)) {
        self$`operatingMic` <- ExchangeObject$`operatingMic`
      }
      if (!is.null(ExchangeObject$`country`)) {
        self$`country` <- ExchangeObject$`country`
      }
      if (!is.null(ExchangeObject$`currencyCode`)) {
        self$`currencyCode` <- ExchangeObject$`currencyCode`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "assetType": %s,
           "operatingMic": %s,
           "country": %s,
           "currencyCode": %s
        }',
        self$`name`,
        self$`assetType`$toJSON(),
        self$`operatingMic`,
        self$`country`,
        self$`currencyCode`
      )
    },
    fromJSONString = function(ExchangeJson) {
      ExchangeObject <- jsonlite::fromJSON(ExchangeJson)
      self$`name` <- ExchangeObject$`name`
      AssetTypeObject <- AssetType$new()
      self$`assetType` <- AssetTypeObject$fromJSON(jsonlite::toJSON(ExchangeObject$assetType, auto_unbox = TRUE))
      self$`operatingMic` <- ExchangeObject$`operatingMic`
      self$`country` <- ExchangeObject$`country`
      self$`currencyCode` <- ExchangeObject$`currencyCode`
    }
  )
)