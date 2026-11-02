# 🎯 Customer Segmentation Analysis - RFM Model

![Status](https://img.shields.io/badge/Status-Completo-brightgreen?style=flat-square)
![Power BI](https://img.shields.io/badge/Power%20BI-Desktop-yellow?style=flat-square)
![RFM Model](https://img.shields.io/badge/Model-RFM-blue?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)

> **Análise de Segmentação de Clientes usando o Modelo RFM (Recency, Frequency, Monetary) no Microsoft Power BI Desktop**

---

## 📊 Visão Geral

Este projeto implementa um **dashboard interativo** de segmentação de clientes baseado no modelo **RFM**, permitindo identificar padrões de comportamento e orientar estratégias de retenção, upsell e reativação.

**Desenvolvido em:** Microsoft Power BI Desktop  
**Data de Criação:** 1º de Novembro de 2026  
**Versão:** 1.0  
**Status:** ✅ Pronto para Apresentação

---

## 🎯 Objetivo

Segmentar a base de clientes em 4 grupos estratégicos (Champions, VIP Customers, Loyal, At Risk) para orientar ações de marketing e vendas baseadas em comportamento de compra.

---

## 📈 Métricas Principais

| Métrica | Valor | Descrição |
|---------|-------|-----------|
| **Total Customers** | 4.000 | Número total de clientes analisados |
| **Total Revenue** | R$ 8,91 Mi | Receita total gerada |
| **Avg Recency** | 92,54 dias | Dias médios desde última compra |
| **Avg Frequency** | 91,72 | Número médio de compras por cliente |

---

## 🔍 Segmentos de Clientes

### 🏆 Champions (Vermelho #FF6B6B)
- **Quantidade:** 4 clientes
- **Recência:** 2 dias (muito recente)
- **Frequência:** 5.807 compras (muito alta)
- **Valor Monetário:** R$ 70.925 (muito alto)
- **Ação:** Retenção prioritária, VIP Program exclusivo

### 💎 VIP Customers (Ouro #FFD93D)
- **Quantidade:** 6 clientes
- **Recência:** 7,67 dias (recente)
- **Frequência:** 826,83 compras (alta)
- **Valor Monetário:** R$ 190.863 (muito alto)
- **Ação:** Benefícios exclusivos, atendimento personalizado

### 💚 Loyal (Verde #6BCB77)
- **Quantidade:** 3.248 clientes (74,87% da base)
- **Recência:** 41,34 dias (moderada)
- **Frequência:** 104,58 compras (moderada)
- **Valor Monetário:** R$ 2.091 (moderado)
- **Ação:** Cross-sell, upsell, programas de fidelização

### ⚠️ At Risk (Azul #4D96FF)
- **Quantidade:** 1.080 clientes (24,9% da base)
- **Recência:** 247,31 dias (muito alta - inativo)
- **Frequência:** 27,79 compras (baixa)
- **Valor Monetário:** R$ 637 (baixo)
- **Ação:** Campanhas de reativação, ofertas especiais

---

## 📊 Componentes do Dashboard

### 1️⃣ KPI Cards (Topo)
Exibem as 4 métricas principais com formatação profissional:
- Valores em escala compacta (K, Mi)
- Sombras suaves para profundidade
- Bordas cinzas claras

### 2️⃣ Gráfico de Pizza
**Customer Distribution by Segment (%)**
- Distribuição percentual de clientes por segmento
- Rótulos com valores e percentuais
- Legenda interativa

### 3️⃣ Gráfico de Barras
**Revenue by Segment**
- Receita total por segmento em milhões
- Rótulos externos para fácil leitura
- Eixo Y em escala de milhões

### 4️⃣ Gráfico de Dispersão
**RFM Analysis (Recency vs Frequency)**
- Eixo X: Recência (dias)
- Eixo Y: Frequência (compras)
- Tamanho das bolhas: Proporcional ao Monetary
- Identifica clusters de comportamento

### 5️⃣ Tabela de Características
**Segment Characteristics**
- Resumo estatístico por segmento
- Cabeçalho azul corporativo
- Linhas alternadas para legibilidade

### 6️⃣ Filtros Interativos
- **Segment:** Seleção por segmento
- **Recency:** Slider para intervalo de dias
- **Monetary:** Slider para intervalo de valor
- Cross-filtering automático em todos os gráficos

---

## 🎨 Paleta de Cores

| Segmento | Código HEX | Uso |
|----------|-----------|-----|
| Champions | `#FF6B6B` | Vermelho Coral |
| VIP Customers | `#FFD93D` | Amarelo Ouro |
| Loyal | `#6BCB77` | Verde Esmeralda |
| At Risk | `#4D96FF` | Azul Vivo |
| Títulos | `#2C3E50` | Cinza Escuro |
| Header Tabela | `#0066CC` | Azul Corporativo |
| Bordas | `#E0E0E0` | Cinza Claro |

---

## 🚀 Como Usar

### Pré-requisitos
- ✅ Microsoft Power BI Desktop (versão 2024 ou superior)
- ✅ Arquivo `Dashboard_RFM.pbix`
- ✅ Arquivo `customers_segmented.csv`

### Instalação

1. **Clone o repositório**
   ```bash
   git clone https://github.com/marcosaqf47/Dashboard_RFM
   cd Dashboard_RFM
