# Band Origins Ranking Script

This project contains a SQL script to rank the origins of bands based on the number of (non-unique) fans.

## Requirements

- MySQL 5.7 or higher
- The script can be executed on any database.

## Script Details

The script aggregates and ranks countries by the total number of fans associated with bands from each country.

## Usage

To execute the script, run the following command:

```bash
mysql -uroot -p <database_name> < 2-fans.sql