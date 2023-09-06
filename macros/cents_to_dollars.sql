{% macro cents_to_dollars(column, precision=2) %}

({{column}}/100):: numeric(16,{{precision}})


{% endmacro %}