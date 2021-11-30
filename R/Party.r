# Altana Atlas API
#
# Altana Atlas for Regulatory Risk and Trade Compliance
#
# OpenAPI spec version: {{ version or \"v0.0.1\" }}
# Contact: engineering@altanatech.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' Party Class
#'
#' @field country 
#' @field full_address 
#' @field id 
#' @field name 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Party <- R6::R6Class(
  'Party',
  public = list(
    `country` = NULL,
    `full_address` = NULL,
    `id` = NULL,
    `name` = NULL,
    initialize = function(`country`, `full_address`, `id`, `name`){
      if (!missing(`country`)) {
        stopifnot(is.character(`country`), length(`country`) == 1)
        self$`country` <- `country`
      }
      if (!missing(`full_address`)) {
        stopifnot(is.character(`full_address`), length(`full_address`) == 1)
        self$`full_address` <- `full_address`
      }
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
    },
    toJSON = function() {
      PartyObject <- list()
      if (!is.null(self$`country`)) {
        PartyObject[['country']] <- self$`country`
      }
      if (!is.null(self$`full_address`)) {
        PartyObject[['full_address']] <- self$`full_address`
      }
      if (!is.null(self$`id`)) {
        PartyObject[['id']] <- self$`id`
      }
      if (!is.null(self$`name`)) {
        PartyObject[['name']] <- self$`name`
      }

      PartyObject
    },
    fromJSON = function(PartyJson) {
      PartyObject <- jsonlite::fromJSON(PartyJson)
      if (!is.null(PartyObject$`country`)) {
        self$`country` <- PartyObject$`country`
      }
      if (!is.null(PartyObject$`full_address`)) {
        self$`full_address` <- PartyObject$`full_address`
      }
      if (!is.null(PartyObject$`id`)) {
        self$`id` <- PartyObject$`id`
      }
      if (!is.null(PartyObject$`name`)) {
        self$`name` <- PartyObject$`name`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "country": %s,
           "full_address": %s,
           "id": %s,
           "name": %s
        }',
        self$`country`,
        self$`full_address`,
        self$`id`,
        self$`name`
      )
    },
    fromJSONString = function(PartyJson) {
      PartyObject <- jsonlite::fromJSON(PartyJson)
      self$`country` <- PartyObject$`country`
      self$`full_address` <- PartyObject$`full_address`
      self$`id` <- PartyObject$`id`
      self$`name` <- PartyObject$`name`
    }
  )
)
