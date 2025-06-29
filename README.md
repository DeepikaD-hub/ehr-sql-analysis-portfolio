# 📊 EHR SQL Analysis Portfolio

A professional SQL-based healthcare analytics project using simulated Electronic Health Record (EHR) data to extract operational insights, diagnose performance bottlenecks, and recommend data-driven improvements.

---
| 📌 Feature | 💬 Details |
|-----------|------------|
| 📁 Dataset | Simulated Electronic Health Records (EHR) |
| 🔍 Focus Area | Operational Efficiency & Bottleneck Analysis |
| 🛠️ Tools Used | MySQL, Power BI, GitHub |
| 📈 Output | SQL Queries, Insights, Visualizations |


## 🩺 Dataset Overview

This project uses a simulated EHR dataset containing patient appointments, departments, diagnoses, check-in times, and no-show information. The goal is to use SQL to uncover inefficiencies in hospital operations and propose practical solutions based on data.

---

## 🧠 Business Questions & SQL Queries

### 1. 📌 What’s the average patient wait time per department?
- **Insight:** Pediatrics has the highest average wait time at 17.6 mins.
- **Implication:** Requires attention to operational flow or patient load.

### 2. 📌 Which doctors have the longest average wait times?
- **Insight:** Dr. D07 (Pediatrics) has the highest wait at 21.7 mins.
- **Deeper Link:** High wait tied to fewer doctors and potential inefficiency.

### 3. ⏱️ What are the most common check-in hours?
- **Insight:** Sparse check-ins across all hours suggest either a highly flexible system or poor appointment management.

### 4. 🚫 What’s the difference in wait time between patients who show up vs. those who don’t?
- **Insight:** No-show patients had `NULL` check-in times → flag for data quality monitoring.

### 5. 🧾 Which patients faced consistently long wait times?
- **Insight:** No patients had consistently long waits (>30 mins), indicating average-level congestion.

### 6. 🧬 Which diagnosis codes are associated with longer wait times?
- **Insight:** Diagnoses like `R50`, `M54`, and `I25` tend to correlate with higher wait times.
- **Deeper Analysis:** Cross-link with department and doctor ID to detect operational bottlenecks.

### 7. 🧑‍⚕️ How many doctors work in each department?
- **Insight:**
  - Pediatrics: 2 doctors
  - General Medicine: 2 doctors
  - Cardiology: 2 doctors
  - Orthopedics: 1 doctor
  - Dermatology: 1 doctor
- **Implication:** Orthopedics has a staffing bottleneck.

---

## 🔍 Root Cause Analysis Summary

| Department       | Problem Type          | Explanation |
|------------------|-----------------------|-------------|
| Orthopedics      | Staffing Bottleneck   | Only 1 doctor leads to elevated wait times. |
| Pediatrics       | Doctor Efficiency     | 1 doctor (D07) has ~67% higher wait time than peer. |
| General Medicine | Patient Distribution  | Slight imbalance in appointment load across doctors. |

---

## 📌 Data Quality Note

Rows with `NULL` average wait times (especially in diagnosis analysis) were due to missing `checkin_time`. These have been flagged for review as part of data governance recommendations.

---
## 🌟 Key Highlights

- 🔎 Identified departments and doctors with the longest wait times
- 📉 Revealed high no-show rates tied to long delays
- 🛠️ Used real SQL to extract insights from relational healthcare data
- 📊 Created Power BI visualizations for executive reporting

  
---

## 📈 Next Steps

🔄 Power BI dashboards (in progress)  
📂 Weighted wait time analysis  
📊 No-show behavior trends  
📌 Diagnosis severity mapping

---

## 🧠 Skills Demonstrated

- Advanced SQL (GROUP BY, JOINs, aggregates)
- Healthcare process analysis
- Data storytelling
- Root-cause thinking
- GitHub project organization


---

## 💼 About Me

Hi, I’m Deepika — an experienced Operations Manager transitioning into tech-driven roles in healthcare, data, and project management. This portfolio showcases my ability to solve real-world operational challenges using data.

Let’s connect on [LinkedIn](https://www.linkedin.com/in/deepika-goel-baba771b9/) 🤝

