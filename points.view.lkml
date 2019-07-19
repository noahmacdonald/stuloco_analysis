view: points {
  sql_table_name: stuloco.points ;;

  dimension: device_id {
    type: number
    sql: ${TABLE}.device_id ;;
  }

  dimension: point {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

  dimension: p3_key {
    type: string
    sql: CONCAT(${latitude_rounded3}, ${longitude_rounded3}) ;;
  }

  dimension: point_rounded3 {
    type: location
    sql_latitude: ${latitude_rounded3} ;;
    sql_longitude: ${longitude_rounded3};;
  }

  dimension: point_rounded4 {
    type: location
    sql_latitude: ${latitude_rounded4} ;;
    sql_longitude: ${longitude_rounded4};;
  }

  dimension: latitude_rounded3 {
    type: number
    sql: ROUND(${TABLE}.latitude, 3) ;;
  }

  dimension: longitude_rounded3 {
    type: number
    sql: ROUND(${TABLE}.longitude, 3) ;;
  }

  dimension: latitude_rounded4 {
    type: number
    sql: ROUND(${TABLE}.latitude, 4) ;;
  }

  dimension: longitude_rounded4 {
    type: number
    sql: ROUND(${TABLE}.longitude, 4) ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

#   dimension: timestamp {
#     type: string
#     sql: ${TABLE}.timestamp ;;
#   }
#
  dimension_group: timestamp {
    type: time
    timeframes: [second, hour, hour_of_day] # valid timeframes described below
    sql: ${TABLE}.timestamp ;;  # often this is a single database column
    convert_tz: yes
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
