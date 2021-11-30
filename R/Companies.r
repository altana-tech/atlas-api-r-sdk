# Altana Atlas API
#
# Altana Atlas for Regulatory Risk and Trade Compliance
#
# OpenAPI spec version: {{ version or \"v0.0.1\" }}
# Contact: engineering@altanatech.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' Companies Class
#'
#' @field num_results 
#' @field page_size 
#' @field page_num 
#' @field companies 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Companies <- R6::R6Class(
  'Companies',
  public = list(
    `num_results` = NULL,
    `page_size` = NULL,
    `page_num` = NULL,
    `companies` = NULL,
    initialize = function(`num_results`, `page_size`, `page_num`, `companies`){
      if (!missing(`num_results`)) {
        stopifnot(is.numeric(`num_results`), length(`num_results`) == 1)
        self$`num_results` <- `num_results`
      }
      if (!missing(`page_size`)) {
        stopifnot(is.numeric(`page_size`), length(`page_size`) == 1)
        self$`page_size` <- `page_size`
      }
      if (!missing(`page_num`)) {
        stopifnot(is.numeric(`page_num`), length(`page_num`) == 1)
        self$`page_num` <- `page_num`
      }
      if (!missing(`companies`)) {
        stopifnot(is.list(`companies`), length(`companies`) != 0)
        lapply(`companies`, function(x) stopifnot(R6::is.R6(x)))
        self$`companies` <- `companies`
      }
    },
    toJSON = function() {
      CompaniesObject <- list()
      if (!is.null(self$`num_results`)) {
        CompaniesObject[['num_results']] <- self$`num_results`
      }
      if (!is.null(self$`page_size`)) {
        CompaniesObject[['page_size']] <- self$`page_size`
      }
      if (!is.null(self$`page_num`)) {
        CompaniesObject[['page_num']] <- self$`page_num`
      }
      if (!is.null(self$`companies`)) {
        CompaniesObject[['companies']] <- lapply(self$`companies`, function(x) x$toJSON())
      }

      CompaniesObject
    },
    fromJSON = function(CompaniesJson) {
      CompaniesObject <- jsonlite::fromJSON(CompaniesJson)
      if (!is.null(CompaniesObject$`num_results`)) {
        self$`num_results` <- CompaniesObject$`num_results`
      }
      if (!is.null(CompaniesObject$`page_size`)) {
        self$`page_size` <- CompaniesObject$`page_size`
      }
      if (!is.null(CompaniesObject$`page_num`)) {
        self$`page_num` <- CompaniesObject$`page_num`
      }
      if (!is.null(CompaniesObject$`companies`)) {
        self$`companies` <- lapply(CompaniesObject$`companies`, function(x) {
          companiesObject <- Company$new()
          companiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          companiesObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "num_results": %d,
           "page_size": %d,
           "page_num": %d,
           "companies": [%s]
        }',
        self$`num_results`,
        self$`page_size`,
        self$`page_num`,
        lapply(self$`companies`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(CompaniesJson) {
      CompaniesObject <- jsonlite::fromJSON(CompaniesJson)
      self$`num_results` <- CompaniesObject$`num_results`
      self$`page_size` <- CompaniesObject$`page_size`
      self$`page_num` <- CompaniesObject$`page_num`
      self$`companies` <- lapply(CompaniesObject$`companies`, function(x) Company$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)