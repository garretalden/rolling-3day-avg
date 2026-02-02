## Rolling 3-Day Average in SQL

This repository demonstrates how to compute a trailing 3-day rolling average
using SQL window functions.

Rolling average on Jan 31: 682.15

### Notes
- Uses ORDER BY date inside the window function
- Does not require the underlying table to be pre-sorted
- Includes handling for sparse dates vs row-based windows

### File
- `rolling_3day_average.sql`
