# 🍕 Pizza Sales Analysis

## 📌 One-Line Summary
End-to-end analysis of pizza sales data using **SQL + Power BI**, uncovering customer preferences, sales trends, and revenue insights.

---

## 📖 Overview
This project explores pizza sales data to identify top-selling products, revenue trends, and customer behavior.  
Using SQL for querying and Power BI for visualization, I created an interactive dashboard that helps businesses optimize their sales strategy and operations.

---

## ❓ Problem Statement
A pizza store wants to analyze its sales to:  
- Identify **top-selling pizzas** and revenue drivers.  
- Understand **customer preferences by size and category**.  
- Discover **peak sales hours** for better staffing and inventory planning.  
- Track **revenue growth trends** to make informed business decisions.  

---

## 📂 Dataset
The dataset includes 4 relational tables:  
- **orders** → order date & time  
- **order_details** → order-wise pizza quantities  
- **pizzas** → pizza IDs, sizes, and prices  
- **pizza_types** → pizza names & categories  

**Size:** 21,350 orders, 4 CSV files.  

---

## 🛠️ Tools & Technologies
- **SQL (MySQL/SQL Server)** – Data analysis & cleaning  
- **Power BI** – Dashboard & visualizations  
- **Excel/CSV** – Dataset format  

---

## ⚙️ Methods
- **SQL Queries:** Joins, GROUP BY, Aggregations, Window Functions  
- **KPIs Calculated:** Total Revenue, Total Orders, Category Contribution, Pizza Rankings  
- **Power BI Visuals:** Cards, Bar Charts, Pie Charts, Line Charts, Trend Analysis  

---

## 🔑 Key Insights
- 🧾 **Total Orders:** 21,350  
- 💰 **Total Revenue:** $817,860.05  
- 🏆 **Highest Priced Pizza:** The Greek Pizza – $35.95  
- 📏 **Most Ordered Size:** Large (18,526 orders)  
- 🍕 **Top 5 Most Ordered Pizzas:**  
  1. The Classic Deluxe Pizza – 2,453  
  2. The Barbecue Chicken Pizza – 2,432  
  3. The Hawaiian Pizza – 2,422  
  4. The Pepperoni Pizza – 2,418  
  5. The Thai Chicken Pizza – 2,371  

### 📂 Category-Wise Revenue Contribution
- Classic → **26.91%**  
- Supreme → **25.46%**  
- Chicken → **23.96%**  
- Veggie → **23.68%**  

### ⏰ Peak Sales Hours
- 12 PM → 2,520 orders  
- 1 PM → 2,455 orders  
- 6 PM → 2,399 orders  

### 💵 Top Pizzas by Revenue
- The Thai Chicken Pizza → $43,434.25  
- The Barbecue Chicken Pizza → $42,768.00  
- The California Chicken Pizza → $41,409.50  

---

## 📊 Dashboard / Outputs
Power BI Dashboard includes:  
- KPIs (Total Orders, Total Revenue)  
- Revenue by Pizza Category & Size  
- Top 5 Pizzas by Orders & Revenue  
- Sales Trends by Hour of Day  
- Cumulative Revenue Growth  

---

## ▶️ How to Run This Project
1. Clone this repository.  
2. Import the CSV files (`orders.csv`, `order_details.csv`, `pizzas.csv`, `pizza_types.csv`) into your SQL database.  
3. Run the SQL queries provided in `Pizza Sales.sql`.  
4. Open the Power BI file `PIZZA.pbix` to view the dashboard.

---

## 🏆 Result & Conclusion
- The **Classic Deluxe Pizza** was the most popular, while **Thai Chicken Pizza generated the most revenue**.  
- **Large size pizzas** dominated orders (18K+ sales).  
- **Peak demand** occurred during lunch (12–2 PM) and dinner (6–8 PM).  
- **Classic & Supreme categories** together contributed **52%+ of revenue**.  

**Business Impact:**  
These insights can help the store:  
- Promote high-revenue pizzas with combos.  
- Manage staffing and inventory during peak hours.  
- Experiment with pricing & offers on low-performing categories.  

---

## ✍️ Author & Contact
**Author:** Taniksha  
- 📧 Email: *[tanikshasaini2003@gmail.com]*  
- 🐙 GitHub: *[github.com/Taniksha003]*  
