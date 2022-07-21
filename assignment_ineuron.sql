show databases;
use ineurone;
show tables;
select * from bank_details;

-- 1.find out sum of balance
select sum(balance) as total_balance from bank_details;
-- 2.find out avarage of balance 
select avg(balance) as avg_balance from bank_details;
-- 3.find out who is having a min balance 
select min(balance) from bank_details;
select * from bank_details  having balance= min(balance);
-- 4.find out who is having a max balance 
select max(balance) from bank_details;
select * from bank_details having max(balance);
-- 5. Prepare a list of all the person who is having loan 
select * from bank_details;
select count(loan="yes") from bank_details;
select * from bank_details where loan='yes';
-- 6.to find out average balance for all the people whose job role is admin
select distinct job from bank_details;
select count(distinct job) from bank_details;
select count(distinct job) from bank_details where job="admin";
select job,balance from bank_details where job='admin';
select avg(balance) from bank_details where job='admin';

-- 7.find out a record  without job whose age is below 45 
select distinct job from bank_details;
select count(age)from bank_details where age<45;
select count(job) from bank_details where job='unknown';
select * from bank_details where age<45 and job='unknown';

-- 8.find out a record where education is primary and person is jobless
select distinct(education) from bank_details;
select count(education) from bank_details where education='primary';
select job from bank_details where job='unknown';
select * from bank_details where education='primary' and job='unknown';
-- 9.find of a record whose bank account is having a negative balance 
select count(distinct(balance)) from bank_details where balance<0;
select * from bank_details where balance<0;
-- 10.find our a record who is not having house at all along with there balance 
select * from bank_details;
select distinct(balance)  from bank_details where balance =0;
select distinct(housing) from bank_details;
select count(distinct(housing))from bank_details where housing='no';
select * from bank_details where balance=0 and housing='no';
