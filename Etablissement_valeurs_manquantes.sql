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