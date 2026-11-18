# Fonte e Documentação dos Dados

## 1. Sobre o Dataset

Este projeto utiliza dados transacionais de varejo disponibilizados pela **dunnhumby**, por meio da plataforma Kaggle.

O conjunto de dados contém informações sobre transações comerciais, produtos, características demográficas de domicílios e atividades promocionais.

A partir dessas informações, é possível investigar padrões de compra, comportamento de consumo e características de diferentes grupos de clientes.

## 2. Fonte dos Dados

**Fonte original:** dunnhumby  
**Plataforma de acesso:** Kaggle  
**Dataset:** The Complete Journey

**Link para download:** [dunnhumby — The Complete Journey (Kaggle)](https://www.kaggle.com/datasets/frtgnn/dunnhumby-the-complete-journey)

Os arquivos originais não são redistribuídos neste repositório. Para reproduzir as análises, é necessário obtê-los diretamente na fonte indicada.

## 3. Tabelas Utilizadas

Foram selecionadas três tabelas para a análise de comportamento do consumidor e segmentação de clientes.

### transaction_data.csv

Tabela principal do projeto, contendo os registros de transações comerciais.

**Variáveis relevantes:**
- `household_key`: identificador do domicílio.
- `BASKET_ID`: identificador da cesta de compras.
- `DAY`: dia da transação.
- `PRODUCT_ID`: identificador do produto.
- `QUANTITY`: quantidade adquirida.
- `SALES_VALUE`: valor da venda.
- `STORE_ID`: identificador da loja.

**Aplicação:** cálculo das métricas RFM, análise exploratória e construção dos segmentos de clientes.

### hh_demographic.csv

Tabela com informações demográficas dos domicílios.

**Variáveis relevantes:**
- `household_key`: identificador do domicílio.
- `AGE_DESC`: faixa etária.
- `INCOME_DESC`: faixa de renda.
- `HOUSEHOLD_SIZE_DESC`: tamanho do domicílio.
- `HH_COMP_DESC`: composição familiar.
- `KID_CATEGORY_DESC`: categoria relacionada à presença de crianças.

**Aplicação:** investigação das características demográficas dos segmentos identificados pelo clustering.

### product.csv

Tabela com informações descritivas dos produtos comercializados.

**Variáveis relevantes:**
- `PRODUCT_ID`: identificador do produto.
- `DEPARTMENT`: departamento.
- `COMMODITY_DESC`: categoria de produto.
- `SUB_COMMODITY_DESC`: subcategoria.
- `BRAND`: classificação de marca.

**Aplicação:** análise das categorias e preferências de consumo associadas aos diferentes segmentos de clientes.

## 4. Relacionamento entre as Tabelas

As tabelas podem ser relacionadas utilizando as seguintes chaves:

| Tabela principal | Tabela relacionada | Chave |
|---|---|---|
| transaction_data | hh_demographic | `household_key` |
| transaction_data | product | `PRODUCT_ID` |

Esses relacionamentos permitem complementar as métricas transacionais com informações demográficas e características dos produtos.

A cobertura e a consistência das relações serão verificadas durante a preparação dos dados.

## 5. Organização dos Arquivos

Após obter os dados, os três arquivos CSV devem ser colocados na seguinte estrutura local:

```text
data/
├── DATASET.md
└── raw/
    ├── transaction_data.csv
    ├── hh_demographic.csv
    └── product.csv
```

Os arquivos originais devem ser preservados sem modificações. As operações de limpeza, transformação e análise são realizadas pelos scripts R do projeto.

## 6. Escopo Analítico

A análise principal consiste na aplicação da metodologia RFM e do algoritmo K-Means para segmentação comportamental dos domicílios.

As informações demográficas e de produtos serão utilizadas para investigar e interpretar as características dos agrupamentos encontrados.

O objetivo é compreender não apenas as diferenças de comportamento de compra, mas também as características que podem contribuir para a interpretação dos segmentos em um contexto de marketing orientado por dados.
