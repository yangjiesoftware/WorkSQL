


--�޸��ֻ�����sqlģ��
--���ɵ��ֻ������¼��ʽ��Ϊ��Ч
update t_mbr_register r set r.stus=0 where r.mbr_id =/*����mbrid*/ and r.login_subtyp='M';
--����person���ֻ������ֶ�
update t_mbr_person p set p.mobile_no=/*�������ֻ���*/, p.mobile='86'/*�������ֻ���*/ where p.person_id=(select m.person_id from t_mbr m where m.mbr_id=/*����mbrid*/);
--����register�����ֻ������¼��ʽ
insert into t_mbr_register values(SEQ_MBR_RGST.NEXTVAL,/*����mbrid*/,'',/*�������ֻ���*/,/*������������¼��ʽ��ͬ������*/,1,'M','','','',sysdate,'',sysdate,'',1);
--ͬ��һ��������
insert into T_MBR_UPDATE_LOG(id, mbr_id, mbrship_cd, update_time, update_type, status)values(seq_mbr_update_log.nextval,/*����mbrid*/,'',sysdate,'02','0');


�Ἦ0003111709 
���� ���� 
ԭ �绰 93071057672 
�� �绰 13916469569

--��ռ�õ��ֻ��Ų�����
select * from t_mbr_register r where r.login_name='93071057672';
select * from t_mbr m where m.mbr_id='7360835';
select * from t_mbr_person p where p.person_id='10077213';
select * from t_mbr_mbrship m where m.mbr_id='4837805'

--��¼
update t_mbr_register r set r.stus=0 where r.mbr_id =6227350 and r.login_subtyp='M';
update t_mbr_person p set p.mobile_no='13916469569', p.mobile='8613916469569' where p.person_id=(select m.person_id from t_mbr m where m.mbr_id=6227350);
insert into t_mbr_register values(SEQ_MBR_RGST.NEXTVAL,6227350,'','13916469569','FB25831D6EE3C549E2F3D72AFD6C7D78',1,'M','','','',sysdate,'',sysdate,'',1);
insert into T_MBR_UPDATE_LOG(id, mbr_id, mbrship_cd, update_time, update_type, status)values(seq_mbr_update_log.nextval,6227350,'',sysdate,'02','0');
























