# Altana Atlas API
#
# Altana Atlas for Regulatory Risk and Trade Compliance
#
# OpenAPI spec version: {{ version or \"v0.0.1\" }}
# Contact: engineering@altanatech.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' Product Class
#'
#' @field product_canon_id 
#' @field name 
#' @field hs_codes 
#' @field number_records 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Product <- R6::R6Class(
  'Product',
  public = list(
    `product_canon_id` = NULL,
    `name` = NULL,
    `hs_codes` = NULL,
    `number_records` = NULL,
    initialize = function(`product_canon_id`, `name`, `hs_codes`, `number_records`){
      if (!missing(`product_canon_id`)) {
        stopifnot(is.character(`product_canon_id`), length(`product_canon_id`) == 1)
        self$`product_canon_id` <- `product_canon_id`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`hs_codes`)) {
        stopifnot(is.list(`hs_codes`), length(`hs_codes`) != 0)
        lapply(`hs_codes`, function(x) stopifnot(is.character(x)))
        self$`hs_codes` <- `hs_codes`
      }
      if (!missing(`number_records`)) {
        stopifnot(is.numeric(`number_records`), length(`number_records`) == 1)
        self$`number_records` <- `number_records`
      }
    },
    toJSON = function() {
      ProductObject <- list()
      if (!is.null(self$`product_canon_id`)) {
        ProductObject[['product_canon_id']] <- self$`product_canon_id`
      }
      if (!is.null(self$`name`)) {
        ProductObject[['name']] <- self$`name`
      }
      if (!is.null(self$`hs_codes`)) {
        ProductObject[['hs_codes']] <- self$`hs_codes`
      }
      if (!is.null(self$`number_records`)) {
        ProductObject[['number_records']] <- self$`number_records`
      }

      ProductObject
    },
    fromJSON = function(ProductJson) {
      ProductObject <- jsonlite::fromJSON(ProductJson)
      if (!is.null(ProductObject$`product_canon_id`)) {
        self$`product_canon_id` <- ProductObject$`product_canon_id`
      }
      if (!is.null(ProductObject$`name`)) {
        self$`name` <- ProductObject$`name`
      }
      if (!is.null(ProductObject$`hs_codes`)) {
        self$`hs_codes` <- ProductObject$`hs_codes`
      }
      if (!is.null(ProductObject$`number_records`)) {
        self$`number_records` <- ProductObject$`number_records`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "product_canon_id": %s,
           "name": %s,
           "hs_codes": [%s],
           "number_records": %d
        }',
        self$`product_canon_id`,
        self$`name`,
        lapply(self$`hs_codes`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`number_records`
      )
    },
    fromJSONString = function(ProductJson) {
      ProductObject <- jsonlite::fromJSON(ProductJson)
      self$`product_canon_id` <- ProductObject$`product_canon_id`
      self$`name` <- ProductObject$`name`
      self$`hs_codes` <- ProductObject$`hs_codes`
      self$`number_records` <- ProductObject$`number_records`
    }
  )
)
