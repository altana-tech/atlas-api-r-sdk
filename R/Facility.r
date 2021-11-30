# Altana Atlas API
#
# Altana Atlas for Regulatory Risk and Trade Compliance
#
# OpenAPI spec version: {{ version or \"v0.0.1\" }}
# Contact: engineering@altanatech.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' Facility Class
#'
#' @field facility_canon_id 
#' @field company_canon_id 
#' @field company_name 
#' @field hs_received 
#' @field hs_sent 
#' @field hs_traded 
#' @field receives_from_facility_ids 
#' @field sends_to_facility_ids 
#' @field address 
#' @field coordinates 
#' @field restrictions 
#' @field industries 
#' @field number_records 
#' @field data_sources 
#' @field products_sent 
#' @field products_received 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Facility <- R6::R6Class(
  'Facility',
  public = list(
    `facility_canon_id` = NULL,
    `company_canon_id` = NULL,
    `company_name` = NULL,
    `hs_received` = NULL,
    `hs_sent` = NULL,
    `hs_traded` = NULL,
    `receives_from_facility_ids` = NULL,
    `sends_to_facility_ids` = NULL,
    `address` = NULL,
    `coordinates` = NULL,
    `restrictions` = NULL,
    `industries` = NULL,
    `number_records` = NULL,
    `data_sources` = NULL,
    `products_sent` = NULL,
    `products_received` = NULL,
    initialize = function(`facility_canon_id`, `company_canon_id`, `company_name`, `hs_received`, `hs_sent`, `hs_traded`, `receives_from_facility_ids`, `sends_to_facility_ids`, `address`, `coordinates`, `restrictions`, `industries`, `number_records`, `data_sources`, `products_sent`, `products_received`){
      if (!missing(`facility_canon_id`)) {
        stopifnot(is.character(`facility_canon_id`), length(`facility_canon_id`) == 1)
        self$`facility_canon_id` <- `facility_canon_id`
      }
      if (!missing(`company_canon_id`)) {
        stopifnot(is.character(`company_canon_id`), length(`company_canon_id`) == 1)
        self$`company_canon_id` <- `company_canon_id`
      }
      if (!missing(`company_name`)) {
        stopifnot(is.character(`company_name`), length(`company_name`) == 1)
        self$`company_name` <- `company_name`
      }
      if (!missing(`hs_received`)) {
        stopifnot(is.list(`hs_received`), length(`hs_received`) != 0)
        lapply(`hs_received`, function(x) stopifnot(is.character(x)))
        self$`hs_received` <- `hs_received`
      }
      if (!missing(`hs_sent`)) {
        stopifnot(is.list(`hs_sent`), length(`hs_sent`) != 0)
        lapply(`hs_sent`, function(x) stopifnot(is.character(x)))
        self$`hs_sent` <- `hs_sent`
      }
      if (!missing(`hs_traded`)) {
        stopifnot(is.list(`hs_traded`), length(`hs_traded`) != 0)
        lapply(`hs_traded`, function(x) stopifnot(is.character(x)))
        self$`hs_traded` <- `hs_traded`
      }
      if (!missing(`receives_from_facility_ids`)) {
        stopifnot(is.list(`receives_from_facility_ids`), length(`receives_from_facility_ids`) != 0)
        lapply(`receives_from_facility_ids`, function(x) stopifnot(is.character(x)))
        self$`receives_from_facility_ids` <- `receives_from_facility_ids`
      }
      if (!missing(`sends_to_facility_ids`)) {
        stopifnot(is.list(`sends_to_facility_ids`), length(`sends_to_facility_ids`) != 0)
        lapply(`sends_to_facility_ids`, function(x) stopifnot(is.character(x)))
        self$`sends_to_facility_ids` <- `sends_to_facility_ids`
      }
      if (!missing(`address`)) {
        stopifnot(is.character(`address`), length(`address`) == 1)
        self$`address` <- `address`
      }
      if (!missing(`coordinates`)) {
        stopifnot(R6::is.R6(`coordinates`))
        self$`coordinates` <- `coordinates`
      }
      if (!missing(`restrictions`)) {
        stopifnot(is.list(`restrictions`), length(`restrictions`) != 0)
        lapply(`restrictions`, function(x) stopifnot(R6::is.R6(x)))
        self$`restrictions` <- `restrictions`
      }
      if (!missing(`industries`)) {
        stopifnot(is.list(`industries`), length(`industries`) != 0)
        lapply(`industries`, function(x) stopifnot(is.character(x)))
        self$`industries` <- `industries`
      }
      if (!missing(`number_records`)) {
        stopifnot(is.numeric(`number_records`), length(`number_records`) == 1)
        self$`number_records` <- `number_records`
      }
      if (!missing(`data_sources`)) {
        stopifnot(is.list(`data_sources`), length(`data_sources`) != 0)
        lapply(`data_sources`, function(x) stopifnot(is.character(x)))
        self$`data_sources` <- `data_sources`
      }
      if (!missing(`products_sent`)) {
        stopifnot(is.list(`products_sent`), length(`products_sent`) != 0)
        lapply(`products_sent`, function(x) stopifnot(is.character(x)))
        self$`products_sent` <- `products_sent`
      }
      if (!missing(`products_received`)) {
        stopifnot(is.list(`products_received`), length(`products_received`) != 0)
        lapply(`products_received`, function(x) stopifnot(is.character(x)))
        self$`products_received` <- `products_received`
      }
    },
    toJSON = function() {
      FacilityObject <- list()
      if (!is.null(self$`facility_canon_id`)) {
        FacilityObject[['facility_canon_id']] <- self$`facility_canon_id`
      }
      if (!is.null(self$`company_canon_id`)) {
        FacilityObject[['company_canon_id']] <- self$`company_canon_id`
      }
      if (!is.null(self$`company_name`)) {
        FacilityObject[['company_name']] <- self$`company_name`
      }
      if (!is.null(self$`hs_received`)) {
        FacilityObject[['hs_received']] <- self$`hs_received`
      }
      if (!is.null(self$`hs_sent`)) {
        FacilityObject[['hs_sent']] <- self$`hs_sent`
      }
      if (!is.null(self$`hs_traded`)) {
        FacilityObject[['hs_traded']] <- self$`hs_traded`
      }
      if (!is.null(self$`receives_from_facility_ids`)) {
        FacilityObject[['receives_from_facility_ids']] <- self$`receives_from_facility_ids`
      }
      if (!is.null(self$`sends_to_facility_ids`)) {
        FacilityObject[['sends_to_facility_ids']] <- self$`sends_to_facility_ids`
      }
      if (!is.null(self$`address`)) {
        FacilityObject[['address']] <- self$`address`
      }
      if (!is.null(self$`coordinates`)) {
        FacilityObject[['coordinates']] <- self$`coordinates`$toJSON()
      }
      if (!is.null(self$`restrictions`)) {
        FacilityObject[['restrictions']] <- lapply(self$`restrictions`, function(x) x$toJSON())
      }
      if (!is.null(self$`industries`)) {
        FacilityObject[['industries']] <- self$`industries`
      }
      if (!is.null(self$`number_records`)) {
        FacilityObject[['number_records']] <- self$`number_records`
      }
      if (!is.null(self$`data_sources`)) {
        FacilityObject[['data_sources']] <- self$`data_sources`
      }
      if (!is.null(self$`products_sent`)) {
        FacilityObject[['products_sent']] <- self$`products_sent`
      }
      if (!is.null(self$`products_received`)) {
        FacilityObject[['products_received']] <- self$`products_received`
      }

      FacilityObject
    },
    fromJSON = function(FacilityJson) {
      FacilityObject <- jsonlite::fromJSON(FacilityJson)
      if (!is.null(FacilityObject$`facility_canon_id`)) {
        self$`facility_canon_id` <- FacilityObject$`facility_canon_id`
      }
      if (!is.null(FacilityObject$`company_canon_id`)) {
        self$`company_canon_id` <- FacilityObject$`company_canon_id`
      }
      if (!is.null(FacilityObject$`company_name`)) {
        self$`company_name` <- FacilityObject$`company_name`
      }
      if (!is.null(FacilityObject$`hs_received`)) {
        self$`hs_received` <- FacilityObject$`hs_received`
      }
      if (!is.null(FacilityObject$`hs_sent`)) {
        self$`hs_sent` <- FacilityObject$`hs_sent`
      }
      if (!is.null(FacilityObject$`hs_traded`)) {
        self$`hs_traded` <- FacilityObject$`hs_traded`
      }
      if (!is.null(FacilityObject$`receives_from_facility_ids`)) {
        self$`receives_from_facility_ids` <- FacilityObject$`receives_from_facility_ids`
      }
      if (!is.null(FacilityObject$`sends_to_facility_ids`)) {
        self$`sends_to_facility_ids` <- FacilityObject$`sends_to_facility_ids`
      }
      if (!is.null(FacilityObject$`address`)) {
        self$`address` <- FacilityObject$`address`
      }
      if (!is.null(FacilityObject$`coordinates`)) {
        coordinatesObject <- Coordinates$new()
        coordinatesObject$fromJSON(jsonlite::toJSON(FacilityObject$coordinates, auto_unbox = TRUE))
        self$`coordinates` <- coordinatesObject
      }
      if (!is.null(FacilityObject$`restrictions`)) {
        self$`restrictions` <- lapply(FacilityObject$`restrictions`, function(x) {
          restrictionsObject <- Restriction$new()
          restrictionsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          restrictionsObject
        })
      }
      if (!is.null(FacilityObject$`industries`)) {
        self$`industries` <- FacilityObject$`industries`
      }
      if (!is.null(FacilityObject$`number_records`)) {
        self$`number_records` <- FacilityObject$`number_records`
      }
      if (!is.null(FacilityObject$`data_sources`)) {
        self$`data_sources` <- FacilityObject$`data_sources`
      }
      if (!is.null(FacilityObject$`products_sent`)) {
        self$`products_sent` <- FacilityObject$`products_sent`
      }
      if (!is.null(FacilityObject$`products_received`)) {
        self$`products_received` <- FacilityObject$`products_received`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "facility_canon_id": %s,
           "company_canon_id": %s,
           "company_name": %s,
           "hs_received": [%s],
           "hs_sent": [%s],
           "hs_traded": [%s],
           "receives_from_facility_ids": [%s],
           "sends_to_facility_ids": [%s],
           "address": %s,
           "coordinates": %s,
           "restrictions": [%s],
           "industries": [%s],
           "number_records": %d,
           "data_sources": [%s],
           "products_sent": [%s],
           "products_received": [%s]
        }',
        self$`facility_canon_id`,
        self$`company_canon_id`,
        self$`company_name`,
        lapply(self$`hs_received`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`hs_sent`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`hs_traded`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`receives_from_facility_ids`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`sends_to_facility_ids`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`address`,
        self$`coordinates`$toJSON(),
        lapply(self$`restrictions`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`industries`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`number_records`,
        lapply(self$`data_sources`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`products_sent`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`products_received`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(FacilityJson) {
      FacilityObject <- jsonlite::fromJSON(FacilityJson)
      self$`facility_canon_id` <- FacilityObject$`facility_canon_id`
      self$`company_canon_id` <- FacilityObject$`company_canon_id`
      self$`company_name` <- FacilityObject$`company_name`
      self$`hs_received` <- FacilityObject$`hs_received`
      self$`hs_sent` <- FacilityObject$`hs_sent`
      self$`hs_traded` <- FacilityObject$`hs_traded`
      self$`receives_from_facility_ids` <- FacilityObject$`receives_from_facility_ids`
      self$`sends_to_facility_ids` <- FacilityObject$`sends_to_facility_ids`
      self$`address` <- FacilityObject$`address`
      CoordinatesObject <- Coordinates$new()
      self$`coordinates` <- CoordinatesObject$fromJSON(jsonlite::toJSON(FacilityObject$coordinates, auto_unbox = TRUE))
      self$`restrictions` <- lapply(FacilityObject$`restrictions`, function(x) Restriction$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`industries` <- FacilityObject$`industries`
      self$`number_records` <- FacilityObject$`number_records`
      self$`data_sources` <- FacilityObject$`data_sources`
      self$`products_sent` <- FacilityObject$`products_sent`
      self$`products_received` <- FacilityObject$`products_received`
    }
  )
)
