


--修改手机号码sql模板
--将旧的手机号码登录方式置为无效
update t_mbr_register r set r.stus=0 where r.mbr_id =/*填入mbrid*/ and r.login_subtyp='M';
--更新person表手机号码字段
update t_mbr_person p set p.mobile_no=/*填入新手机号*/, p.mobile='86'/*填入新手机号*/ where p.person_id=(select m.person_id from t_mbr m where m.mbr_id=/*填入mbrid*/);
--插入register表新手机号码登录方式
insert into t_mbr_register values(SEQ_MBR_RGST.NEXTVAL,/*填入mbrid*/,'',/*填入新手机号*/,/*填入与其他登录方式相同的密码*/,1,'M','','','',sysdate,'',sysdate,'',1);
--同步一二期数据
insert into T_MBR_UPDATE_LOG(id, mbr_id, mbrship_cd, update_time, update_type, status)values(seq_mbr_update_log.nextval,/*填入mbrid*/,'',sysdate,'02','0');

18092435867	15617567758
13664476257	13775219101
15999511830	13570077388

select * from t_mbr_pointcard;

select * from wasconfig.configparaconfigpara

--被占用的手机号不处理
--select * from t_mbr_register r where r.mbr_id='12676554' for update;--59108443
select * from t_mbr_register r where r.login_name='18938855005' for update;--AAA42296669B958C3CEE6C0475C8093E
select * from t_mbr m where m.mbr_id='12676554' for update;
select * from t_mbr_person p where p.person_id='4367510';
select * from t_mbr_mbrship m where m.mbr_id='4837805'

--记录
update t_mbr_register r set r.stus=0 where r.mbr_id =40881322 and r.login_subtyp='M';
update t_mbr_person p set p.mobile_no='15617567758', p.mobile='8615617567758' where p.person_id=(select m.person_id from t_mbr m where m.mbr_id=40881322);
insert into t_mbr_register values(SEQ_MBR_RGST.NEXTVAL,40881322,'','15617567758','85630F50540FDDB65B0EA5A79E739C67',1,'M','','','',sysdate,'',sysdate,'',1);
insert into T_MBR_UPDATE_LOG(id, mbr_id, mbrship_cd, update_time, update_type, status)values(seq_mbr_update_log.nextval,40881322,'',sysdate,'02','0');

update t_mbr_register r set r.stus=0 where r.mbr_id =3355863 and r.login_subtyp='M';
update t_mbr_person p set p.mobile_no='13775219101', p.mobile='8613775219101' where p.person_id=(select m.person_id from t_mbr m where m.mbr_id=3355863);
insert into t_mbr_register values(SEQ_MBR_RGST.NEXTVAL,3355863,'','13775219101','EF8008F05047C80B45CE4E3A5D9E584B',1,'M','','','',sysdate,'',sysdate,'',1);
insert into T_MBR_UPDATE_LOG(id, mbr_id, mbrship_cd, update_time, update_type, status)values(seq_mbr_update_log.nextval,3355863,'',sysdate,'02','0');

update t_mbr_register r set r.stus=0 where r.mbr_id =37411976 and r.login_subtyp='M';
update t_mbr_person p set p.mobile_no='13775219101', p.mobile='8613775219101' where p.person_id=(select m.person_id from t_mbr m where m.mbr_id=37411976);
insert into t_mbr_register values(SEQ_MBR_RGST.NEXTVAL,37411976,'','13775219101','E298AA940ED931CFC1483B0B5F8AA4D1',1,'M','','','',sysdate,'',sysdate,'',1);
insert into T_MBR_UPDATE_LOG(id, mbr_id, mbrship_cd, update_time, update_type, status)values(seq_mbr_update_log.nextval,37411976,'',sysdate,'02','0');
