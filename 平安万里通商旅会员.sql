select * from t_mbr_mbrship_category c where c.category_name like '%平安%';

select sum(decode(s.attribute,1,1)) "集体用户个数",
sum(decode(s.attribute,0,1)) "芒果网用户个数"
from t_mbr_mbrship m,t_mbr s  
 where m.mbrship_category_id='5010027' and m.mbr_id=s.mbr_id;
 
 
 
 ---查询集团用户的积分详情  mbrId: 1871653 的积分最多 10503125   siebel系统对应 1158804
 select a.point_total, m.mbr_id
   from t_mbr_point_account a, t_mbr m, t_mbr_mbrship ms
  where a.mbr_id = m.mbr_id
    and m.attribute = 1
    and ms.mbrship_category_id = '5010027'
    and ms.mbr_id = m.mbr_id;
 
 
--11万平安商旅会员 
--集体用户 3789人 
--芒果用户 106523人


--平安商旅会员总积分:137278989
--其中集体用户积分总额是:84287562  84万
--其中普通用户积分总额是:52991427  53万




--平安商旅会员总积分(137278989其中集体会员积分)
select sum(a.point_total)
from t_mbr_point_account a
where a.mbr_id in (select m.mbr_id
from t_mbr_mbrship m
where m.mbrship_category_id = '5010027');
                     
--芒果网本地会员积分(52991427)                    
select sum(a.point_total)
from t_mbr_point_account a
where a.mbr_id in (select m.mbr_id
from t_mbr_mbrship m,t_mbr s  
 where m.mbrship_category_id='5010027' and m.mbr_id=s.mbr_id and s.attribute=0);
 
--集团商旅会员积分总额(84287562)
select sum(a.point_total)
from t_mbr_point_account a
where a.mbr_id in (select m.mbr_id
from t_mbr_mbrship m,t_mbr s  
 where m.mbrship_category_id='5010027' and m.mbr_id=s.mbr_id and s.attribute=1);
