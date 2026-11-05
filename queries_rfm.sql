-- ============================================
-- QUERY 1: Análise RFM Básica
-- Valida os dados de RFM já calculados
-- ============================================

SELECT 
    CustomerID,
    Recency,
    Frequency,
    Monetary,
    Segment,
    Cluster,
    ROUND(Monetary / Frequency, 2) AS ticket_medio,
    CASE 
        WHEN Monetary > 5000 THEN 'Alto Valor'
        WHEN Monetary > 2000 THEN 'Médio Valor'
        ELSE 'Baixo Valor'
    END AS classificacao_valor
FROM customers_segmented
ORDER BY Monetary DESC;


-- ============================================
-- QUERY 2: Validação de Segmentação RFM
-- Mostra distribuição de clientes por segmento
-- ============================================

SELECT 
    Segment,
    COUNT(*) AS total_clientes,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customers_segmented), 2) AS percentual,
    ROUND(AVG(Recency), 2) AS recencia_media,
    ROUND(AVG(Frequency), 2) AS frequencia_media,
    ROUND(AVG(Monetary), 2) AS monetary_medio,
    MIN(Monetary) AS monetary_minimo,
    MAX(Monetary) AS monetary_maximo
FROM customers_segmented
GROUP BY Segment
ORDER BY COUNT(*) DESC;


-- ============================================
-- QUERY 3: Receita Mensal e Crescimento MoM
-- Análise temporal das transações
-- ============================================

WITH receita_mensal AS (
    SELECT 
        STRFTIME('%Y-%m', InvoiceDate) AS mes,
        SUM(Quantity * UnitPrice) AS receita_mes,
        COUNT(DISTINCT CustomerID) AS clientes_ativos,
        COUNT(DISTINCT InvoiceNo) AS total_invoices
    FROM online_retail
    WHERE Quantity > 0 AND UnitPrice > 0
    GROUP BY STRFTIME('%Y-%m', InvoiceDate)
)
SELECT 
    mes,
    receita_mes,
    clientes_ativos,
    total_invoices,
    LAG(receita_mes) OVER (ORDER BY mes) AS receita_mes_anterior,
    ROUND(
        ((receita_mes - LAG(receita_mes) OVER (ORDER BY mes)) / 
         LAG(receita_mes) OVER (ORDER BY mes) * 100), 
        2
    ) AS crescimento_percentual,
    SUM(receita_mes) OVER (ORDER BY mes) AS receita_acumulada
FROM receita_mensal
ORDER BY mes;


-- ============================================
-- QUERY 4: Comportamento de Compra por Segmento
-- Análise de padrões de compra por segmento RFM
-- ============================================

WITH compras_por_cliente AS (
    SELECT 
        c.CustomerID,
        c.Segment,
        c.Recency,
        c.Frequency,
        c.Monetary,
        COUNT(DISTINCT o.InvoiceNo) AS total_invoices,
        SUM(o.Quantity * o.UnitPrice) AS total_gasto,
        COUNT(DISTINCT o.StockCode) AS produtos_unicos,
        ROUND(AVG(o.Quantity), 2) AS quantidade_media,
        ROUND(AVG(o.UnitPrice), 2) AS preco_medio
    FROM customers_segmented c
    LEFT JOIN online_retail o ON c.CustomerID = o.CustomerID
    GROUP BY c.CustomerID, c.Segment
)
SELECT 
    Segment,
    COUNT(*) AS total_clientes,
    ROUND(AVG(Recency), 2) AS recencia_media,
    ROUND(AVG(Frequency), 2) AS frequencia_media,
    ROUND(AVG(Monetary), 2) AS monetary_medio,
    ROUND(AVG(total_invoices), 2) AS invoices_medio,
    ROUND(AVG(total_gasto), 2) AS gasto_medio,
    ROUND(AVG(produtos_unicos), 2) AS produtos_unicos_medio,
    ROUND(AVG(quantidade_media), 2) AS quantidade_media_geral,
    ROUND(AVG(preco_medio), 2) AS preco_medio_geral
FROM compras_por_cliente
GROUP BY Segment
ORDER BY monetary_medio DESC;
