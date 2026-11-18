# Análise de Marketing e Segmentação de Clientes | dunnhumby

### Análise RFM · K-Means Clustering · Dashboard Interativo em R Shiny

## 1. Sobre o Projeto

Este projeto tem como objetivo analisar o comportamento de consumo de clientes a partir de dados transacionais de varejo disponibilizados pela **dunnhumby**, utilizando técnicas de análise exploratória de dados, segmentação RFM (*Recency, Frequency, Monetary*) e aprendizado de máquina não supervisionado.

A proposta consiste em transformar dados de transações comerciais em informações relevantes para a compreensão dos hábitos de compra, identificação de perfis de consumidores e desenvolvimento de estratégias de marketing orientadas por dados.

O projeto é desenvolvido em **R**, contemplando desde a preparação e exploração dos dados até a aplicação de técnicas de clustering e a construção de um dashboard interativo utilizando Shiny.

## 2. Objetivos

**Objetivo geral**

Investigar padrões de comportamento de consumo e identificar segmentos de clientes por meio de técnicas estatísticas e de aprendizado de máquina, visando apoiar decisões estratégicas de marketing.

**Objetivos específicos**

- Realizar a importação, limpeza e validação dos dados transacionais.
- Explorar padrões de compra, frequência de transações e comportamento de gastos.
- Aplicar a metodologia RFM para avaliar recência, frequência e valor monetário das compras.
- Investigar características comportamentais relevantes para a segmentação dos consumidores.
- Aplicar algoritmos de clustering para identificar grupos com características semelhantes.
- Avaliar a qualidade e a consistência dos agrupamentos obtidos.
- Desenvolver um dashboard interativo para apresentação dos indicadores e resultados analíticos.

## 3. Tecnologias e Bibliotecas

| Categoria | Tecnologias e Bibliotecas |
|---|---|
| Linguagem de programação | R |
| Ambiente de desenvolvimento | RStudio |
| Manipulação e limpeza | tidyverse, dplyr, janitor |
| Análise exploratória | ggplot2, skimr |
| Análise RFM | dplyr, lubridate |
| Clustering e avaliação | stats, cluster, factoextra |
| Dashboard interativo | Shiny |
| Versionamento | Git e GitHub |

**Observação:** `dplyr`, `ggplot2` e `lubridate` integram o tidyverse. O pacote `stats` acompanha a instalação padrão do R.

## 4. Estrutura do Repositório

O projeto está organizado em scripts independentes, separados de acordo com as etapas do processo analítico. Essa estrutura facilita a navegação, manutenção, depuração e reprodutibilidade do código.

```text
dunnhumby-marketing-analysis/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── R/
│   ├── 00_setup.R
│   ├── 01_import_cleaning.R
│   ├── 02_eda.R
│   ├── 03_rfm_analysis.R
│   └── 04_clustering.R
│
├── dashboard/
│   └── app.R
│
├── .gitignore
└── README.md
```

### Organização dos diretórios

- **data/raw:** arquivos originais, preservados sem modificações.
- **data/processed:** conjuntos de dados tratados e resultados intermediários necessários às etapas posteriores.
- **R:** scripts responsáveis pela configuração do ambiente, preparação dos dados e análises.
- **dashboard:** aplicação interativa desenvolvida em Shiny.

A separação entre dados brutos e processados permite preservar a integridade das fontes originais e reutilizar resultados analíticos sem repetir operações desnecessárias.

## 5. Metodologia

### Etapa 1 — Importação e Limpeza dos Dados

Importação dos arquivos CSV e investigação inicial da estrutura dos conjuntos de dados.

As atividades incluem:

- Identificação dos tipos de variáveis.
- Verificação de valores ausentes e registros duplicados.
- Padronização de nomes e formatos.
- Análise de consistência entre tabelas.
- Tratamento de inconsistências relevantes para as análises posteriores.

### Etapa 2 — Análise Exploratória de Dados (EDA)

Investigação estatística e visual dos dados para compreender suas características e identificar padrões de consumo.

Entre os aspectos analisados estão a distribuição das transações, o comportamento de gastos, a frequência de compras e as relações entre variáveis relevantes.

As análises utilizam estatísticas descritivas e visualizações construídas principalmente com `ggplot2`.

### Etapa 3 — Análise RFM

Aplicação da metodologia RFM para avaliar o comportamento de compra dos consumidores a partir de três dimensões:

- **Recency (Recência):** tempo decorrido desde a última compra do cliente.
- **Frequency (Frequência):** quantidade de compras realizadas durante o período analisado.
- **Monetary (Valor Monetário):** valor total gasto pelo cliente no período.

Essas métricas permitem investigar diferentes níveis de atividade, relacionamento e valor dos consumidores.

### Etapa 4 — Clustering e Segmentação de Clientes

Aplicação de técnicas de aprendizado de máquina não supervisionado para identificar agrupamentos de clientes com características semelhantes.

A análise contempla a utilização do algoritmo **K-Means**, a investigação de diferentes configurações de agrupamento e a avaliação dos resultados por meio de métodos como:

- Método do Cotovelo (*Elbow Method*).
- Coeficiente de Silhueta (*Silhouette Score*).
- Análise das características e diferenças entre os clusters.

Além das métricas RFM, outras variáveis comportamentais poderão ser consideradas conforme sua relevância estatística e analítica.

### Etapa 5 — Desenvolvimento do Dashboard

Construção de uma aplicação interativa utilizando **R Shiny**, com o objetivo de apresentar os resultados de maneira acessível e apoiar sua interpretação.

O dashboard reúne indicadores de comportamento de consumo, métricas RFM, resultados da segmentação e visualizações interativas.

## 6. Configuração do Ambiente

### Requisitos

- R
- RStudio
- Bibliotecas utilizadas nas etapas analíticas

### Instalação

Após clonar o repositório e abrir o projeto no RStudio, execute o script responsável pela configuração inicial:

```r
source("R/00_setup.R")
```

O script de configuração reúne os pacotes necessários e permite realizar sua instalação.

Os demais scripts estão organizados de acordo com a sequência metodológica apresentada neste documento.

## 7. Fonte dos Dados

**Fonte:** dunnhumby — Dados transacionais de varejo.

Os dados são utilizados para fins de estudo, pesquisa aplicada e desenvolvimento de portfólio profissional.

A documentação da fonte, as características dos arquivos utilizados e eventuais condições de redistribuição devem ser observadas conforme o conjunto de dados selecionado.

## 8. Resultados e Aplicações

A metodologia adotada permite investigar diferentes dimensões do comportamento de compra, combinando análises descritivas, métricas de relacionamento com clientes e técnicas de segmentação.

Entre as aplicações dos resultados estão:

- Identificação de perfis de consumidores.
- Análise de padrões de frequência e valor de compra.
- Investigação de diferenças comportamentais entre segmentos.
- Apoio ao planejamento de estratégias de retenção e relacionamento.
- Desenvolvimento de visualizações para comunicação de informações estratégicas.

Os resultados específicos e suas interpretações devem ser apresentados com base nas evidências obtidas durante a execução das análises.

## 9. Autoria

**Carolina Muro Gomes**

Data Analytics | Estudante de Ciência de Dados

Projeto independente de análise de dados aplicada ao marketing, comportamento do consumidor e segmentação de clientes.
