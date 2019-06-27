connection: "stuloco"

# include all the views
include: "*.view"

datagroup: stuloco_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: stuloco_default_datagroup

explore: points {}

explore: survey {}
