SELECT Count(Distinct C_custkey) FROM CUSTOMER C_
left join ORDERS O_ ON O_CUSTKEY = C_CUSTKEY
Where O_CUSTKEY IS NULL;
  ;