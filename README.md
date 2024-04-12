# Esseyi 🌍

Esseyi is the first pan-African portal allowing the youth of the continent to orient themselves, study, and work in Africa.

Esseyi, which means "Knowledge" in Ikposso (a language spoken in Togo), aims to digitalize the African student ecosystem:

- Orientation, application, and coaching of students
- Selection and recruitment by Higher Education Institutions
- Validation of diplomas, results, and certificates issued
- Improving the employability of students after graduation
---
**Business Demand Overview**
- Reporter: Emeric / CEO
- Esseyi Objective: to digitalize the African student ecosystem (secondary education)
- Value of Change / project objective: to provide an overview of the activity to date + a management tool, to provide business recommendations
- Necessary Systems: SQL, Power BI, CRM (Bubble)
- Other Relevant Info: all data has been extracted in .csv format in March 2024
---
**User stories**

| No # | As a (role) | I want (request / demand) | So that I (user value) | Acceptance Criteria |
| --- | --- | --- | --- | --- |
| 1 | CEO | To have an overview of Esseyi's data and activity to date | To manage the activity, Identify top/bottom by category, Guide acquisition strategy | Power BI dashboard with key information (number of countries in the catalog, establishments, courses, students, geographical distribution) |
| 2 | CEO | To acquire new institutions | To better meet the needs of students | Power BI dashboard to compare the courses offered with the students' preferences, Completion rate of existing information |
| 3 | CEO | To acquire new students | To better meet the needs of institutions | Power BI dashboard to compare the entry level to the required level, completion rate of information (social networks, emails, etc.) |
| 4 | Institution | A detailed overview of registered users (by country, by course, by, etc.) | To provide additional information, To encourage registration | Power BI dashboard with detailed information on user registration, segmented by country, course, etc. |
| 5 | Student | A detailed overview of available institutions and courses | To compare and choose the best institutions based on my criteria (nationality, geographical, academic) | Power BI dashboard providing a comparative analysis of institution and course offerings, allowing students to compare levels and make informed choices |

---

**Data cleaning**

```sql
-- Identification des valeurs manquantes
SELECT 
    SUM(CASE WHEN [Adresse] IS NULL THEN 1 ELSE 0 END) AS Adresse,
    SUM(CASE WHEN [Adresse_email] IS NULL THEN 1 ELSE 0 END) AS Adresse_email,
    SUM(CASE WHEN [Année_de_création] IS NULL THEN 1 ELSE 0 END) AS Année_de_création,
    SUM(CASE WHEN [Code] IS NULL THEN 1 ELSE 0 END) AS Code,
    SUM(CASE WHEN [Description_courte] IS NULL THEN 1 ELSE 0 END) AS Description_courte,
    SUM(CASE WHEN [Description_détaillée] IS NULL THEN 1 ELSE 0 END) AS Description_détaillée,
    SUM(CASE WHEN [ID_Esseyi] IS NULL THEN 1 ELSE 0 END) AS ID_Esseyi,
    SUM(CASE WHEN [Nom] IS NULL THEN 1 ELSE 0 END) AS Nom,
    SUM(CASE WHEN [Pays] IS NULL THEN 1 ELSE 0 END) AS Pays,
    SUM(CASE WHEN [Région] IS NULL THEN 1 ELSE 0 END) AS Région,
    SUM(CASE WHEN [Site_web] IS NULL THEN 1 ELSE 0 END) AS Site_web,
    SUM(CASE WHEN [Type] IS NULL THEN 1 ELSE 0 END) AS Type,
    SUM(CASE WHEN [Téléphone] IS NULL THEN 1 ELSE 0 END) AS Téléphone,
    SUM(CASE WHEN [Ville] IS NULL THEN 1 ELSE 0 END) AS Ville,
    SUM(CASE WHEN [Creation_Date] IS NULL THEN 1 ELSE 0 END) AS Creation_Date,
    SUM(CASE WHEN [unique_id] IS NULL THEN 1 ELSE 0 END) AS unique_id
FROM [Esseyi].[dbo].[Etablissements]
```
