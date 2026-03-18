-- Swap Sex of Employees

update salary 
set sex=case
when sex='m' then 'f'
else 'm'
end;
