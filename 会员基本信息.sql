--会员基本信息  13798959749   13828783672   129000
select * from t_mbr_register r where r.login_name='18576773226' for update;--18323185303   18576773226--lcy  1-1CR4-224    22861608
select * from t_mbr_register r where r.mbr_id='31757232';
select * from t_mbr m where m.mbr_id='43178487' for update;--Active  660014823681
select * from t_mbr m where m.person_id='12531683';   -- 1-1CR9-370   1-1CR4-224
select * from t_mbr m where m.crm_cust_id='1-1L6-4079';
select * from t_mbr m where m.mbr_cd='MGO02000056518694';
select * from t_mbr_person p where p.person_id='12531683';
select * from t_mbr_mbrship m where m.mbr_id in('43178487') for update;
select * from t_mbr_mbrship m where m.old_mbrship_cd='660009920692' or m.mbrship_cd='660009920692';--15258798
select * from t_mbr_mbrship_category c where c.mbrship_category_id='5010027';
select * from t_mbr_person p where p.mobile_no='18576773226' for update;
select count(1) from t_mbr m where m.attribute=1 and m.stus='Active' and m.crm_cust_id is null;--82359
select * from user_tables t where t.table_name like '%CONVERT%';
select * from t_mbr_point_auth for update;
select * from t_mbr_pointwallet_log l order by l.adjust_time desc;
select stus from t_mbr_mbrship m group by m.stus;
select m.stus from t_mbr m group by m.stus;


update  t_mbr m set m.crm_mbr_id='1-60M31P',m.crm_cust_id='1-60M31V',m.mbr_level='Three' where m.mbr_id='43459980';


---One 银星  Two 金星  Three 铂星 Four 五星
select * from t_mbr_register r,t_mbr m where r.mbr_id=m.mbr_id and m.mbr_level='Four' and m.attribute='0' and r.login_subtyp='M' and r.login_name not like '%@%'


--公共会籍
select * from T_MBR_PUBLICMBRSHIP;

--联名卡号
select alias_no from t_mbr_alias_card c group by c.alias_no having count(1)>1;
select * from t_mbr_alias_card c where c.alias_no='010000003158981' for update;
select * from t_mbr_alias_card c where  c.alias_card_id='8413107';
select * from t_mbr_mbrship_category c where c.category_name like '%平安%' /*c.category_cd='0000000099'*/;
select alias_no from t_mbr_alias_card c group by c.alias_no having count(1)>1;

update t_mbr_alias_card c set c.mbrship_cd='0002633815',c.mbrship_category_cd='0000000099' where c.alias_card_id='8413107';


--万里通用户授权
select * from t_mbr_point_auth a where a.authorize_id='MGO02000056518694'

--积分换入
select * from T_MBR_POINT_CONVERT c where c.mbr_id='4917187';
select * from T_MBR_POINT_CONVERT c where c.cellularqueryrequertid is  not null;
select BIND_ID, LOYALTY_ACC_NO, BIND_ACC_NO, COMP_CODE, BIND_DATE, BIND_USERNAME, IS_LOCKED, MBR_ID, MBR_CD from T_MBR_POINT_CONVERT_BIND where 1=1 AND BIND_USERNAME = 'CLAIRE1009';

--积分钱包(换出)
select * from T_MBR_POINTWALLET_LOG;

--根据订单编号查询积分钱包明细
select /*l.mbr_id "会员编号",l.order_code "订单编号",l.point_type "积分类型",
l.point_value "交易积分数",l.trans_type "交易类型",
l.trans_status "交易状态(1成功,0失败)",l.trans_no "交易流水"*/*
 from T_MBR_POINTWALLET_LOG l where l.order_code in(
       '2016051901',
'201605190101',
'201605190102',
'2016051902',
'2016052502',
'201605250201',
'2016052600000011'
);

select * from t_mbr_point_transaction t where t.acct_id='31312646' order by t.create_tim desc;




--查询积分账户
select * from t_mbr_point_account a where a.mbr_id='37411709' and a.point_account_id='31565543';
select * from t_mbr_point_transaction t where t.acct_id='33471550';

update t_mbr_point_account a set a.point_total=300000  where a.mbr_id='38754057' and a.point_account_id='31565543';

insert into t_mbr_point_balance (POINT_BALANCE_ID, ACCT_ID, MBR_ID, POINT_BALANCE, EXPIRYDATE, 
STUS, CREATE_MONTH, CREATE_TIM, CREATE_BY, UPDATE_TIM, UPDATE_BY)
values (SEQ_MBR_POINT.NEXTVAL, 31565543, 38754057, 300000.00, to_date('31-05-2018', 'dd-mm-yyyy'), 'A',
 null, sysdate, 'MEMBER-API', sysdate, 'MEMBER-API');

select * from t_mbr m ,t_mbr_point_account a where m.mbr_id=a.mbr_id and m.attribute=1 and a.point_total>5000000;
select * from t_mbr_point_account a where a.point_total>5000000;
select * from t_mbr_point_balance b where b.acct_id='31565543';

--查询积分余额信息
select sum(tb.point_balance) as "积分余额"
from t_mbr_point_balance tb
where tb.acct_id = '31312646'
and tb.expirydate >= trunc(sysdate) - 1 
and tb.stus = 'A';

--积分账户
select 
r.login_name,r.login_pwd,r.login_subtyp,r.stus,
a.point_account_id,a.point_total,a.create_tim
from t_mbr_register r, t_mbr_point_account a 
where r.mbr_id=a.mbr_id 
and r.stus=1 
and r.login_name='13554774675';

--根据积分账户id查询积分余额
select * from t_mbr_point_balance b,t_mbr_point_account a 
where a.point_account_id=b.acct_id and a.point_account_id='26905885';

select * from t_mbr_point_account a where a.mbr_id='59108443'

--积分明细(根据会员Id查询【积分账户、积分明细】)
select t.point_transaction_id,t.acct_id,t.trans_date_time,t.trans_type,
t.mbrship_cd,t.trans_point_value,t.create_tim,
a.mbr_id,a.point_total,a.stus,a.version,
m.mbr_cd,m.default_mbrship_cd,m.person_id,m.mbr_net_name,m.attribute 
from 
t_mbr_point_transaction t,t_mbr_point_account a,t_mbr m 
where 
m.mbr_id=a.mbr_id 
and a.point_account_id=t.acct_id 
and m.mbr_id='38754057';

select * from t_mbr_point_transaction t where t.acct_id='26809252';
--查询该笔订单的积分明细
select *
  from t_mbr_point_transaction t
 where t.point_transaction_id in
       (select a.point_adjustment_id
          from t_mbr_point_adjustment a
         where a.ref_sales_trans_no = '1603121100297');


--根据会员id 查询【积分调整】 和 积分明细
select m.mbr_id ,t.acct_id,t.trans_date_time,t.trans_type,
t.mbrship_cd,j.adjust_type,j.ref_sales_trans_no,
j.adjust_reason_code,m.mbr_cd,m.default_mbrship_cd,
m.attribute,m.stus
from t_mbr_point_transaction t,t_mbr_point_adjustment j,t_mbr_point_account a,t_mbr m 
where t.point_transaction_id=j.point_adjustment_id 
and t.acct_id=a.point_account_id
and a.mbr_id=m.mbr_id
and m.mbr_id='59108443';

--积分充值卡
select c.*, m.default_mbrship_cd
  from t_mbr_pointcard c, t_mbr m
 where m.mbr_cd = c.mbr_cd
   and c.pointcardid in (0000099660, 0000102725);
select * from t_mbr_pointcard c where c.facevalue=5000 order by c.update_tim desc;

select * from t_mbr_pointcard c where c.

--当前序列值
select last_number from user_sequences where sequence_name='SEQ_MBR_POINT';

--校验
select * from t_mbr_email_validate v where mbr_id='18576773226'  order by v.create_time desc for update;


select * from t_mbr m ,t_mbr_point_account a where m.mbr_id=a.mbr_id and m.attribute=1 and a.point_total>0 and m.crm_cust_id is not null
--【根据手机号查询会员所有基本信息】
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
---查询集团会员 且积分总额大于0的
select m.mbr_id,m.attribute,m.stus,m.crm_cust_id,a.point_account_id 
from t_mbr_point_transaction t,t_mbr_point_account a,t_mbr m 
where t.acct_id=a.point_account_id and 
a.mbr_id=m.mbr_id and t.trans_type='F' 
and m.attribute=1 and a.point_total>0;

select * from t_mbr m where m.attribute=1

--根据会员id查询会籍信息
select * from t_mbr_mbrship s where s.mbr_id='59108443';
select * from t_mbr m  join t_mbr_mbrship s on m.mbr_id=s.mbr_id and m.mbr_id='42640751';
select * from t_mbr_mbrship s ,t_mbr_mbrship_category c where s.mbrship_category_id=c.mbrship_category_id and s.mbr_id='7070585';
select * from T_MBR_MBRSHIP_CATEGORY c where c.category_name like '%工行信用卡%';
select * from t_mbr_mbrship m where m.mbrship_category_id='5000348'
select * from t_mbr_mbrship_category c where c.category_cd='111060050594'
select * from t_mbr_alias_card c where c.mbrship_category_cd='9105000005';
select * from t_mbr_mbrship m where m.mbrship_cd='881800050852'

---标准卡号
select * from t_mbr_mbrship m where m.mbrship_cd='660013013978' or m.old_mbrship_cd='111060005345'

--插入register表新手机号码登录方式
insert into t_mbr_register values(SEQ_MBR_RGST.NEXTVAL,/*填入mbrid*/,'',/*填入新手机号*/,/*填入与其他登录方式相同的密码*/,1,'M','','','',syadate,'',sysdate,'',1);
update t_mbr_person p set p.mobile_no='15867920368',p.mobile='8615867920368' where p.person_id='12582723';
insert into t_mbr_register values(SEQ_MBR_RGST.NEXTVAL,42640751,'','15867920368','A8F7C856621528495EDE5F2D6C137662',1,'M','','','',syadate,'',sysdate,'',1);
insert into T_MBR_UPDATE_LOG(id, mbr_id, mbrship_cd, update_time, update_type, status)values(seq_mbr_update_log.nextval,42640751,'',sysdate,'02','0');

--根据会籍号查询会员id、会籍类型名
select m.mbrship_id,m.mbr_id,m.mbrship_cd,m.old_mbrship_cd,
c.category_cd,c.category_name
from t_mbr_mbrship m,t_mbr_mbrship_category c 
where 
m.mbrship_category_id=c.mbrship_category_id 
and m.mbrship_cd='660015291680'

--【根据会员id 查询会籍 会籍类型 会员cd】
select m.person_id,m.mbr_id,m.mbr_cd,m.default_mbrship_cd,
m.attribute,m.stus,s.mbrship_cd,s.old_mbrship_cd,
c.category_cd,c.category_name 
from t_mbr m,t_mbr_mbrship s,t_mbr_mbrship_category c 
where m.mbr_id=s.mbr_id 
and s.mbrship_category_id=c.mbrship_category_id 
and m.mbr_id='857642';


--旅客信息 (【根据会员id查询旅客信息和证件信息】)
select * from t_mbr_register r where r.login_name='13760268405';
select * from t_mbr_passenger p where p.email is not null;
select m.mbr_id,
       m.mbr_cd,
       m.default_mbrship_cd,
       m.attribute,
       p.chi_name,
       p.mobile_no,
       p.pass_type,
       p.status,
       c.cer_type,
       c.cer_no,
       c.cer_eff_date
  from t_mbr m, t_mbr_passenger p, t_mbr_passenger_certificate c
 where m.mbr_id = p.mbr_id
   and p.pass_id = c.pass_id
   and m.mbr_id = '43624422'
 order by p.create_time desc;


select count(1) from t_mbr_passenger p where p.mbr_id='4082445' group by p.chi_name having count(1)>1;
select count(1) from t_mbr_passenger p where p.mbr_id='4082445'   and p.status='VALID' and p.chi_name like '%赵%' and p.create_time>to_date('2014','yyyy') order by p.create_time desc;


select * from t_mbr_passenger p where p.mbr_id='4082445' and p.chi_name='赵爱琴';

update t_mbr_passenger p set p.chi_name='赵爱琴' where p.mbr_id='4082445' and p.chi_name='赵 爱琴';


--现金账户
select * from t_mbr_cash_account a where a.mbr_id='7236040';
select * from T_MBR_CASH_ACCOUNT_IN_DETAIL d where d.ord_cd='1601013000423'
select * from T_MBR_CASH_TRANSFER_APPLY a where a.acct_id='4796407';
select * from T_MBR_CASH_ACCT_AUDI a;


--短信校验(根据手机号查短信校验码)
select * from t_mbr_email_validate v where mbr_id='18576773226'  order by v.create_time desc for update;
select * from t_mbr_email_validate v where v.businessno is not null
--ip和手机次数
select * from t_mbr_sms_counter c where c.mobile='13554774675';

--系统配置
select * from S_MBR_CONFIG c where c.conf_name like '%原因%';
select * from S_MBR_CONFIG c where c.parent_id='18039';
select * from S_MBR_CONFIG c where c.conf_cd ='1129'

--根据mg module表中的action_url找到对应flex配置文件,即可定位mg管理处理类
--人工处理校验异常  manual_class(人工处理类型：VALIDATE_EXPT:校验异常；UPLOAD_EXPT:上传异常；CONFLICT：冲突;SR_APPLY:发SR申请)
select cm.*, p.mobile_no "手机号"
  from T_MBR_CRM_MANUAL cm, t_mbr m, t_mbr_person p
 where 
   cm.manual_class='VALIDATE_EXPT'
   and m.person_id = p.person_id 
   and cm.mbr_id = m.mbr_id
   and cm.create_tim between to_date('20160601', 'yyyyMMdd') and
       to_date('20160630', 'yyyyMMdd') order by cm.create_tim desc;
     
--批量积分调整    
select * from L_MBR_POINT_ADJUST_IMPORT i where i.mbr_cd='660013397151';
select adjust_reason_cd from L_MBR_POINT_ADJUST_IMPORT i group by i.adjust_reason_cd;


--数据字典表
select * from user_tables t where t.table_name like '%T_MBR_CRM_MANUAL%';
select * from user_tab_cols c where c.column_name like '%ADJUST_POINT%';
select * from user_tab_comments t where t.comments like '%LOG%';
select * from all_source where type = 'PROCEDURE' and lower(text) like '%mbr_level%'
--当前序列值
select last_number from user_sequences where sequence_name='SEQ_MBR_POINT';
--was

select * from wasconfig.configpara c where c.paraname like '%jndi.bind.name%' for update;

select * from t_mbr_mbrship m where m.old_mbrship_cd='0000107953'
select * from t_mbr_register r where r.mbr_id='30659'
select * from t_mbr_point_transaction t where t.point_transaction_id='107958'
select * from t_mbr_point_adjustment a where a.point_adjustment_id='0000107958';
select * from t_mbr_point_account a where a.POINT_ACCOUNT_ID='20231047'
select * from t_mbr m where m.mbr_id='1623908';


select * from user_tables u where u.table_name like '%SMS%';
select * from t_mbr_register r where r.login_name='18938855005';
select * from T_MBR_SMS_COUNTER t where t.mobile='42596352' order by t.create_time desc for update;




---mg后台权限配置
select * from t_mbr_user u order by u.create_tim asc;
select * from t_mbr_user_module;
select * from s_mbr_module m  where m.module_name in('批量调整积分');

--查询所有大类别
select * from s_mbr_module m where m.parent_id=1;

select *
  from s_mbr_module m
 where m.parent_id in
       (select m.module_id
          from s_mbr_module m
         where m.module_name in ('会员管理', '会籍管理', '积分调整'))
union
select *
  from s_mbr_module m
 where m.module_name in ('会员管理', '会籍管理', '积分调整');

select u.user_id,
       u.login_name,
       u.department,
       u.create_tim,
       u.create_by,
       um.module_cd,
       um.module_name,
       m.module_id,
       m.parent_id,
       m.module_name,
       m.module_desc,
       m.action_url,
       m.sort,
       m.module_level
  from t_mbr_user u, t_mbr_user_module um, s_mbr_module m
 where u.user_id = um.user_id
   and um.module_id = m.module_id
   and u.login_name = 'root';



---代金券
select * from user_tables t where t.table_name like '%VCH%';
select * from VCH_VOUCHER v where v.defid='8751' order by v.createtime desc;
select * from VCH_VOUCHER_ORDER;
select * from VCH_VOUCHER_RESUME;
select * from VCH_VOUCHER_RULE r where r.defid='8751';
select * from vch_definition d where d.vouchername like '%30元万里通2016年营销活动代金券%';--代金券的详细信息

--新建一个代金券活动  一个活动可以对应多种不同类型的代金券
--查询出当前正在进行的所有代金券活动信息
select * from vch_promotion p where sysdate<p.enddate order by p.createtime desc;

--针对某个代金券活动设定代金券信息(代金券定义)
--查询正在进行的代金券活动下所有对应的代金券信息
select p.id,p.promotionname,p.createtime,p.enddate,d.id "defid",
d.vouchername,d.amount,d.createtime,d.issuedcount "已发行量"
from vch_promotion p join vch_definition d 
on p.id=d.promotionid 
and sysdate<p.enddate 
and p.deleted='N' 
and d.deleted='N' 
order by p.createtime desc;

select * from vch_definition d where d.id='8588';

--查询指定代金券定义下的所有代金券信息
select * from VCH_VOUCHER v where v.defid='8749';    --- 660010804450
select * from VCH_VOUCHER v where v.membercd='660010804450';
select * from VCH_VOUCHER v where v.id='32657624';

update VCH_VOUCHER v set v.status=0 where v.id='32657624';

update VCH_VOUCHER v set v.membercd='' where v.id=''
--代金券可以设置规则(代金券定义和规则是一对一的关系)
select * from VCH_VOUCHER_RULE;

--
select * from vch_rule_valid_period;

--查看所有代金券操作日志
select * from vch_voucher_log;
