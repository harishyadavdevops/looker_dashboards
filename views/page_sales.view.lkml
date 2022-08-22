view: page_sales {
  sql_table_name: online_sales.Page_Sales ;;

  dimension: net_dollar_amount {
    type: number
    sql: ${TABLE}.net_dollar_amount ;;
  }

  dimension: page_number {
    type: number
    sql: ${TABLE}.page_number ;;
  }

  dimension: page_type {
    type: string
    sql: ${TABLE}.page_type ;;
  }

  dimension: product_version {
    type: number
    sql: ${TABLE}.product_version ;;
  }

  dimension: sales_quantity {
    type: number
    sql: ${TABLE}.sales_quantity ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
