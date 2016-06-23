--要求添加用户sunjl,mg系统下的【会员管理、会籍管理和积分调整下的会员账户管理和积分查询权限】

--所以要查出来该些模块的module_id(其中积分调整模块有的还需要过滤)
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

 ---得到module_id



insert into t_mbr_user (USER_ID, USER_NAME, USER_CODE, DEPARTMENT, POSTION, LOGIN_NAME, LOGIN_PASSWORD, STUS, CREATE_TIM, CREATE_BY, UPDATE_TIM, UPDATE_BY)
values (SEQ_MBR_USER.Nextval, 'sunjl', 'sunjl', '商旅', '商旅', 'sunjl', 'AAA42296669B958C3CEE6C0475C8093E', '1    ', sysdate, 'IT_Jie.yang', sysdate, 'IT_Jie.yang');


---在查一下该用户的user_id,得到是213



--插入中间表
---大类别
---会员管理
insert into t_mbr_user_module (USER_MODULE_ID, USER_ID, MODULE_ID, MODULE_CD, MODULE_NAME, STUS, CREATE_TIM, CREATE_BY, UPDATE_TIM, UPDATE_BY)
values (SEQ_MBR_USER_MODULE.Nextval+794, 213, 2, '', '', '1    ', sysdate, 'IT_Jie.yang', null, '');

--会籍管理
insert into t_mbr_user_module (USER_MODULE_ID, USER_ID, MODULE_ID, MODULE_CD, MODULE_NAME, STUS, CREATE_TIM, CREATE_BY, UPDATE_TIM, UPDATE_BY)
values (SEQ_MBR_USER_MODULE.Nextval+794, 213, 3, '', '', '1    ', sysdate, 'IT_Jie.yang', null, '');

--积分调整
insert into t_mbr_user_module (USER_MODULE_ID, USER_ID, MODULE_ID, MODULE_CD, MODULE_NAME, STUS, CREATE_TIM, CREATE_BY, UPDATE_TIM, UPDATE_BY)
values (SEQ_MBR_USER_MODULE.Nextval+794, 213, 10, '', '', '1    ', sysdate, 'IT_Jie.yang', null, '');


--会员管理，会籍，积分下的子类别
insert into t_mbr_user_module (USER_MODULE_ID, USER_ID, MODULE_ID, MODULE_CD, MODULE_NAME, STUS, CREATE_TIM, CREATE_BY, UPDATE_TIM, UPDATE_BY)
values (SEQ_MBR_USER_MODULE.Nextval+794, 213, 201, '', '', '1    ', sysdate, 'IT_Jie.yang', null, '');

insert into t_mbr_user_module (USER_MODULE_ID, USER_ID, MODULE_ID, MODULE_CD, MODULE_NAME, STUS, CREATE_TIM, CREATE_BY, UPDATE_TIM, UPDATE_BY)
values (SEQ_MBR_USER_MODULE.Nextval+794, 213, 202, '', '', '1    ', sysdate, 'IT_Jie.yang', null, '');

insert into t_mbr_user_module (USER_MODULE_ID, USER_ID, MODULE_ID, MODULE_CD, MODULE_NAME, STUS, CREATE_TIM, CREATE_BY, UPDATE_TIM, UPDATE_BY)
values (SEQ_MBR_USER_MODULE.Nextval+794, 213, 203, '', '', '1    ', sysdate, 'IT_Jie.yang', null, '');

insert into t_mbr_user_module (USER_MODULE_ID, USER_ID, MODULE_ID, MODULE_CD, MODULE_NAME, STUS, CREATE_TIM, CREATE_BY, UPDATE_TIM, UPDATE_BY)
values (SEQ_MBR_USER_MODULE.Nextval+794, 213, 204, '', '', '1    ', sysdate, 'IT_Jie.yang', null, '');

insert into t_mbr_user_module (USER_MODULE_ID, USER_ID, MODULE_ID, MODULE_CD, MODULE_NAME, STUS, CREATE_TIM, CREATE_BY, UPDATE_TIM, UPDATE_BY)
values (SEQ_MBR_USER_MODULE.Nextval+794, 213, 301, '', '', '1    ', sysdate, 'IT_Jie.yang', null, '');

insert into t_mbr_user_module (USER_MODULE_ID, USER_ID, MODULE_ID, MODULE_CD, MODULE_NAME, STUS, CREATE_TIM, CREATE_BY, UPDATE_TIM, UPDATE_BY)
values (SEQ_MBR_USER_MODULE.Nextval+794, 213, 302, '', '', '1    ', sysdate, 'IT_Jie.yang', null, '');

insert into t_mbr_user_module (USER_MODULE_ID, USER_ID, MODULE_ID, MODULE_CD, MODULE_NAME, STUS, CREATE_TIM, CREATE_BY, UPDATE_TIM, UPDATE_BY)
values (SEQ_MBR_USER_MODULE.Nextval+794, 213, 1006, '', '', '1    ', sysdate, 'IT_Jie.yang', null, '');

insert into t_mbr_user_module (USER_MODULE_ID, USER_ID, MODULE_ID, MODULE_CD, MODULE_NAME, STUS, CREATE_TIM, CREATE_BY, UPDATE_TIM, UPDATE_BY)
values (SEQ_MBR_USER_MODULE.Nextval+794, 213, 1007, '', '', '1    ', sysdate, 'IT_Jie.yang', null, '');