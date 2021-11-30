# Altana Atlas API
#
# Altana Atlas for Regulatory Risk and Trade Compliance
#
# OpenAPI spec version: {{ version or \"v0.0.1\" }}
# Contact: engineering@altanatech.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' TradingPartnerEdge Class
#'
#' @field importer_company_canon_id 
#' @field exporter_company_canon_id 
#' @field importer_canon_id 
#' @field exporter_canon_id 
#' @field importer_company_name 
#' @field exporter_company_name 
#' @field risks 
#' @field hs_traded 
#' @field industries 
#' @field number_records 
#' @field countries_of_origin 
#' @field countries_of_destination 
#' @field importer_restrictions 
#' @field exporter_restrictions 
#' @field edge_type 
#' @field edge_canon_id 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TradingPartnerEdge <- R6::R6Class(
  'TradingPartnerEdge',
  public = list(
    `importer_company_canon_id` = NULL,
    `exporter_company_canon_id` = NULL,
    `importer_canon_id` = NULL,
    `exporter_canon_id` = NULL,
    `importer_company_name` = NULL,
    `exporter_company_name` = NULL,
    `risks` = NULL,
    `hs_traded` = NULL,
    `industries` = NULL,
    `number_records` = NULL,
    `countries_of_origin` = NULL,
    `countries_of_destination` = NULL,
    `importer_restrictions` = NULL,
    `exporter_restrictions` = NULL,
    `edge_type` = NULL,
    `edge_canon_id` = NULL,
    initialize = function(`importer_company_canon_id`, `exporter_company_canon_id`, `importer_canon_id`, `exporter_canon_id`, `importer_company_name`, `exporter_company_name`, `risks`, `hs_traded`, `industries`, `number_records`, `countries_of_origin`, `countries_of_destination`, `importer_restrictions`, `exporter_restrictions`, `edge_type`, `edge_canon_id`){
      if (!missing(`importer_company_canon_id`)) {
        stopifnot(is.character(`importer_company_canon_id`), length(`importer_company_canon_id`) == 1)
        self$`importer_company_canon_id` <- `importer_company_canon_id`
      }
      if (!missing(`exporter_company_canon_id`)) {
        stopifnot(is.character(`exporter_company_canon_id`), length(`exporter_company_canon_id`) == 1)
        self$`exporter_company_canon_id` <- `exporter_company_canon_id`
      }
      if (!missing(`importer_canon_id`)) {
        stopifnot(is.character(`importer_canon_id`), length(`importer_canon_id`) == 1)
        self$`importer_canon_id` <- `importer_canon_id`
      }
      if (!missing(`exporter_canon_id`)) {
        stopifnot(is.character(`exporter_canon_id`), length(`exporter_canon_id`) == 1)
        self$`exporter_canon_id` <- `exporter_canon_id`
      }
      if (!missing(`importer_company_name`)) {
        stopifnot(is.character(`importer_company_name`), length(`importer_company_name`) == 1)
        self$`importer_company_name` <- `importer_company_name`
      }
      if (!missing(`exporter_company_name`)) {
        stopifnot(is.character(`exporter_company_name`), length(`exporter_company_name`) == 1)
        self$`exporter_company_name` <- `exporter_company_name`
      }
      if (!missing(`risks`)) {
        stopifnot(is.list(`risks`), length(`risks`) != 0)
        lapply(`risks`, function(x) stopifnot(R6::is.R6(x)))
        self$`risks` <- `risks`
      }
      if (!missing(`hs_traded`)) {
        stopifnot(is.list(`hs_traded`), length(`hs_traded`) != 0)
        lapply(`hs_traded`, function(x) stopifnot(is.character(x)))
        self$`hs_traded` <- `hs_traded`
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
      if (!missing(`countries_of_origin`)) {
        stopifnot(is.list(`countries_of_origin`), length(`countries_of_origin`) != 0)
        lapply(`countries_of_origin`, function(x) stopifnot(is.character(x)))
        self$`countries_of_origin` <- `countries_of_origin`
      }
      if (!missing(`countries_of_destination`)) {
        stopifnot(is.list(`countries_of_destination`), length(`countries_of_destination`) != 0)
        lapply(`countries_of_destination`, function(x) stopifnot(is.character(x)))
        self$`countries_of_destination` <- `countries_of_destination`
      }
      if (!missing(`importer_restrictions`)) {
        stopifnot(is.list(`importer_restrictions`), length(`importer_restrictions`) != 0)
        lapply(`importer_restrictions`, function(x) stopifnot(R6::is.R6(x)))
        self$`importer_restrictions` <- `importer_restrictions`
      }
      if (!missing(`exporter_restrictions`)) {
        stopifnot(is.list(`exporter_restrictions`), length(`exporter_restrictions`) != 0)
        lapply(`exporter_restrictions`, function(x) stopifnot(R6::is.R6(x)))
        self$`exporter_restrictions` <- `exporter_restrictions`
      }
      if (!missing(`edge_type`)) {
        stopifnot(is.character(`edge_type`), length(`edge_type`) == 1)
        self$`edge_type` <- `edge_type`
      }
      if (!missing(`edge_canon_id`)) {
        stopifnot(is.character(`edge_canon_id`), length(`edge_canon_id`) == 1)
        self$`edge_canon_id` <- `edge_canon_id`
      }
    },
    toJSON = function() {
      TradingPartnerEdgeObject <- list()
      if (!is.null(self$`importer_company_canon_id`)) {
        TradingPartnerEdgeObject[['importer_company_canon_id']] <- self$`importer_company_canon_id`
      }
      if (!is.null(self$`exporter_company_canon_id`)) {
        TradingPartnerEdgeObject[['exporter_company_canon_id']] <- self$`exporter_company_canon_id`
      }
      if (!is.null(self$`importer_canon_id`)) {
        TradingPartnerEdgeObject[['importer_canon_id']] <- self$`importer_canon_id`
      }
      if (!is.null(self$`exporter_canon_id`)) {
        TradingPartnerEdgeObject[['exporter_canon_id']] <- self$`exporter_canon_id`
      }
      if (!is.null(self$`importer_company_name`)) {
        TradingPartnerEdgeObject[['importer_company_name']] <- self$`importer_company_name`
      }
      if (!is.null(self$`exporter_company_name`)) {
        TradingPartnerEdgeObject[['exporter_company_name']] <- self$`exporter_company_name`
      }
      if (!is.null(self$`risks`)) {
        TradingPartnerEdgeObject[['risks']] <- lapply(self$`risks`, function(x) x$toJSON())
      }
      if (!is.null(self$`hs_traded`)) {
        TradingPartnerEdgeObject[['hs_traded']] <- self$`hs_traded`
      }
      if (!is.null(self$`industries`)) {
        TradingPartnerEdgeObject[['industries']] <- self$`industries`
      }
      if (!is.null(self$`number_records`)) {
        TradingPartnerEdgeObject[['number_records']] <- self$`number_records`
      }
      if (!is.null(self$`countries_of_origin`)) {
        TradingPartnerEdgeObject[['countries_of_origin']] <- self$`countries_of_origin`
      }
      if (!is.null(self$`countries_of_destination`)) {
        TradingPartnerEdgeObject[['countries_of_destination']] <- self$`countries_of_destination`
      }
      if (!is.null(self$`importer_restrictions`)) {
        TradingPartnerEdgeObject[['importer_restrictions']] <- lapply(self$`importer_restrictions`, function(x) x$toJSON())
      }
      if (!is.null(self$`exporter_restrictions`)) {
        TradingPartnerEdgeObject[['exporter_restrictions']] <- lapply(self$`exporter_restrictions`, function(x) x$toJSON())
      }
      if (!is.null(self$`edge_type`)) {
        TradingPartnerEdgeObject[['edge_type']] <- self$`edge_type`
      }
      if (!is.null(self$`edge_canon_id`)) {
        TradingPartnerEdgeObject[['edge_canon_id']] <- self$`edge_canon_id`
      }

      TradingPartnerEdgeObject
    },
    fromJSON = function(TradingPartnerEdgeJson) {
      TradingPartnerEdgeObject <- jsonlite::fromJSON(TradingPartnerEdgeJson)
      if (!is.null(TradingPartnerEdgeObject$`importer_company_canon_id`)) {
        self$`importer_company_canon_id` <- TradingPartnerEdgeObject$`importer_company_canon_id`
      }
      if (!is.null(TradingPartnerEdgeObject$`exporter_company_canon_id`)) {
        self$`exporter_company_canon_id` <- TradingPartnerEdgeObject$`exporter_company_canon_id`
      }
      if (!is.null(TradingPartnerEdgeObject$`importer_canon_id`)) {
        self$`importer_canon_id` <- TradingPartnerEdgeObject$`importer_canon_id`
      }
      if (!is.null(TradingPartnerEdgeObject$`exporter_canon_id`)) {
        self$`exporter_canon_id` <- TradingPartnerEdgeObject$`exporter_canon_id`
      }
      if (!is.null(TradingPartnerEdgeObject$`importer_company_name`)) {
        self$`importer_company_name` <- TradingPartnerEdgeObject$`importer_company_name`
      }
      if (!is.null(TradingPartnerEdgeObject$`exporter_company_name`)) {
        self$`exporter_company_name` <- TradingPartnerEdgeObject$`exporter_company_name`
      }
      if (!is.null(TradingPartnerEdgeObject$`risks`)) {
        self$`risks` <- lapply(TradingPartnerEdgeObject$`risks`, function(x) {
          risksObject <- Risk$new()
          risksObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          risksObject
        })
      }
      if (!is.null(TradingPartnerEdgeObject$`hs_traded`)) {
        self$`hs_traded` <- TradingPartnerEdgeObject$`hs_traded`
      }
      if (!is.null(TradingPartnerEdgeObject$`industries`)) {
        self$`industries` <- TradingPartnerEdgeObject$`industries`
      }
      if (!is.null(TradingPartnerEdgeObject$`number_records`)) {
        self$`number_records` <- TradingPartnerEdgeObject$`number_records`
      }
      if (!is.null(TradingPartnerEdgeObject$`countries_of_origin`)) {
        self$`countries_of_origin` <- TradingPartnerEdgeObject$`countries_of_origin`
      }
      if (!is.null(TradingPartnerEdgeObject$`countries_of_destination`)) {
        self$`countries_of_destination` <- TradingPartnerEdgeObject$`countries_of_destination`
      }
      if (!is.null(TradingPartnerEdgeObject$`importer_restrictions`)) {
        self$`importer_restrictions` <- lapply(TradingPartnerEdgeObject$`importer_restrictions`, function(x) {
          importer_restrictionsObject <- Restriction$new()
          importer_restrictionsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          importer_restrictionsObject
        })
      }
      if (!is.null(TradingPartnerEdgeObject$`exporter_restrictions`)) {
        self$`exporter_restrictions` <- lapply(TradingPartnerEdgeObject$`exporter_restrictions`, function(x) {
          exporter_restrictionsObject <- Restriction$new()
          exporter_restrictionsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          exporter_restrictionsObject
        })
      }
      if (!is.null(TradingPartnerEdgeObject$`edge_type`)) {
        self$`edge_type` <- TradingPartnerEdgeObject$`edge_type`
      }
      if (!is.null(TradingPartnerEdgeObject$`edge_canon_id`)) {
        self$`edge_canon_id` <- TradingPartnerEdgeObject$`edge_canon_id`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "importer_company_canon_id": %s,
           "exporter_company_canon_id": %s,
           "importer_canon_id": %s,
           "exporter_canon_id": %s,
           "importer_company_name": %s,
           "exporter_company_name": %s,
           "risks": [%s],
           "hs_traded": [%s],
           "industries": [%s],
           "number_records": %d,
           "countries_of_origin": [%s],
           "countries_of_destination": [%s],
           "importer_restrictions": [%s],
           "exporter_restrictions": [%s],
           "edge_type": %s,
           "edge_canon_id": %s
        }',
        self$`importer_company_canon_id`,
        self$`exporter_company_canon_id`,
        self$`importer_canon_id`,
        self$`exporter_canon_id`,
        self$`importer_company_name`,
        self$`exporter_company_name`,
        lapply(self$`risks`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`hs_traded`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`industries`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`number_records`,
        lapply(self$`countries_of_origin`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`countries_of_destination`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`importer_restrictions`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`exporter_restrictions`, function(x) paste(x$toJSON(), sep=",")),
        self$`edge_type`,
        self$`edge_canon_id`
      )
    },
    fromJSONString = function(TradingPartnerEdgeJson) {
      TradingPartnerEdgeObject <- jsonlite::fromJSON(TradingPartnerEdgeJson)
      self$`importer_company_canon_id` <- TradingPartnerEdgeObject$`importer_company_canon_id`
      self$`exporter_company_canon_id` <- TradingPartnerEdgeObject$`exporter_company_canon_id`
      self$`importer_canon_id` <- TradingPartnerEdgeObject$`importer_canon_id`
      self$`exporter_canon_id` <- TradingPartnerEdgeObject$`exporter_canon_id`
      self$`importer_company_name` <- TradingPartnerEdgeObject$`importer_company_name`
      self$`exporter_company_name` <- TradingPartnerEdgeObject$`exporter_company_name`
      self$`risks` <- lapply(TradingPartnerEdgeObject$`risks`, function(x) Risk$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`hs_traded` <- TradingPartnerEdgeObject$`hs_traded`
      self$`industries` <- TradingPartnerEdgeObject$`industries`
      self$`number_records` <- TradingPartnerEdgeObject$`number_records`
      self$`countries_of_origin` <- TradingPartnerEdgeObject$`countries_of_origin`
      self$`countries_of_destination` <- TradingPartnerEdgeObject$`countries_of_destination`
      self$`importer_restrictions` <- lapply(TradingPartnerEdgeObject$`importer_restrictions`, function(x) Restriction$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`exporter_restrictions` <- lapply(TradingPartnerEdgeObject$`exporter_restrictions`, function(x) Restriction$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`edge_type` <- TradingPartnerEdgeObject$`edge_type`
      self$`edge_canon_id` <- TradingPartnerEdgeObject$`edge_canon_id`
    }
  )
)