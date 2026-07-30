# Exclusive — E-Commerce Data Analysis

End-to-end analysis of 10,500+ e-commerce transactions: data cleaning, SQL analysis, automated Excel reporting, and Power BI-ready dashboards, presented as a stakeholder-facing case study.

**[View the live case study →](#)** *(replace `#` with your GitHub Pages URL once deployed)*

## What this project covers

- **Data cleaning** — standardized 6 messy fields (category casing, payment method labels, city aliases, currency-prefixed prices, 4 mixed date formats) and removed duplicate rows across 10,545 raw transaction records
- **SQL analysis** — monthly revenue trends, category performance, payment method mix, customer retention rate, and order fulfilment health
- **Automated Excel reporting** — a workbook driven entirely by `SUMIFS`/`COUNTIFS` formulas (not hardcoded values), so it recalculates when new transactions are added
- **Power BI-ready** — the cleaned dataset is structured for direct import into Power BI for interactive drill-down dashboards
- **Stakeholder reporting** — a written insight report summarizing KPIs and recommendations in business language

## Key results

| Metric | Value |
|---|---|
| Total revenue analyzed | ₹9.20 Cr |
| Completed orders | 9,586 |
| Average order value | ₹9,593 |
| Customer retention rate | 67.1% |
| Cancellation rate | 8.7% |

## Tech stack

`SQL` · `Microsoft Excel` · `Power BI` · `Python` (data cleaning)

## Repo contents

| File | Description |
|---|---|
| `index.html` | The case study page (this project's write-up, with charts) |
| `clean_transactions.csv` | 10,502 cleaned, analysis-ready transaction records |
| `analysis_queries.sql` | The SQL queries behind every figure in the case study |
| `Exclusive_Ecommerce_Analysis.xlsx` | Reporting workbook — raw data + formula-driven pivot summaries and charts |
| `Exclusive_Stakeholder_Insight_Report.docx` | One-page business insight report with recommendations |

## Running the SQL locally

The queries in `analysis_queries.sql` are written for SQLite but use standard ANSI SQL, so they run in MySQL/PostgreSQL with minimal changes. To try them locally:

```bash
sqlite3 exclusive.db
.mode csv
.import clean_transactions.csv transactions
.read analysis_queries.sql
```

## About

Built by **Debasish Panda** — B.Tech Computer Science (2025), pursuing an MSc in Data Analytics.
# Exclusive — E-Commerce Data Analysis

End-to-end analysis of 10,500+ e-commerce transactions: data cleaning, SQL analysis, automated Excel reporting, and Power BI-ready dashboards, presented as a stakeholder-facing case study.

**[View the live case study →](#)** *(replace `#` with your GitHub Pages URL once deployed)*

## What this project covers

- **Data cleaning** — standardized 6 messy fields (category casing, payment method labels, city aliases, currency-prefixed prices, 4 mixed date formats) and removed duplicate rows across 10,545 raw transaction records
- **SQL analysis** — monthly revenue trends, category performance, payment method mix, customer retention rate, and order fulfilment health
- **Automated Excel reporting** — a workbook driven entirely by `SUMIFS`/`COUNTIFS` formulas (not hardcoded values), so it recalculates when new transactions are added
- **Power BI-ready** — the cleaned dataset is structured for direct import into Power BI for interactive drill-down dashboards
- **Stakeholder reporting** — a written insight report summarizing KPIs and recommendations in business language

## Key results

| Metric | Value |
|---|---|
| Total revenue analyzed | ₹9.20 Cr |
| Completed orders | 9,586 |
| Average order value | ₹9,593 |
| Customer retention rate | 67.1% |
| Cancellation rate | 8.7% |

## Tech stack

`SQL` · `Microsoft Excel` · `Power BI` · `Python` (data cleaning)

## Repo contents

| File | Description |
|---|---|
| `index.html` | The case study page (this project's write-up, with charts) |
| `clean_transactions.csv` | 10,502 cleaned, analysis-ready transaction records |
| `analysis_queries.sql` | The SQL queries behind every figure in the case study |
| `Exclusive_Ecommerce_Analysis.xlsx` | Reporting workbook — raw data + formula-driven pivot summaries and charts |
| `Exclusive_Stakeholder_Insight_Report.docx` | One-page business insight report with recommendations |

## Running the SQL locally

The queries in `analysis_queries.sql` are written for SQLite but use standard ANSI SQL, so they run in MySQL/PostgreSQL with minimal changes. To try them locally:

```bash
sqlite3 exclusive.db
.mode csv
.import clean_transactions.csv transactions
.read analysis_queries.sql
```

## About

Built by **Debasish Panda** — B.Tech Computer Science (2025), pursuing an MSc in Data Analytics.
