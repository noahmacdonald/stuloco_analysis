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

  dimension: activity {
    type: string
    sql: ${TABLE}.activity ;;
  }

  dimension: lat {
    type: number
    hidden:  yes
    sql: ${TABLE}.lat ;;
  }

  dimension: long {
    type: number
    hidden:  yes
    sql: ${TABLE}.`long` ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
