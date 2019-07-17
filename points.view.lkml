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

  dimension: point_rounded {
    type: location
    sql_latitude: ${latitude_rounded} ;;
    sql_longitude: ${longitude_rounded};;
  }

  dimension: latitude_rounded {
    type: string
    sql: SUBSTR(${TABLE}.latitude, 0, 5) ;;
  }

  dimension: longitude_rounded {
    type: string
    sql: SUBSTR(${TABLE}.longitude, 0, 5) ;;
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
    timeframes: [second, hour] # valid timeframes described below
    sql: ${TABLE}.timestamp ;;  # often this is a single database column
    datatype: timestamp
    convert_tz: yes
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
