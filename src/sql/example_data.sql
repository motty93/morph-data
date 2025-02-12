{{
    config(
        name = "example_data",
        connection = "DUCKDB"
    )
}}

select
    *
from
    read_csv_auto("./data/Traffic_Orders_Demo_Data.csv")
where
    Date >= '2023-01-01'
