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
    drill_fields: [id]
  }

  dimension: beingpart {
    type: number
    sql: ${TABLE}.beingpart ;;
    drill_fields: [id]
  }

  dimension: car {
    type: string
    sql: ${TABLE}.car ;;
    html:
       {% if value == 'Yes' %}
         <p style="color: green;">{{ rendered_value }}</p>
       {% else %}
         <p style="color: red;">{{ rendered_value }}</p>
       {% endif %};;
  }

  dimension: college {
    type: string
    sql: ${TABLE}.college ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
    html:
      {% if value == 'Female' %}
        <p style="color: pink;">{{ rendered_value }}</p>
      {% elsif value == 'Male' %}
        <p style="color: blue;">{{ rendered_value }}</p>
      {% else  %}
        <p style="color: grey;">{{ rendered_value }}</p>
      {% endif %};;
  }

  dimension: gpa {
    type: number
    sql: ${TABLE}.gpa ;;
  }

  dimension: gpa_tier {
    type: tier
    tiers: [0, 2, 2.5, 3, 3.5, 4, 5]
    style: interval # the default value, could be excluded
    sql: ${gpa} ;;
  }

  dimension: identify {
    type: number
    sql: ${TABLE}.identify ;;
    drill_fields: [id]
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
