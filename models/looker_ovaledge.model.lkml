connection: "looker_vertica_01"

# include all the views
include: "/views/**/*.view"

datagroup: looker_ovaledge_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_ovaledge_default_datagroup

explore: online_sales_fact {
  join: online_page_dimension {
    relationship: many_to_one
    sql_on: ${online_page_dimension.online_page_key} = ${online_sales_fact.online_page_key} ;;
  }

  join: call_center_dimension {
    relationship: many_to_one
    sql_on: ${call_center_dimension.call_center_key} = ${online_sales_fact.call_center_key} ;;
  }

}
