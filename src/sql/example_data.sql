{{
    config(
        name = "example_data",
        connection = "DUCKDB"
        result_cache_ttl = 3600
    )
}}

select
    *
from
    read_csv_auto("./data/Traffic_Orders_Demo_Data.csv")
where
    Date >= '2023-01-01'
