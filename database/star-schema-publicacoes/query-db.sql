# ----------------------------------------------------------------------------
# - FILE: query-db.sql
# - DESC: Query data on publicacao star schema.
# ----------------------------------------------------------------------------
# - AUTH: Andre Perez, andre.marcos.perez@usp.br
# - DATE: 2019-11-13
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# -- SETUP
# ----------------------------------------------------------------------------

USE publicacao;

# ----------------------------------------------------------------------------
# -- MAIN
# ----------------------------------------------------------------------------

# - Question 1.b

select sum(fact.quantidade_publicacao) as total_publicacoes
from fact_publicacao fact join dim_data data on fact.data_id = data.id 
where data.mes = 11 and data.ano = 2019;