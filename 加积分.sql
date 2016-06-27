
update t_mbr_point_account a set a.point_total=300000  where a.mbr_id='38754057' and a.point_account_id='31565543';

insert into t_mbr_point_balance (POINT_BALANCE_ID, ACCT_ID, MBR_ID, POINT_BALANCE, EXPIRYDATE, 
STUS, CREATE_MONTH, CREATE_TIM, CREATE_BY, UPDATE_TIM, UPDATE_BY)
values (SEQ_MBR_POINT.NEXTVAL, 31565543, 38754057, 300000.00, to_date('31-05-2018', 'dd-mm-yyyy'), 'A',
 null, sysdate, 'MEMBER-API', sysdate, 'MEMBER-API');