with table1 as ( 
          select left (primary_poc ,strpos(primary_poc , ' ')-1) as first_name , 
		      right(primary_poc , length(primary_poc) - strpos(primary_poc, ' ')) as last_name , name 
		  from accounts 

)
  select first_name , last_name , concat(first_name ,'_',last_name ,'@',name ,'.com') as email 
  from table1