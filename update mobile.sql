


--修改手机号码sql模板
--将旧的手机号码登录方式置为无效
update t_mbr_register r set r.stus=0 where r.mbr_id =/*填入mbrid*/ and r.login_subtyp='M';
--更新person表手机号码字段
update t_mbr_person p set p.mobile_no=/*填入新手机号*/, p.mobile='86'/*填入新手机号*/ where p.person_id=(select m.person_id from t_mbr m where m.mbr_id=/*填入mbrid*/);
--插入register表新手机号码登录方式
insert into t_mbr_register values(SEQ_MBR_RGST.NEXTVAL,/*填入mbrid*/,'',/*填入新手机号*/,/*填入与其他登录方式相同的密码*/,1,'M','','','',sysdate,'',sysdate,'',1);
--同步一二期数据
insert into T_MBR_UPDATE_LOG(id, mbr_id, mbrship_cd, update_time, update_type, status)values(seq_mbr_update_log.nextval,/*填入mbrid*/,'',sysdate,'02','0');

原注册手机号：13467285314
现改为：18735960116 




select * from t_mbr_pointcard;

select * from wasconfig.configparaconfigpara

--被占用的手机号不处理
--select * from t_mbr_register r where r.mbr_id='12676554' for update;--59108443
select * from t_mbr_register r where r.login_name in ('13467285314') for update;--AAA42296669B958C3CEE6C0475C8093E
select * from t_mbr m where m.mbr_id='42461468' for update;
select * from t_mbr_person p where p.person_id='12531457';
select * from t_mbr_mbrship m where m.mbr_id='4837805'

--记录
update t_mbr_register r set r.stus=0 where r.mbr_id =2998496 and r.login_subtyp='M';
update t_mbr_person p set p.mobile_no='15818659996', p.mobile='8615818659996' where p.person_id=(select m.person_id from t_mbr m where m.mbr_id=2998496);
insert into t_mbr_register values(SEQ_MBR_RGST.NEXTVAL,2998496,'','15818659996','55587A910882016321201E6EBBC9F595',1,'M','','','',sysdate,'',sysdate,'',1);
insert into T_MBR_UPDATE_LOG(id, mbr_id, mbrship_cd, update_time, update_type, status)values(seq_mbr_update_log.nextval,2998496,'',sysdate,'02','0');

update t_mbr_register r set r.stus=0 where r.mbr_id =4435858 and r.login_subtyp='M';
update t_mbr_person p set p.mobile_no='15363500119', p.mobile='8615363500119' where p.person_id=(select m.person_id from t_mbr m where m.mbr_id=4435858);
insert into t_mbr_register values(SEQ_MBR_RGST.NEXTVAL,4435858,'','15363500119','1071B348AD91A3AE8BD0E446619289C4',1,'M','','','',sysdate,'',sysdate,'',1);
insert into T_MBR_UPDATE_LOG(id, mbr_id, mbrship_cd, update_time, update_type, status)values(seq_mbr_update_log.nextval,4435858,'',sysdate,'02','0');

update t_mbr_register r set r.stus=0 where r.mbr_id =35520283 and r.login_subtyp='M';
update t_mbr_person p set p.mobile_no='13861089391', p.mobile='8613861089391' where p.person_id=(select m.person_id from t_mbr m where m.mbr_id=35520283);
insert into t_mbr_register values(SEQ_MBR_RGST.NEXTVAL,35520283,'','13861089391','F7B16AF5588F9654862E4AEFCEC8B0DE',1,'M','','','',sysdate,'',sysdate,'',1);
insert into T_MBR_UPDATE_LOG(id, mbr_id, mbrship_cd, update_time, update_type, status)values(seq_mbr_update_log.nextval,35520283,'',sysdate,'02','0');


