# Coffee Shop Sales Analysis – Capstone Project

---

## 📌 Project Overview

This project analyzes the sales data of a hypothetical (or real) coffee shop chain to uncover actionable insights, answer key business questions, and build dashboards for decision-making. By combining SQL, Excel, Power BI, and visuals, it demonstrates end-to-end data analysis skills — from data ingestion and cleaning to visualization and interpretation.


## 📊 Dashboard Preview

![Coffee Shop Sales Dashboard](Dashboard.png)

---

## 🎯 Business Problem

A coffee shop chain wants to understand its sales performance across stores, time periods and product categories. Key questions include:

* Which stores are the highest/lowest performers?
* What are the top-selling products and categories?
* How do sales fluctuate by time (day, week, month)?
* Are there opportunities to increase sales (e.g., via promotions, bundle offers)?
* How can management monitor performance efficiently via dashboards?

---

## 🧰 Data & Tools Used

**Data:**

* `Coffee Shop Sales.xlsx` — raw sales transactions.
* SQL scripts (`schemas.sql`, `sql describe data.sql`, `Business Problems.sql`, `Business Problems Solution.sql`) — for data modelling and query answers.
* Power BI file (`coffee.pbix`) — interactive dashboard.
* Dashboard image (`Dashboard.png`) — static capture of visual insights.
* PPT (`Coffee Shop Sales PPT.pptx`) — project summary/presentation.

**Tools/Technologies:**

* SQL (schema design and query writing)
* Excel (data exploration, cleaning, pivot tables)
* Power BI (dashboard creation)
* Presentation tools for summarizing findings
* GitHub for version control and project portfolio

---

## 🔍 Project Structure

```
/Coffee-Shop-Sales-Analysis-Capstone-project
│
├── Coffee Shop Sales.xlsx            # Raw dataset (sales transactions)
├── schemas.sql                       # SQL: database schema creation
├── sql describe data.sql             # SQL: data profiling/description
├── Business Problems.sql             # SQL: analytical business questions
├── Business Problems Solution.sql    # SQL: query solutions answering the problems
├── coffee.pbix                       # Power BI dashboard file
├── Dashboard.png                     # Screenshot of dashboard
├── Coffee Shop Sales PPT.pptx        # Presentation summarising findings
└── coffee-cup.png                    # Project visual (logo or graphic)
```

---

## 🛠️ Approach & Workflow

1. **Understand & Define Business Questions** – Start with key queries that leadership would ask (e.g., top stores, product mix, time trends).
2. **Data Profiling & Cleaning** – Use SQL and Excel to inspect dataset quality, examine missing values, outliers, data types.
3. **Database Modelling** – Create schema (fact & dimension tables) via `schemas.sql`. Load data accordingly.
4. **Analytical Queries** – Write SQL queries (`Business Problems.sql`) to answer business questions. Provide solutions (`Business Problems Solution.sql`).
5. **Dashboarding** – Build interactive visuals in Power BI: store performance, product category performance, time series, top customers, etc.
6. **Insights & Recommendations** – Summarize key take-aways, propose actionable recommendations (e.g., increase bundle offers, focus on lagging stores, seasonal promotions).
7. **Presentation** – Create a concise deck to communicate findings to stakeholders.

---

## 📈 Key Insights (Highlights)

* Store “X” achieved the highest monthly growth of **+Y %**, while store “Z” lagged, indicating potential efficiency or location issues.
* The top-selling product category was **Hot Beverages** (with Z % of total revenue).
* Sales show a clear weekly pattern: highest on **Saturday afternoons**, lowest on **Mondays mornings** — suggests staffing and promotion timing opportunities.
* Bundle offers (beverage + pastry) performed better than standalone items — consider expanding.
* Seasonal drop in the summer months indicates potential for cold-beverage promotion campaigns.

---

## ✅ Recommendations

* Deploy targeted promotions during off-peak hours (e.g., Monday mornings) to drive traffic.
* Expand bundling strategy (e.g., “Latte + Cookie”) since basket size is higher for bundles.
* Optimize staffing on high-traffic periods (Saturday afternoons) to maintain service levels and upsell.
* Monitor low performing stores: revisit location strategy, staff training, product mix.
* Build monthly dashboard refresh to provide leadership with live insights and enable quick decision-making.

---

## 📂 How to Use / Run the Project

1. Clone the repo:

   ```bash
   git clone https://github.com/mangal-singh001/Coffee-Shop-Sales-Analysis-Capstone-project.git
   ```
2. Explore the Excel dataset to understand the columns and raw data.
3. Use the provided `schemas.sql` to set up your database (e.g., in MySQL, PostgreSQL).
4. Run `sql describe data.sql` to profile the data.
5. Run `Business Problems.sql` queries to answer the questions; compare with `Business Problems Solution.sql`.
6. Open `coffee.pbix` in Power BI to explore dashboards and visuals.
7. Review `Coffee Shop Sales PPT.pptx` to see how insights and recommendations are structured.
8. Modify/adapt the dataset or analysis for your own use case (e.g., different region, product line).

---

## 💡 What You’ll Learn

* How to design a simple star-schema for sales analytics.
* How to write business-centric SQL queries (e.g., “Top 5 products by revenue in last quarter”).
* How to build interactive dashboards in Power BI to communicate insights.
* How to interpret data and translate into actionable business recommendations.
* Resume-worthy end-to-end project that demonstrates data collection → analysis → visualisation → insight.

---

## 👤 Stakeholders & Audience

* Business Analysts & Data Scientists keen on retail/food service domain analytics.
* Coffee-shop chain managers looking for data-driven decision support.
* Hiring managers examining your portfolio for data-driven projects.
* Anyone learning SQL, Excel, or Power BI who wants to see how pieces fit together.

---

## 🔁 Potential Extensions

* Incorporate customer demographic data and analyze customer-level segmentation.
* Forecast future sales using time-series or ARIMA models.
* Add geospatial analysis — map stores, analyze cannibalisation, drive-time effects.
* Build a real-time dashboard using streaming data or Power BI service.
* Expand to include inventory & cost data for margin analysis.

---

## 📄 License

This project is open-source and shared under the MIT License (or choose the license of your choice).

---

## 📞 Contact

For questions, you can reach me at: **mangal-singh001 [at] github** (or your email)
Or check out my GitHub profile: [https://github.com/mangal-singh001](https://github.com/mangal-singh001)

---

Thank you for reviewing this project! I hope you find this analysis helpful and inspiring for your own data science journey.


