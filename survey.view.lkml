view: survey {
  sql_table_name: stuloco.survey ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: aspart {
    type: number
    sql: ${TABLE}.aspart ;;
  }

  dimension: beingpart {
    type: number
    sql: ${TABLE}.beingpart ;;
  }

  dimension: car {
    type: string
    sql: ${TABLE}.car ;;
  }

  dimension: college {
    type: string
    sql: ${TABLE}.college ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: gpa {
    type: number
    sql: ${TABLE}.gpa ;;
  }

  dimension: identify {
    type: number
    sql: ${TABLE}.identify ;;
  }

  dimension: living {
    type: string
    sql: ${TABLE}.living ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
