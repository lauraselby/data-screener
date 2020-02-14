# -------------------------------------
### DATA FILE GEOGRAPHY VALIDATION FUNCTIONS
# -------------------------------------
# Checks in this file

data_geography_setup <- function(data) {
  level_validity(data)
  geography_level_present(data)
  geography_level_completed(data)
}

data_geography_results_function <- function() {
  assign("data_geography_results", c(
    level_validity_result,
    geography_level_present_result,
    geography_level_completed_result
  ),
  envir = .GlobalEnv
  )
}

# -------------------------------------
# Do we have acceptable values for the geographic level

level_validity <- function(data) {
  level_validity_preresult <- c()

  for (i in unique(data[["geographic_level"]])) {
    if ((i %in% acceptable_levels) == FALSE) {
      message("FAIL - ", i, " is not a valid geographic level.")
      level_validity_preresult[i] <- FALSE
    } else {
      level_validity_preresult[i] <- TRUE
    }
  }
  if (FALSE %in% level_validity_preresult) {
    assign("level_validity_result", FALSE, envir = .GlobalEnv)
  } else {
    message("PASS - Your geographic_level values are valid.")
    assign("level_validity_result", TRUE, envir = .GlobalEnv)
  }
}

# -------------------------------------
# Do we have the right columns for the geographic level

geography_level_present <- function(data) {
  geography_level_present_preresult <- c()

  for (i in all_required) {
    if ((i %in% names(data)) == FALSE) {
      message("FAIL - ", i, " must be present for all levels of data.")
      geography_level_present_preresult[i] <- FALSE
    } else {
      geography_level_present_preresult[i] <- TRUE
    }
  }

  if ("Regional" %in% data[["geographic_level"]]) {
    for (i in regional_required) {
      if ((i %in% names(data)) == FALSE) {
        message("FAIL - ", i, " must be present for regional level data.")
        geography_level_present_preresult[i] <- FALSE
      } else {
        geography_level_present_preresult[i] <- TRUE
      }
    }
  }

  if ("Local authority" %in% data[["geographic_level"]]) {
    for (i in la_required) {
      if ((i %in% names(data)) == FALSE) {
        message("FAIL - ", i, " must be present for local authority level data.")
        geography_level_present_preresult[i] <- FALSE
      } else {
        geography_level_present_preresult[i] <- TRUE
      }
    }
  }

  if ("RSC region" %in% data[["geographic_level"]]) {
    for (i in rsc_required) {
      if ((i %in% names(data)) == FALSE) {
        message("FAIL - ", i, " must be present for RSC region level data.")
        geography_levels_preresult[i] <- FALSE
      } else {
        geography_levels_preresult[i] <- TRUE
      }
    }
  }

  if ("Parliamentary constituency" %in% data[["geographic_level"]]) {
    for (i in pcon_required) {
      if ((i %in% names(data)) == FALSE) {
        message("FAIL - ", i, " must be present for parliamentary constituency level data.")
        geography_level_present_preresult[i] <- FALSE
      } else {
        geography_level_present_preresult[i] <- TRUE
      }
    }
  }

  if ("Local authority district" %in% data[["geographic_level"]]) {
    for (i in lad_required) {
      if ((i %in% names(data)) == FALSE) {
        message("FAIL - ", i, " must be present for local authority district level data.")
        geography_level_present_preresult[i] <- FALSE
      } else {
        geography_level_present_preresult[i] <- TRUE
      }
    }
  }

  if ("Local enterprise partnership" %in% data[["geographic_level"]]) {
    for (i in lep_required) {
      if ((i %in% names(data)) == FALSE) {
        message("FAIL - ", i, " must be present for local enterprise partnership level data.")
        geography_level_present_preresult[i] <- FALSE
      } else {
        geography_level_present_preresult[i] <- TRUE
      }
    }
  }

  if ("Mayoral combined authority" %in% data[["geographic_level"]]) {
    for (i in mca_required) {
      if ((i %in% names(data)) == FALSE) {
        message("FAIL - ", i, " must be present for mayoral combined authority level data.")
        geography_level_present_preresult[i] <- FALSE
      } else {
        geography_level_present_preresult[i] <- TRUE
      }
    }
  }

  if ("Opportunity area" %in% data[["geographic_level"]]) {
    for (i in oa_required) {
      if ((i %in% names(data)) == FALSE) {
        message("FAIL - ", i, " must be present for opportunity level data.")
        geography_level_present_preresult[i] <- FALSE
      } else {
        geography_level_present_preresult[i] <- TRUE
      }
    }
  }

  if ("Ward" %in% data[["geographic_level"]]) {
    for (i in ward_required) {
      if ((i %in% names(data)) == FALSE) {
        message("FAIL - ", i, " must be present for ward level data.")
        geography_level_present_preresult[i] <- FALSE
      } else {
        geography_level_present_preresult[i] <- TRUE
      }
    }
  }

  if ("MAT" %in% data[["geographic_level"]]) {
    for (i in MAT_required) {
      if ((i %in% names(data)) == FALSE) {
        message("FAIL - ", i, " must be present for MAT level data.")
        geography_level_present_preresult[i] <- FALSE
      } else {
        geography_level_present_preresult[i] <- TRUE
      }
    }
  }

  if ("Sponsor" %in% data[["geographic_level"]]) {
    for (i in sponsor_required) {
      if ((i %in% names(data)) == FALSE) {
        message("FAIL - ", i, " must be present for sponsor level data.")
        geography_level_present_preresult[i] <- FALSE
      } else {
        geography_level_present_preresult[i] <- TRUE
      }
    }
  }

  if ("School" %in% data[["geographic_level"]]) {
    for (i in school_required) {
      if ((i %in% names(data)) == FALSE) {
        message("FAIL - ", i, " must be present for school level data.")
        geography_level_present_preresult[i] <- FALSE
      } else {
        geography_level_present_preresult[i] <- TRUE
      }
    }
  }

  if ("Provider" %in% data[["geographic_level"]]) {
    for (i in provider_required) {
      if ((i %in% names(data)) == FALSE) {
        message("FAIL - ", i, " must be present for provider level data.")
        geography_level_present_preresult[i] <- FALSE
      } else {
        geography_level_present_preresult[i] <- TRUE
      }
    }
  }

  if ("Institution" %in% data[["geographic_level"]]) {
    for (i in institution_required) {
      if ((i %in% names(data)) == FALSE) {
        message("FAIL - ", i, " must be present for institution level data.")
        geography_level_present_preresult[i] <- FALSE
      } else {
        geography_level_present_preresult[i] <- TRUE
      }
    }
  }
  
  if ("Planning area" %in% data[["geographic_level"]]) {
    for (i in planning_area_required) {
      if ((i %in% names(data)) == FALSE) {
        message("FAIL - ", i, " must be present for planning area level data.")
        geography_level_present_preresult[i] <- FALSE
      } else {
        geography_level_present_preresult[i] <- TRUE
      }
    }
  }

  if (FALSE %in% geography_level_present_preresult) {
    assign("geography_level_present_result", FALSE, envir = .GlobalEnv)
  } else {
    message("PASS - Your geographic columns are valid.")
    assign("geography_level_present_result", TRUE, envir = .GlobalEnv)
  }
}



# -------------------------------------
# Are the geography levels completed as expected

geography_level_completed <- function(data) {
  geography_level_completed_preresult <- c()

  if (any(is.na(data$country_name))) {
    message("FAIL - The country_name column must be completed for all data.")
    geography_level_completed_preresult[["country_name"]] <- FALSE
  }

  if (any(is.na(data$country_code))) {
    message("FAIL - The country_code column must be completed for all data.")
    geography_level_completed_preresult[["country_code"]] <- FALSE
  }

  if ("Regional" %in% data[["geographic_level"]]) {
    Regional <- filter(data, geographic_level == "Regional")
    if (any(is.na(Regional$region_name))) {
      message("FAIL - The region_name column must be completed for all regional data.")
      geography_level_completed_preresult[region_name] <- FALSE
    }
    if (any(is.na(Regional$region_code))) {
      message("FAIL - The region_code column must be completed for all regional data.")
      geography_level_completed_preresult[region_code] <- FALSE
    }
  }

  if ("Local authority" %in% data[["geographic_level"]]) {
    LA <- filter(data, geographic_level == "Local authority")
    if (any(is.na(LA$old_la_code))) {
      message("FAIL - The old_la_code column must be completed for all local authority data.")
      geography_level_completed_preresult[old_la_code] <- FALSE
    }
    if (any(is.na(LA$new_la_code))) {
      message("FAIL - The new_la_code column must be completed for all local authority data.")
      geography_level_completed_preresult[new_la_code] <- FALSE
    }
    if (any(is.na(LA$la_name))) {
      message("FAIL - The la_name column must be completed for all local authority data.")
      geography_level_completed_preresult[la_name] <- FALSE
    }
  }

  if ("RSC region" %in% data[["geographic_level"]]) {
    RSC <- filter(data, geographic_level == "RSC region")
    if (any(is.na(RSC$rsc_region_lead_name))) {
      message("FAIL - The rsc_region_lead_name column must be completed for all RSC region data.")
      geography_level_completed_preresult[rsc_region_lead_name] <- FALSE
    }
  }

  if ("Parliamentary constituency" %in% data[["geographic_level"]]) {
    pcon <- filter(data, geographic_level == "Parliamentary constituency")
    if (any(is.na(pcon$pcon_name))) {
      message("FAIL - The pcon_name column must be completed for all parliamentary constituency data.")
      geography_level_completed_preresult[pcon_name] <- FALSE
    }
    if (any(is.na(pcon$pcon_code))) {
      message("FAIL - The pcon_code column must be completed for all parliamentary constituency data.")
      geography_level_completed_preresult[pcon_code] <- FALSE
    }
  }

  if ("Local authority district" %in% data[["geographic_level"]]) {
    lad <- filter(data, geographic_level == "Local authority district")
    if (any(is.na(lad$lad_name))) {
      message("FAIL - The lad_name column must be completed for all local authority district data.")
      geography_level_completed_preresult[lad_name] <- FALSE
    }
    if (any(is.na(lad$lad_code))) {
      message("FAIL - The lad_code column must be completed for all local authority district data.")
      geography_level_completed_preresult[lad_code] <- FALSE
    }
  }

  if ("Local enterprise partnership" %in% data[["geographic_level"]]) {
    lep <- filter(data, geographic_level == "Local enterprise partnership")
    if (any(is.na(lep$local_enterprise_partnership_name))) {
      message("FAIL - The local_enterprise_partnership_name column must be completed for all local enterprise partnership data.")
      geography_level_completed_preresult[local_enterprise_partnership_name] <- FALSE
    }
    if (any(is.na(lep$local_enterprise_partnership_code))) {
      message("FAIL - The local_enterprise_partnership_code column must be completed for all local enterprise partnership data.")
      geography_level_completed_preresult[local_enterprise_partnership_code] <- FALSE
    }
  }

  if ("Mayoral combined authority" %in% data[["geographic_level"]]) {
    mca <- filter(data, geographic_level == "Mayoral combined authority")
    if (any(is.na(mca$mayoral_combined_authority_name))) {
      message("FAIL - The mayoral_combined_authority_name column must be completed for all mayoral combined authority data.")
      geography_level_completed_preresult[mayoral_combined_authority_name] <- FALSE
    }
    if (any(is.na(mca$mayoral_combined_authority_code))) {
      message("FAIL - The mayoral_combined_authority_code column must be completed for all mayoral combined authority data.")
      geography_level_completed_preresult[mayoral_combined_authority_code] <- FALSE
    }
  }

  if ("Opportunity area" %in% data[["geographic_level"]]) {
    oa <- filter(data, geographic_level == "Opportunity area")
    if (any(is.na(oa$opportunity_area_name))) {
      message("FAIL - The opportunity_area_name column must be completed for all opportunity area data.")
      geography_level_completed_preresult[opportunity_area_name] <- FALSE
    }
    if (any(is.na(oa$opportunity_area_code))) {
      message("FAIL - The opportunity_area_code column must be completed for all opportunity area data.")
      geography_level_completed_preresult[opportunity_area_code] <- FALSE
    }
  }

  if ("Ward" %in% data[["geographic_level"]]) {
    ward <- filter(data, geographic_level == "Ward")
    if (any(is.na(ward$ward_name))) {
      message("FAIL - The ward_name column must be completed for all ward data.")
      geography_level_completed_preresult[ward_name] <- FALSE
    }
    if (any(is.na(ward$ward_code))) {
      message("FAIL - The ward_code column must be completed for all ward data.")
      geography_level_completed_preresult[ward_code] <- FALSE
    }
  }

  if ("MAT" %in% data[["geographic_level"]]) {
    mat <- filter(data, geographic_level == "MAT")
    if (any(is.na(mat$trust_name))) {
      message("FAIL - The trust_name column must be completed for all MAT data.")
      geography_level_completed_preresult[trust_name] <- FALSE
    }
    if (any(is.na(mat$trust_id))) {
      message("FAIL - The trust_id column must be completed for all MAT data.")
      geography_level_completed_preresult[trust_id] <- FALSE
    }
  }

  if ("Sponsor" %in% data[["geographic_level"]]) {
    sponsor <- filter(data, geographic_level == "Sponsor")
    if (any(is.na(sponsor$sponsor_name))) {
      message("FAIL - The sponsor_name column must be completed for all sponsor data.")
      geography_level_completed_preresult[sponsor_name] <- FALSE
    }
    if (any(is.na(sponsor$sponsor_id))) {
      message("FAIL - The sponsor_id column must be completed for all sponsor data.")
      geography_level_completed_preresult[sponsor_id] <- FALSE
    }
  }

  region_both_complete_check <- function(data) {
    if (("region_code" %in% names(data)) && ("region_name" %in% names(data))) {
      if (is.na(data[["region_code"]]) && !is.na(data[["region_name"]])) {
        message("FAIL - You must include the region_code when there is a region_name.")
        geography_level_completed_preresult[rcode_missing] <- FALSE
      }
      if (is.na(data[["region_name"]]) && !is.na(data[["region_code"]])) {
        message("FAIL - You must include the region_code when there is a region_name.")
        geography_level_completed_preresult[rname_missing] <- FALSE
      }
    }
  }

  apply(data, 1, region_both_complete_check)

  if (FALSE %in% geography_level_completed_preresult) {
    assign("geography_level_completed_result", FALSE, envir = .GlobalEnv)
  } else {
    message("PASS - Your geographic columns are completed as expected.")
    assign("geography_level_completed_result", TRUE, envir = .GlobalEnv)
  }
}
