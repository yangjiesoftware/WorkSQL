select * from t_mbr_mbrship_category c where c.category_name like '%ƽ��%';

select sum(decode(s.attribute,1,1)) "�����û�����",
sum(decode(s.attribute,0,1)) "â�����û�����"
from t_mbr_mbrship m,t_mbr s  
 where m.mbrship_category_id='5010027' and m.mbr_id=s.mbr_id;
 
 
 
 ---��ѯ�����û��Ļ�������  mbrId: 1871653 �Ļ������ 10503125   siebelϵͳ��Ӧ 1158804
 select a.point_total, m.mbr_id
   from t_mbr_point_account a, t_mbr m, t_mbr_mbrship ms
  where a.mbr_id = m.mbr_id
    and m.attribute = 1
    and ms.mbrship_category_id = '5010027'
    and ms.mbr_id = m.mbr_id;
 
 
--11��ƽ�����û�Ա 
--�����û� 3789�� 
--â���û� 106523��


--ƽ�����û�Ա�ܻ���:137278989
--���м����û������ܶ���:84287562  84��
--������ͨ�û������ܶ���:52991427  53��




--ƽ�����û�Ա�ܻ���(137278989���м����Ա����)
select sum(a.point_total)
from t_mbr_point_account a
where a.mbr_id in (select m.mbr_id
from t_mbr_mbrship m
where m.mbrship_category_id = '5010027');
                     
--â�������ػ�Ա����(52991427)                    
select sum(a.point_total)
from t_mbr_point_account a
where a.mbr_id in (select m.mbr_id
from t_mbr_mbrship m,t_mbr s  
 where m.mbrship_category_id='5010027' and m.mbr_id=s.mbr_id and s.attribute=0);
 
--�������û�Ա�����ܶ�(84287562)
select sum(a.point_total)
from t_mbr_point_account a
where a.mbr_id in (select m.mbr_id
from t_mbr_mbrship m,t_mbr s  
 where m.mbrship_category_id='5010027' and m.mbr_id=s.mbr_id and s.attribute=1);
