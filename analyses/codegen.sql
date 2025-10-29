{{ codegen.generate_source(schema_name= 'public', database_name= 'silverscreen') }}

{{ codegen.generate_model_yaml(

    model_names=['stg_invoices', 'stg_movie_catalogue', 'stg_nj_001']

) }}

{{ codegen.generate_model_yaml(

    model_names=['int_monthly_rev', 'int_movies']

) }}

{{ codegen.generate_model_yaml(

    model_names=['mart_profitability']

) }}