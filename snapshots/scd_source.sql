{% snapshot scd_sources %}

{{
   config(
       target_schema='DBT_MUBASHIR',
       unique_key='id',
       strategy='check',
       check_cols = ['name']
   )
}}

select * FROM {{ source('airbnb', 'source') }}

{% endsnapshot %}