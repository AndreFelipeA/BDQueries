SELECT DISTINCT N_NAME,
                COUNT(distinct O_ORDERKEY) encomendas
  FROM NATION N_
       INNER JOIN
       CUSTOMER C_ ON C_NATIONKEY = N_NATIONKEY
       INNER JOIN
       ORDERS O_ ON C_CUSTKEY = O_CUSTKEY
       group by N_NAME
       order by encomendas desc ;


select distinct count(city.population) as sum from country
join city on city.countrycode = country.code 
where country.continent = "Asia";