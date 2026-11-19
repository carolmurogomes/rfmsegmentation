# Análise de Comportamento do Consumidor e Segmentação de Clientes

### RFM Analysis | K-Means Clustering | R Shiny

## Sobre o Projeto

A compreensão do comportamento do consumidor é fundamental para o desenvolvimento de estratégias de marketing orientadas por dados.

Este projeto propõe a análise de dados transacionais de varejo para investigar padrões de consumo, identificar perfis de clientes e explorar oportunidades de segmentação utilizando técnicas estatísticas e de aprendizado de máquina não supervisionado.

A metodologia combina análise exploratória de dados (EDA), segmentação RFM (*Recency, Frequency, Monetary*) e K-Means Clustering, com apresentação dos resultados por meio de um dashboard interativo desenvolvido em R Shiny.

## Objetivos

- Investigar padrões de compra, frequência e comportamento de gastos.
- Aplicar a metodologia RFM para avaliar o relacionamento e o valor dos clientes.
- Identificar segmentos de consumidores por meio de técnicas de clustering.
- Avaliar a qualidade dos agrupamentos e interpretar suas características.
- Explorar aplicações dos resultados em estratégias de marketing e relacionamento com clientes.
- Desenvolver um dashboard interativo para visualização dos indicadores e segmentos identificados.

## Tecnologias e Bibliotecas

| Etapa | Ferramentas |
|---|---|
| Linguagem | R |
| Ambiente | RStudio |
| Limpeza e manipulação | tidyverse, janitor |
| Análise exploratória | ggplot2, skimr |
| Análise RFM | dplyr, lubridate |
| Clustering | stats, cluster, factoextra |
| Dashboard | Shiny |
| Versionamento | Git e GitHub |

*Os pacotes dplyr, ggplot2 e lubridate integram o tidyverse. O pacote stats acompanha a instalação padrão do R.*

## Estrutura do Repositório

O código é organizado em scripts separados por etapa, facilitando a navegação, manutenção e reprodução das análises.

```text
rfmsegmentation/
│
├── data/
│   ├── raw/
│        ├── DATASET.md
│        ├── METADATA.md
|
├── R/
│   ├── 00_setup.R
│   ├── 01_import_cleaning.R
│   ├── 02_eda.R
│   ├── 03_rfm_analysis.R
│   └── 04_clustering.R
|
├── dashboard/
│   └── app.R
|
└── README.md
```

Os arquivos originais são preservados em `data/raw`, enquanto `data/processed` armazena os resultados intermediários necessários à continuidade das análises.

## Metodologia

**1. Preparação dos Dados**

Importação, inspeção, limpeza e tratamento dos dados transacionais, incluindo validação de variáveis e consistência dos registros.

**2. Análise Exploratória (EDA)**

Investigação de distribuições, padrões de consumo, comportamento de gastos e relações entre variáveis.

**3. Análise RFM**

Cálculo das métricas de recência, frequência e valor monetário para caracterização do comportamento de compra dos clientes.

**4. Clustering**

Aplicação de K-Means para identificação de grupos de consumidores com características semelhantes, acompanhada de testes e avaliação dos agrupamentos.

**5. Dashboard Interativo**

Desenvolvimento de uma aplicação em R Shiny para exploração visual dos indicadores, resultados da análise RFM e segmentos identificados.

## Fonte dos Dados

O projeto utiliza dados transacionais de varejo disponibilizados pela **dunnhumby**, empregados como base para o desenvolvimento das análises de comportamento do consumidor.

A utilização dos dados tem finalidade educacional, científica e de desenvolvimento de portfólio.

## Configuração do Ambiente

O projeto utiliza R e RStudio.

Para instalar os pacotes necessários, execute o script de configuração:

```r
source("R/00_setup.R")
```

Os scripts analíticos estão organizados conforme a sequência metodológica descrita neste documento.

## Autoria

**Carolina Muro Gomes**

Data Analytics | Estudante de Ciência de Dados

Projeto independente de análise de dados aplicada ao marketing e à segmentação de clientes.
