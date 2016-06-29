insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'蓝志强','NONE','13823190999',to_date('1955-11-06','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '蓝志强' and rownum=1),'IDC','440301195511062113','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'杨松','null','null',to_date('1972-11-11','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '杨松' and rownum=1),'IDC','612324197211110010','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'马利华','null','13760268405',to_date('1970-10-27','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '马利华' and rownum=1),'IDC','330623197010270043','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'陈靓','null','null',to_date('1989-06-08','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '陈靓' and rownum=1),'IDC','420303198906082066','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'陆毅','null','null',to_date('1965-03-01','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '陆毅' and rownum=1),'IDC','440301196503018213','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'黄继建','null','null',to_date('1980-07-07','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '黄继建' and rownum=1),'IDC','440825198007071952','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'白如民','null','null',to_date('1960-08-15','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '白如民' and rownum=1),'IDC','440301196008152116','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'戴惠波','null','null','MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '戴惠波' and rownum=1),'IDC','441424197505292836','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'冯靓','null','null','MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '冯靓' and rownum=1),'IDC','510703197808051927','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'谭晓兵','MALE','13602505916','MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '谭晓兵' and rownum=1),'IDC','420106196802280876','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'杨宗平','null','13910639878','MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '杨宗平' and rownum=1),'IDC','231023196804182715','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'刘英华','null','13510300503','MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '刘英华' and rownum=1),'IDC','230103196805174628','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'侯伟荣','NONE','13902472869',to_date('1970-10-12','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '侯伟荣' and rownum=1),'IDC','440301197010122930','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'刘军','MALE','13760268405',to_date('1965-12-09','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '刘军' and rownum=1),'IDC','340103196512093053','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'唐从松','MALE','null',to_date('1963-01-12','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '唐从松' and rownum=1),'IDC','422801196301120434','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'张强','MALE','13760268405',to_date('1972-07-14','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '张强' and rownum=1),'IDC','110108197207148912','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'戴亦军','MALE','null',to_date('1969-11-16','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '戴亦军' and rownum=1),'IDC','432524196911163239','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'戴卓君','NONE','13826570161',to_date('1993-08-08','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '戴卓君' and rownum=1),'IDC','440301199308082723','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'戴惠明','null','13802222698','MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '戴惠明' and rownum=1),'IDC','440301196608102112','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'朱刚','null','18665808688','MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '朱刚' and rownum=1),'IDC','131104195808150639','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'李国钦 ','MALE','13602681368',to_date('1962-06-12','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '李国钦 ' and rownum=1),'IDC','440301196206122110','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'李建章','MALE','null',to_date('1964-08-01','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '李建章' and rownum=1),'IDC','440301196408012112','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'杨辛','MALE','null',to_date('1971-08-28','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '杨辛' and rownum=1),'IDC','442525197108280017','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'林俐','null','13902942671','MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '林俐' and rownum=1),'IDC','440301197206195613','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'柏桦','null','18676699026','MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '柏桦' and rownum=1),'IDC','420111196411115524','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'王刚','null','13760268405','MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '王刚' and rownum=1),'IDC','34082219870326021X','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'王刚','MALE','13760268405',to_date('1987-03-26','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '王刚' and rownum=1),'HKM','K01400564','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'肖静','null','13902901997','MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '肖静' and rownum=1),'IDC','420106196908274829','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'赵芝然','null','13902966577','MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '赵芝然' and rownum=1),'IDC','440301196402104497','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'饶爱芳','FEMALE','null',to_date('1966-07-04','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '饶爱芳' and rownum=1),'IDC','44030119660704132X','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'黄锋','NONE','null',to_date('1964-10-16','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '黄锋' and rownum=1),'IDC','440301196410161934','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'李国钦','null','13602681368','MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '李国钦' and rownum=1),'IDC','440301196206122110','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'徐建英','FEMALE','null',to_date('1956-07-10','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '徐建英' and rownum=1),'IDC','130107195607100625','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'刘涛','MALE','null',to_date('1952-11-14','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '刘涛' and rownum=1),'IDC','130107195211140612','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'杜俊杰','null','13509662772',to_date('1967-09-25','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '杜俊杰' and rownum=1),'IDC','420106196709254972','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'李保奇','null','null','MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '李保奇' and rownum=1),'IDC','410502196710042533','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'孙士轲','null','null',to_date('1992-10-26','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '孙士轲' and rownum=1),'IDC','510724199210260012','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'彭白萍','null','null',to_date('1972-11-09','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '彭白萍' and rownum=1),'IDC','440303197211096022','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'杨海峰','null','null',to_date('1973-01-22','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '杨海峰' and rownum=1),'IDC','640202197301220539','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'刘东方','null','null','MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '刘东方' and rownum=1),'IDC','44142419721204285X','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'李福莲','null','null',to_date('1971-04-15','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '李福莲' and rownum=1),'IDC','36213019710415272X','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'王业','MALE','null',to_date('1970-06-02','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '王业' and rownum=1),'IDC','110108197006028930','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'杨新林','MALE','13902966360',to_date('1964-04-03','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '杨新林' and rownum=1),'IDC','440301196404032319','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'韩凤林','MALE','null',to_date('1964-11-16','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '韩凤林' and rownum=1),'IDC','110108196411164210','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'李忠东','null','13902949956','MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '李忠东' and rownum=1),'IDC','440105196607260076','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'彭建','null','null',to_date('1972-02-27','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '彭建' and rownum=1),'IDC','440306197202270032','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'杜晓栋','null','null','MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '杜晓栋' and rownum=1),'IDC','370630197303020057','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger(pass_id,mbr_id,chi_name,gender,mobile_no,birthday,pass_type,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_ID.NEXTVAL,68163,'胡宇','null','null',to_date('1975-10-17','yyyy/MM/dd'),'MAN','VALID','system',sysdate,'system',sysdate);
insert into t_mbr_passenger_certificate(cer_id,pass_id,cer_type,cer_no,status,create_by,create_time,update_by,update_time) values(SEQ_PASS_CER_ID.NEXTVAL,(select pass_id from t_mbr_passenger p where p.mbr_id = 68163 and p.chi_name = '胡宇' and rownum=1),'IDC','360103197510171730','VALID','system',sysdate,'system',sysdate);
