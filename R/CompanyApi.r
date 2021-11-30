# Altana Atlas API
#
# Altana Atlas for Regulatory Risk and Trade Compliance
#
# OpenAPI spec version: {{ version or \"v0.0.1\" }}
# Contact: engineering@altanatech.com
# Generated by: https://github.com/swagger-api/swagger-codegen.git
#' @title Company operations
#' @description swagger.Company
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' get_company_by_id Company ID
#'
#'
#' get_company_edges Edges
#'
#'
#' get_company_facilities Facilities
#'
#'
#' get_company_products Company Products
#'
#'
#' get_trading_partners Trading Partners
#'
#'
#' match_company Company Match
#'
#'
#' search_company Company Search
#'
#' }
#'
#' @export
CompanyApi <- R6::R6Class(
  'CompanyApi',
  public = list(
    userAgent = "Swagger-Codegen/1.0.0/r",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    get_company_by_id = function(company_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/company/id/{company_id}"
      if (!missing(`company_id`)) {
        urlPath <- gsub(paste0("\\{", "company_id", "\\}"), `company_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Company$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
    get_company_edges = function(company_id, edge_type, country, trade_direction, page, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`edge_type`)) {
        queryParams['edge_type'] <- edge_type
      }

      if (!missing(`country`)) {
        queryParams['country'] <- country
      }

      if (!missing(`trade_direction`)) {
        queryParams['trade_direction'] <- trade_direction
      }

      if (!missing(`page`)) {
        queryParams['page'] <- page
      }

      urlPath <- "/company/id/{company_id}/edges"
      if (!missing(`company_id`)) {
        urlPath <- gsub(paste0("\\{", "company_id", "\\}"), `company_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Edges$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
    get_company_facilities = function(company_id, page, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`page`)) {
        queryParams['page'] <- page
      }

      urlPath <- "/company/id/{company_id}/facilities"
      if (!missing(`company_id`)) {
        urlPath <- gsub(paste0("\\{", "company_id", "\\}"), `company_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Facilities$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
    get_company_products = function(company_id, trade_direction, page, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`trade_direction`)) {
        queryParams['trade_direction'] <- trade_direction
      }

      if (!missing(`page`)) {
        queryParams['page'] <- page
      }

      urlPath <- "/company/id/{company_id}/products"
      if (!missing(`company_id`)) {
        urlPath <- gsub(paste0("\\{", "company_id", "\\}"), `company_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Products$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
    get_trading_partners = function(company_id, page, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`page`)) {
        queryParams['page'] <- page
      }

      urlPath <- "/company/id/{company_id}/trading-partners"
      if (!missing(`company_id`)) {
        urlPath <- gsub(paste0("\\{", "company_id", "\\}"), `company_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- TradingPartners$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
    match_company = function(query, country, full_address, hs2, has_restrictions, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`country`)) {
        queryParams['country'] <- country
      }

      if (!missing(`full_address`)) {
        queryParams['full_address'] <- full_address
      }

      if (!missing(`hs2`)) {
        queryParams['hs2'] <- hs2
      }

      if (!missing(`has_restrictions`)) {
        queryParams['has_restrictions'] <- has_restrictions
      }

      urlPath <- "/company/match/{query}"
      if (!missing(`query`)) {
        urlPath <- gsub(paste0("\\{", "query", "\\}"), `query`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Company$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
    search_company = function(query, country, hs2, has_restrictions, page, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`country`)) {
        queryParams['country'] <- country
      }

      if (!missing(`hs2`)) {
        queryParams['hs2'] <- hs2
      }

      if (!missing(`has_restrictions`)) {
        queryParams['has_restrictions'] <- has_restrictions
      }

      if (!missing(`page`)) {
        queryParams['page'] <- page
      }

      urlPath <- "/company/search/{query}"
      if (!missing(`query`)) {
        urlPath <- gsub(paste0("\\{", "query", "\\}"), `query`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Companies$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
  )
)