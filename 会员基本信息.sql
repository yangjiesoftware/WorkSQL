SELECT * from T_MBR_POINT_ACCOUNT WHERE MBR_ID ='857642'
--��Ա������Ϣ
select * from t_mbr_register r where r.login_name='18576773226' for update;--18323185303   18576773226--lcy  1-1CR4-224
select * from t_mbr m where m.mbr_id='59108443' for update;--Active  660014823681
select * from t_mbr m where m.person_id='12531683'   -- 1-1CR9-370   1-1CR4-224
select * from t_mbr_person p where p.person_id='12531683';
select * from t_mbr_register r where r.mbr_id='193535';
select * from t_mbr_mbrship m where m.mbr_id='59108443';
select * from t_mbr_person p where p.mobile_no='18576773226' for update;
select count(1) from t_mbr m where m.attribute=1 and m.stus='Active' and m.crm_cust_id is null--82359
select * from user_tables t where t.table_name like '%CONVERT%'
select * from t_mbr_point_auth for update
select * from t_mbr_pointwallet_log l order by l.adjust_time desc;
select stus from t_mbr_mbrship m group by m.stus;
select m.stus from t_mbr m group by m.stus;

--����ͨ���û���ѯ
select * from T_MBR_POINT_CONVERT_BIND;
select * from T_MBR_POINT_CONVERT c where c.cellularqueryrequertid is  not null;
select BIND_ID, LOYALTY_ACC_NO, BIND_ACC_NO, COMP_CODE, BIND_DATE, BIND_USERNAME, IS_LOCKED, MBR_ID, MBR_CD from T_MBR_POINT_CONVERT_BIND where 1=1 AND BIND_USERNAME = 'CLAIRE1009'

--��ǰ����ֵ
select last_number from user_sequences where sequence_name='SEQ_MBR_POINT';

--У��
select * from t_mbr_email_validate v where mbr_id='18576773226'  order by v.create_time desc for update;

---����
select * from t_mbr_point_account a where a.mbr_id='59108443';
select * from t_mbr_mbrship m where m.mbr_id='42187364';


select * from t_mbr m ,t_mbr_point_account a where m.mbr_id=a.mbr_id and m.attribute=1 and a.point_total>0 and m.crm_cust_id is not null
--�������ֻ��Ų�ѯ��Ա���л�����Ϣ��
select 
m.person_id,m.mbr_id,m.mbr_cd,
m.default_mbrship_cd,m.attribute,m.stus,
r.login_name,r.login_pwd,r.login_subtyp,r.stus,
p.name,p.mobile_no,p.mobile,
s.mbrship_cd,s.old_mbrship_cd 
from t_mbr m ,t_mbr_register r,t_mbr_person p,t_mbr_mbrship s 
where 
m.mbr_id=r.mbr_id 
and m.person_id=p.person_id 
and m.mbr_id=s.mbr_id 
/*and r.login_name='13554774675'*/
and r.mbr_id='40212953'

select * from t_mbr_point_account a where a.point_account_id='24402844';
---��ѯ���Ż�Ա �һ����ܶ����0��
select m.mbr_id,m.attribute,m.stus,m.crm_cust_id,a.point_account_id 
from t_mbr_point_transaction t,t_mbr_point_account a,t_mbr m 
where t.acct_id=a.point_account_id and 
a.mbr_id=m.mbr_id and t.trans_type='F' 
and m.attribute=1 and a.point_total>0;

select * from t_mbr m where m.attribute=1

--���ݻ�Աid��ѯ�Ἦ��Ϣ
select * from t_mbr_mbrship s where s.mbr_id='59108443';
select * from t_mbr m  join t_mbr_mbrship s on m.mbr_id=s.mbr_id and m.mbr_id='42640751';
select * from t_mbr_mbrship s ,t_mbr_mbrship_category c where s.mbrship_category_id=c.mbrship_category_id and s.mbr_id='7070585';
select * from T_MBR_MBRSHIP_CATEGORY c where c.category_name like '%�������ÿ�%';
select * from t_mbr_mbrship m where m.mbrship_category_id='5000348'
select * from t_mbr_mbrship_category c where c.category_cd='111060050594'
select * from t_mbr_alias_card c where c.mbrship_category_cd='9105000005';
select * from t_mbr_mbrship m where m.mbrship_cd='881800050852'

---��׼����
select * from t_mbr_mbrship m where m.mbrship_cd='660009399993' or m.old_mbrship_cd='111060005345'

--����register�����ֻ������¼��ʽ
insert into t_mbr_register values(SEQ_MBR_RGST.NEXTVAL,/*����mbrid*/,'',/*�������ֻ���*/,/*������������¼��ʽ��ͬ������*/,1,'M','','','',syadate,'',sysdate,'',1);
update t_mbr_person p set p.mobile_no='15867920368',p.mobile='8615867920368' where p.person_id='12582723';
insert into t_mbr_register values(SEQ_MBR_RGST.NEXTVAL,42640751,'','15867920368','A8F7C856621528495EDE5F2D6C137662',1,'M','','','',syadate,'',sysdate,'',1);
insert into T_MBR_UPDATE_LOG(id, mbr_id, mbrship_cd, update_time, update_type, status)values(seq_mbr_update_log.nextval,42640751,'',sysdate,'02','0');

--���ݻἮ�Ų�ѯ��Աid���Ἦ������
select m.mbrship_id,m.mbr_id,m.mbrship_cd,m.old_mbrship_cd,
c.category_cd,c.category_name
from t_mbr_mbrship m,t_mbr_mbrship_category c 
where 
m.mbrship_category_id=c.mbrship_category_id 
and m.mbrship_cd='660015291680'

--�����ݻ�Աid ��ѯ�Ἦ �Ἦ���� ��Աcd��
select m.person_id,m.mbr_id,m.mbr_cd,m.default_mbrship_cd,
m.attribute,m.stus,s.mbrship_cd,s.old_mbrship_cd,
c.category_cd,c.category_name 
from t_mbr m,t_mbr_mbrship s,t_mbr_mbrship_category c 
where m.mbr_id=s.mbr_id 
and s.mbrship_category_id=c.mbrship_category_id 
and m.mbr_id='857642';


--�ÿ���Ϣ (�����ݻ�Աid��ѯ�ÿ���Ϣ��֤����Ϣ��)
select 
m.mbr_id,m.mbr_cd,m.default_mbrship_cd,m.attribute,p.chi_name,p.mobile_no,p.pass_type,p.status,c.cer_type,c.cer_no,c.cer_eff_date 
from 
t_mbr m,t_mbr_passenger p,t_mbr_passenger_certificate c 
where 
m.mbr_id=p.mbr_id 
and p.pass_id=c.pass_id 
and m.mbr_id='857642' /*order by p.chi_name,c.cer_type*/;


----��ѯ������Ϣ
select * from t_mbr_register r where r.login_name='13554774675';
--��ѯ�����˻�
select * from t_mbr_point_account a where a.mbr_id='59108443';

select * from t_mbr m ,t_mbr_point_account a where m.mbr_id=a.mbr_id and m.attribute=1 and a.point_total>5000000;
select * from t_mbr_point_account a where a.point_total>5000000;
--��ѯ�����Ϣ
select sum(tb.point_balance) as "�������"
from t_mbr_point_balance tb
where tb.acct_id = '20634848'
and tb.expirydate >= trunc(sysdate) - 1 
and tb.stus = 'A';

select *
from t_mbr_point_balance tb
where tb.acct_id = '20634848'
--���˻������л�����ϸ
select * from t_mbr_point_transaction t where t.acct_id='26905885';
--���ݶ����Ų�ѯ������ϸ
select * from t_mbr_point_


















--�����˻�
select 
r.login_name,r.login_pwd,r.login_subtyp,r.stus,
a.point_account_id,a.point_total,a.create_tim
from t_mbr_register r, t_mbr_point_account a 
where r.mbr_id=a.mbr_id 
and r.stus=1 
and r.login_name='13554774675';

--���ݻ����˻�id��ѯ�������
select * from t_mbr_point_balance b,t_mbr_point_account a 
where a.point_account_id=b.acct_id and a.point_account_id='26905885';

select * from t_mbr_point_account a where a.mbr_id='59108443'
--������ϸ(���ݻ�ԱId��ѯ�������˻���������ϸ��)
select t.point_transaction_id,t.acct_id,t.trans_date_time,t.trans_type,
t.mbrship_cd,t.trans_point_value,t.create_tim,
a.mbr_id,a.point_total,a.stus,a.version,
m.mbr_cd,m.default_mbrship_cd,m.person_id,m.mbr_net_name,m.attribute 
from 
t_mbr_point_transaction t,t_mbr_point_account a,t_mbr m 
where 
m.mbr_id=a.mbr_id 
and a.point_account_id=t.acct_id 
and m.mbr_id='59108443';

select * from t_mbr_point_transaction t where t.acct_id='26809252';
--��ѯ�ñʶ����Ļ�����ϸ
select *
  from t_mbr_point_transaction t
 where t.point_transaction_id in
       (select a.point_adjustment_id
          from t_mbr_point_adjustment a
         where a.ref_sales_trans_no = '1603121100297');


--���ݻ�Աid ��ѯ�����ֵ����� �� ������ϸ
select m.mbr_id ,t.acct_id,t.trans_date_time,t.trans_type,
t.mbrship_cd,j.adjust_type,j.ref_sales_trans_no,
j.adjust_reason_code,m.mbr_cd,m.default_mbrship_cd,
m.attribute,m.stus
from t_mbr_point_transaction t,t_mbr_point_adjustment j,t_mbr_point_account a,t_mbr m 
where t.point_transaction_id=j.point_adjustment_id 
and t.acct_id=a.point_account_id
and a.mbr_id=m.mbr_id
and m.mbr_id='59108443';

--�ֽ��˻�
select * from t_mbr_cash_account a where a.mbr_id='7236040';
select * from T_MBR_CASH_ACCOUNT_IN_DETAIL d where d.ord_cd='1601013000423'
select * from T_MBR_CASH_TRANSFER_APPLY a where a.acct_id='4796407';
select * from T_MBR_CASH_ACCT_AUDI a;


--����У��(�����ֻ��Ų����У����)
select * from t_mbr_email_validate v where mbr_id='18576773226'  order by v.create_time desc for update;
select * from t_mbr_email_validate v where v.businessno is not null
--ip���ֻ�����
select * from t_mbr_sms_counter c where c.mobile='13554774675';

--ϵͳ����
select * from S_MBR_CONFIG c where c.conf_name like '%ԭ��%';
select * from S_MBR_CONFIG where c.parent_id='18039';

--�����ֵ��
select * from user_tables t where t.table_name like '%MBR%';
select * from user_tab_cols c where c.column_name like '%MBR%';
select * from user_tab_comments t;
select * from all_source where type = 'PROCEDURE' and lower(text) like '%mbr_level%'
--��ǰ����ֵ
select last_number from user_sequences where sequence_name='SEQ_MBR_POINT';
--was

select * from wasconfig.configpara c where c.paraname like '%jndi.bind.name%' for update;
--���ֳ�ֵ��
select * from t_mbr_pointcard c where c.pointcardid=0000107956
select * from t_mbr_pointcard c where c.facevalue=5000 order by c.update_tim desc;

select * from t_mbr_mbrship m where m.old_mbrship_cd='0000107953'
select * from t_mbr_register r where r.mbr_id='30659'
select * from t_mbr_point_transaction t where t.point_transaction_id='107958'
select * from t_mbr_point_adjustment a where a.point_adjustment_id='0000107958';
select * from t_mbr_point_account a where a.POINT_ACCOUNT_ID='20231047'
select * from t_mbr m where m.mbr_id='1623908'


select * from t_mbr_pointcard c where c.pointcardid in(0000107950,107951,107952,107953,107954,107955��107956,0000107957��,0000107958��);

select * from t_mbr_point_award
select * from t_mbr_update_log t where t.mbr_id=40383370;
select * from t_mbr_update_log t order by t.update_time desc;

select * from callcenter.C_Cus_Bas@callcenter t where t.cus_ali_id in (select la.loyaltyaccno from ulm.loyaltyaccount la where la.csn=42622775);

select * from l_mbr_trigger t where t.create_time>to_date('2014-09-15 15:00:00','yyyy-MM-dd HH24:mi:ss') order by t.create_time desc;



select * from T_MBR_UPDATE_LOG l where l.mbr_id='42622775';

select * from T_MBR_UPDATE_LOG l where l.mbr_id='42461468'

select * from ulm.customer c where c.csn=42622775;

select * from t_mbr_mbrship_category c where c.category_name like '%����%'

select * from t_mbr_mbrship m where m.mbrship_category_id='9900578';
select * from t_mbr_mbrship_category m where 
