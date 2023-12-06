SELECT DISTINCT N_NAME,
                SUM(L_QUANTITY) itens
  FROM NATION N_
       INNER JOIN
       CUSTOMER C_ ON C_NATIONKEY = N_NATIONKEY
       INNER JOIN
       ORDERS O_ ON C_CUSTKEY = O_CUSTKEY
       INNER JOIN
       LINEITEM L_ ON L_ORDERKEY = O_ORDERKEY
       group by N_NAME
       HAVING itens > 62000
       order by itens desc;
