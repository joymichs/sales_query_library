## Sales Query Library

a retail store sales query library

### The Query Library Structure

```bash
├── sales_query_library
│   ├── analysis
│       ├── query-specific
│           ├── **.md
│           ├── **.sql
│   ├── data
│       ├── test_export.sql
│   ├── forcasts
│       ├── **.sql
│   ├── tests
│       ├── **.sql
│   ├── README.md
```

#### Analysis

Every analysis has a:

- SQL query
- Technical Implementation Documentation

#### Forcasts

- **Query for Forecast**: The forecast folder contains the SQL query used in data preparation for forecasting using the data source, `test_exports.sql`, in the `data` folder.
- **Link to Forecast**: The link to the sales forecast can be found at [SalesForcast](https://public.tableau.com/profile/joy.nwachukwu#!/vizhome/SalesForcast_15788398089730/SalesForcastfortheLastQuarteroftheYear2019)

#### Tests

Every SQL query has a test written to validate the result returned by the query
