connection: "stuloco"

# include all the views
include: "*.view"

datagroup: stuloco_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: stuloco_default_datagroup

explore: points {
  join: survey {
    type: cross
    relationship: many_to_one
    sql_on: ${survey.id} = ${points.device_id} ;;
  }
  join: labels {
    type: left_outer
    relationship: many_to_one
    sql_on: ${labels.p3_key} = ${points.p3_key} ;;
  }
}

explore: survey {}
