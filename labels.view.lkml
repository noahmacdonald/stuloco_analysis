view: labels {
  sql_table_name: stuloco.labels ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: p3_key {
    type: string
    sql: CONCAT(${lat}, ${long}) ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: long {
    type: number
    sql: ${TABLE}.`long` ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
