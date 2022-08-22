view: call_sales {
  sql_table_name: online_sales.Call_Sales ;;

  dimension: call_center_key {
    type: number
    sql: ${TABLE}.call_center_key ;;
  }

  dimension: cc_employees {
    type: number
    sql: ${TABLE}.cc_employees ;;
  }

  dimension: cc_hours {
    type: string
    sql: ${TABLE}.cc_hours ;;
  }

  dimension: cc_manager {
    type: string
    sql: ${TABLE}.cc_manager ;;
  }

  dimension: cc_name {
    type: string
    sql: ${TABLE}.cc_name ;;
  }

  dimension: product_key {
    type: number
    sql: ${TABLE}.product_key ;;
  }

  dimension: sales_dollar_amount {
    type: number
    sql: ${TABLE}.sales_dollar_amount ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.transaction_type ;;
  }

  measure: count {
    type: count
    drill_fields: [cc_name]
  }
}
