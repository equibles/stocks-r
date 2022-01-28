# Stocks
#
# <h3>Authentication</h3>                     You need to authenticate to use this API.                     To authenticate click on the \"Authorize\" button and do one of the following steps.<br />                     1. Send your API key in the headers of the request by typing \"Bearer my-key\" on the Bearer authorization scheme.<br />                     2. Send your API key on the \"ApiKey\" query string parameter. To do this type your API key in the Query String authorization scheme.<br />                     Both methods are equally valid. We offer both options so that you can use the method that is easier to use in your application.<br />                     <br />                     <h3>API limits</h3>                     Your API key may be subject to daily/hourly limits. To know how much requests you have left look at the following headers in the response.<br />                     1. <strong>x-ratelimit-limit</strong> - The total number of requests that you are allowed to make in a given period (hour/day)                       2. <strong>x-ratelimit-remaining</strong> - The number of remaining requests that you can perform in the current period.<br />                     3. <strong>x-ratelimit-reset</strong> - The number of seconds until the current period resets.<br />                     <br />                     <h3>Suggestions</h3>                     You don't need to implement the whole API by hand in your programming language of choice.<br />                     Since this API has an OpenAPI specification you can use                      <a href=\"https://github.com/swagger-api/swagger-codegen\" target=\"_blank\">Swagger Generator</a>                      to automatically generate client stubs for more than 30 programming languages.                     <br />                     <br />                     You don't have an API key? <a href=\"https://www.equibles.com/api/pricing\" target=\"_blank\">Get one for free here.</a>
#
# OpenAPI spec version: v1
# Contact: equibles@gmail.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' Performance Class
#'
#' @field oneDay 
#' @field oneWeek 
#' @field twoWeeks 
#' @field oneMonth 
#' @field threeMonths 
#' @field sixMonths 
#' @field yearToDate 
#' @field oneYear 
#' @field twoYears 
#' @field twoYearsAnnualized 
#' @field threeYears 
#' @field threeYearsAnnualized 
#' @field fiveYears 
#' @field fiveYearsAnnualized 
#' @field tenYears 
#' @field tenYearsAnnualized 
#' @field twentyYears 
#' @field twentyYearsAnnualized 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Performance <- R6::R6Class(
  'Performance',
  public = list(
    `oneDay` = NULL,
    `oneWeek` = NULL,
    `twoWeeks` = NULL,
    `oneMonth` = NULL,
    `threeMonths` = NULL,
    `sixMonths` = NULL,
    `yearToDate` = NULL,
    `oneYear` = NULL,
    `twoYears` = NULL,
    `twoYearsAnnualized` = NULL,
    `threeYears` = NULL,
    `threeYearsAnnualized` = NULL,
    `fiveYears` = NULL,
    `fiveYearsAnnualized` = NULL,
    `tenYears` = NULL,
    `tenYearsAnnualized` = NULL,
    `twentyYears` = NULL,
    `twentyYearsAnnualized` = NULL,
    initialize = function(`oneDay`, `oneWeek`, `twoWeeks`, `oneMonth`, `threeMonths`, `sixMonths`, `yearToDate`, `oneYear`, `twoYears`, `twoYearsAnnualized`, `threeYears`, `threeYearsAnnualized`, `fiveYears`, `fiveYearsAnnualized`, `tenYears`, `tenYearsAnnualized`, `twentyYears`, `twentyYearsAnnualized`){
      if (!missing(`oneDay`)) {
        stopifnot(is.numeric(`oneDay`), length(`oneDay`) == 1)
        self$`oneDay` <- `oneDay`
      }
      if (!missing(`oneWeek`)) {
        stopifnot(is.numeric(`oneWeek`), length(`oneWeek`) == 1)
        self$`oneWeek` <- `oneWeek`
      }
      if (!missing(`twoWeeks`)) {
        stopifnot(is.numeric(`twoWeeks`), length(`twoWeeks`) == 1)
        self$`twoWeeks` <- `twoWeeks`
      }
      if (!missing(`oneMonth`)) {
        stopifnot(is.numeric(`oneMonth`), length(`oneMonth`) == 1)
        self$`oneMonth` <- `oneMonth`
      }
      if (!missing(`threeMonths`)) {
        stopifnot(is.numeric(`threeMonths`), length(`threeMonths`) == 1)
        self$`threeMonths` <- `threeMonths`
      }
      if (!missing(`sixMonths`)) {
        stopifnot(is.numeric(`sixMonths`), length(`sixMonths`) == 1)
        self$`sixMonths` <- `sixMonths`
      }
      if (!missing(`yearToDate`)) {
        stopifnot(is.numeric(`yearToDate`), length(`yearToDate`) == 1)
        self$`yearToDate` <- `yearToDate`
      }
      if (!missing(`oneYear`)) {
        stopifnot(is.numeric(`oneYear`), length(`oneYear`) == 1)
        self$`oneYear` <- `oneYear`
      }
      if (!missing(`twoYears`)) {
        stopifnot(is.numeric(`twoYears`), length(`twoYears`) == 1)
        self$`twoYears` <- `twoYears`
      }
      if (!missing(`twoYearsAnnualized`)) {
        stopifnot(is.numeric(`twoYearsAnnualized`), length(`twoYearsAnnualized`) == 1)
        self$`twoYearsAnnualized` <- `twoYearsAnnualized`
      }
      if (!missing(`threeYears`)) {
        stopifnot(is.numeric(`threeYears`), length(`threeYears`) == 1)
        self$`threeYears` <- `threeYears`
      }
      if (!missing(`threeYearsAnnualized`)) {
        stopifnot(is.numeric(`threeYearsAnnualized`), length(`threeYearsAnnualized`) == 1)
        self$`threeYearsAnnualized` <- `threeYearsAnnualized`
      }
      if (!missing(`fiveYears`)) {
        stopifnot(is.numeric(`fiveYears`), length(`fiveYears`) == 1)
        self$`fiveYears` <- `fiveYears`
      }
      if (!missing(`fiveYearsAnnualized`)) {
        stopifnot(is.numeric(`fiveYearsAnnualized`), length(`fiveYearsAnnualized`) == 1)
        self$`fiveYearsAnnualized` <- `fiveYearsAnnualized`
      }
      if (!missing(`tenYears`)) {
        stopifnot(is.numeric(`tenYears`), length(`tenYears`) == 1)
        self$`tenYears` <- `tenYears`
      }
      if (!missing(`tenYearsAnnualized`)) {
        stopifnot(is.numeric(`tenYearsAnnualized`), length(`tenYearsAnnualized`) == 1)
        self$`tenYearsAnnualized` <- `tenYearsAnnualized`
      }
      if (!missing(`twentyYears`)) {
        stopifnot(is.numeric(`twentyYears`), length(`twentyYears`) == 1)
        self$`twentyYears` <- `twentyYears`
      }
      if (!missing(`twentyYearsAnnualized`)) {
        stopifnot(is.numeric(`twentyYearsAnnualized`), length(`twentyYearsAnnualized`) == 1)
        self$`twentyYearsAnnualized` <- `twentyYearsAnnualized`
      }
    },
    toJSON = function() {
      PerformanceObject <- list()
      if (!is.null(self$`oneDay`)) {
        PerformanceObject[['oneDay']] <- self$`oneDay`
      }
      if (!is.null(self$`oneWeek`)) {
        PerformanceObject[['oneWeek']] <- self$`oneWeek`
      }
      if (!is.null(self$`twoWeeks`)) {
        PerformanceObject[['twoWeeks']] <- self$`twoWeeks`
      }
      if (!is.null(self$`oneMonth`)) {
        PerformanceObject[['oneMonth']] <- self$`oneMonth`
      }
      if (!is.null(self$`threeMonths`)) {
        PerformanceObject[['threeMonths']] <- self$`threeMonths`
      }
      if (!is.null(self$`sixMonths`)) {
        PerformanceObject[['sixMonths']] <- self$`sixMonths`
      }
      if (!is.null(self$`yearToDate`)) {
        PerformanceObject[['yearToDate']] <- self$`yearToDate`
      }
      if (!is.null(self$`oneYear`)) {
        PerformanceObject[['oneYear']] <- self$`oneYear`
      }
      if (!is.null(self$`twoYears`)) {
        PerformanceObject[['twoYears']] <- self$`twoYears`
      }
      if (!is.null(self$`twoYearsAnnualized`)) {
        PerformanceObject[['twoYearsAnnualized']] <- self$`twoYearsAnnualized`
      }
      if (!is.null(self$`threeYears`)) {
        PerformanceObject[['threeYears']] <- self$`threeYears`
      }
      if (!is.null(self$`threeYearsAnnualized`)) {
        PerformanceObject[['threeYearsAnnualized']] <- self$`threeYearsAnnualized`
      }
      if (!is.null(self$`fiveYears`)) {
        PerformanceObject[['fiveYears']] <- self$`fiveYears`
      }
      if (!is.null(self$`fiveYearsAnnualized`)) {
        PerformanceObject[['fiveYearsAnnualized']] <- self$`fiveYearsAnnualized`
      }
      if (!is.null(self$`tenYears`)) {
        PerformanceObject[['tenYears']] <- self$`tenYears`
      }
      if (!is.null(self$`tenYearsAnnualized`)) {
        PerformanceObject[['tenYearsAnnualized']] <- self$`tenYearsAnnualized`
      }
      if (!is.null(self$`twentyYears`)) {
        PerformanceObject[['twentyYears']] <- self$`twentyYears`
      }
      if (!is.null(self$`twentyYearsAnnualized`)) {
        PerformanceObject[['twentyYearsAnnualized']] <- self$`twentyYearsAnnualized`
      }

      PerformanceObject
    },
    fromJSON = function(PerformanceJson) {
      PerformanceObject <- jsonlite::fromJSON(PerformanceJson)
      if (!is.null(PerformanceObject$`oneDay`)) {
        self$`oneDay` <- PerformanceObject$`oneDay`
      }
      if (!is.null(PerformanceObject$`oneWeek`)) {
        self$`oneWeek` <- PerformanceObject$`oneWeek`
      }
      if (!is.null(PerformanceObject$`twoWeeks`)) {
        self$`twoWeeks` <- PerformanceObject$`twoWeeks`
      }
      if (!is.null(PerformanceObject$`oneMonth`)) {
        self$`oneMonth` <- PerformanceObject$`oneMonth`
      }
      if (!is.null(PerformanceObject$`threeMonths`)) {
        self$`threeMonths` <- PerformanceObject$`threeMonths`
      }
      if (!is.null(PerformanceObject$`sixMonths`)) {
        self$`sixMonths` <- PerformanceObject$`sixMonths`
      }
      if (!is.null(PerformanceObject$`yearToDate`)) {
        self$`yearToDate` <- PerformanceObject$`yearToDate`
      }
      if (!is.null(PerformanceObject$`oneYear`)) {
        self$`oneYear` <- PerformanceObject$`oneYear`
      }
      if (!is.null(PerformanceObject$`twoYears`)) {
        self$`twoYears` <- PerformanceObject$`twoYears`
      }
      if (!is.null(PerformanceObject$`twoYearsAnnualized`)) {
        self$`twoYearsAnnualized` <- PerformanceObject$`twoYearsAnnualized`
      }
      if (!is.null(PerformanceObject$`threeYears`)) {
        self$`threeYears` <- PerformanceObject$`threeYears`
      }
      if (!is.null(PerformanceObject$`threeYearsAnnualized`)) {
        self$`threeYearsAnnualized` <- PerformanceObject$`threeYearsAnnualized`
      }
      if (!is.null(PerformanceObject$`fiveYears`)) {
        self$`fiveYears` <- PerformanceObject$`fiveYears`
      }
      if (!is.null(PerformanceObject$`fiveYearsAnnualized`)) {
        self$`fiveYearsAnnualized` <- PerformanceObject$`fiveYearsAnnualized`
      }
      if (!is.null(PerformanceObject$`tenYears`)) {
        self$`tenYears` <- PerformanceObject$`tenYears`
      }
      if (!is.null(PerformanceObject$`tenYearsAnnualized`)) {
        self$`tenYearsAnnualized` <- PerformanceObject$`tenYearsAnnualized`
      }
      if (!is.null(PerformanceObject$`twentyYears`)) {
        self$`twentyYears` <- PerformanceObject$`twentyYears`
      }
      if (!is.null(PerformanceObject$`twentyYearsAnnualized`)) {
        self$`twentyYearsAnnualized` <- PerformanceObject$`twentyYearsAnnualized`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "oneDay": %d,
           "oneWeek": %d,
           "twoWeeks": %d,
           "oneMonth": %d,
           "threeMonths": %d,
           "sixMonths": %d,
           "yearToDate": %d,
           "oneYear": %d,
           "twoYears": %d,
           "twoYearsAnnualized": %d,
           "threeYears": %d,
           "threeYearsAnnualized": %d,
           "fiveYears": %d,
           "fiveYearsAnnualized": %d,
           "tenYears": %d,
           "tenYearsAnnualized": %d,
           "twentyYears": %d,
           "twentyYearsAnnualized": %d
        }',
        self$`oneDay`,
        self$`oneWeek`,
        self$`twoWeeks`,
        self$`oneMonth`,
        self$`threeMonths`,
        self$`sixMonths`,
        self$`yearToDate`,
        self$`oneYear`,
        self$`twoYears`,
        self$`twoYearsAnnualized`,
        self$`threeYears`,
        self$`threeYearsAnnualized`,
        self$`fiveYears`,
        self$`fiveYearsAnnualized`,
        self$`tenYears`,
        self$`tenYearsAnnualized`,
        self$`twentyYears`,
        self$`twentyYearsAnnualized`
      )
    },
    fromJSONString = function(PerformanceJson) {
      PerformanceObject <- jsonlite::fromJSON(PerformanceJson)
      self$`oneDay` <- PerformanceObject$`oneDay`
      self$`oneWeek` <- PerformanceObject$`oneWeek`
      self$`twoWeeks` <- PerformanceObject$`twoWeeks`
      self$`oneMonth` <- PerformanceObject$`oneMonth`
      self$`threeMonths` <- PerformanceObject$`threeMonths`
      self$`sixMonths` <- PerformanceObject$`sixMonths`
      self$`yearToDate` <- PerformanceObject$`yearToDate`
      self$`oneYear` <- PerformanceObject$`oneYear`
      self$`twoYears` <- PerformanceObject$`twoYears`
      self$`twoYearsAnnualized` <- PerformanceObject$`twoYearsAnnualized`
      self$`threeYears` <- PerformanceObject$`threeYears`
      self$`threeYearsAnnualized` <- PerformanceObject$`threeYearsAnnualized`
      self$`fiveYears` <- PerformanceObject$`fiveYears`
      self$`fiveYearsAnnualized` <- PerformanceObject$`fiveYearsAnnualized`
      self$`tenYears` <- PerformanceObject$`tenYears`
      self$`tenYearsAnnualized` <- PerformanceObject$`tenYearsAnnualized`
      self$`twentyYears` <- PerformanceObject$`twentyYears`
      self$`twentyYearsAnnualized` <- PerformanceObject$`twentyYearsAnnualized`
    }
  )
)
