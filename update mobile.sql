


--修改手机号码sql模板
--将旧的手机号码登录方式置为无效
update t_mbr_register r set r.stus=0 where r.mbr_id =/*填入mbrid*/ and r.login_subtyp='M';
--更新person表手机号码字段
update t_mbr_person p set p.mobile_no=/*填入新手机号*/, p.mobile='86'/*填入新手机号*/ where p.person_id=(select m.person_id from t_mbr m where m.mbr_id=/*填入mbrid*/);
--插入register表新手机号码登录方式
insert into t_mbr_register values(SEQ_MBR_RGST.NEXTVAL,/*填入mbrid*/,'',/*填入新手机号*/,/*填入与其他登录方式相同的密码*/,1,'M','','','',sysdate,'',sysdate,'',1);
--同步一二期数据
insert into T_MBR_UPDATE_LOG(id, mbr_id, mbrship_cd, update_time, update_type, status)values(seq_mbr_update_log.nextval,/*填入mbrid*/,'',sysdate,'02','0');


会籍0003111709 
姓名 丁峰 
原 电话 93071057672 
改 电话 13916469569

--被占用的手机号不处理
select * from t_mbr_register r where r.login_name='93071057672';
select * from t_mbr m where m.mbr_id='7360835';
select * from t_mbr_person p where p.person_id='10077213';
select * from t_mbr_mbrship m where m.mbr_id='4837805'

--记录
update t_mbr_register r set r.stus=0 where r.mbr_id =6227350 and r.login_subtyp='M';
update t_mbr_person p set p.mobile_no='13916469569', p.mobile='8613916469569' where p.person_id=(select m.person_id from t_mbr m where m.mbr_id=6227350);
insert into t_mbr_register values(SEQ_MBR_RGST.NEXTVAL,6227350,'','13916469569','FB25831D6EE3C549E2F3D72AFD6C7D78',1,'M','','','',sysdate,'',sysdate,'',1);
insert into T_MBR_UPDATE_LOG(id, mbr_id, mbrship_cd, update_time, update_type, status)values(seq_mbr_update_log.nextval,6227350,'',sysdate,'02','0');
























