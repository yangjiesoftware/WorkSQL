select *
  from (select a.*, rownum as num
          from (SELECT TRANS_TYPE,
                       TRANS_POINT_VALUE,
                       POSTING_DATE_TIME,
                       salesTransNO,
                       decode(ltrim(rtrim(productCode)),
                              '8866010000',
                              '机票',
                              '8866020000',
                              '酒店',
                              '8866030000',
                              '邮轮',
                              '8866040000',
                              '自由行',
                              '8866050000',
                              '团队游',
                              '8866060000',
                              '票劵',
                              '8866080000',
                              '租车',
                              '8866090000',
                              '商城',
                              '8866100000',
                              '保险',
                              '8866110000',
                              '火车票',
                              '8866120000',
                              '会议',
                              '8866130000',
                              '合作伙伴转入积分',
                              '8866140000',
                              '合作伙伴转出至积分',
                              '8866150000',
                              '内部非积分账户转入',
                              '8866160000',
                              '积分充值卡',
                              '8866170000',
                              '直接购买积分',
                              '8866070000',
                              '其他',
                              null,
                              '-') as productCode,
                       nvl(cTSTransactionOrgCode, '-') cTSTransactionOrgCode,
                       transDateTime
                  FROM (SELECT TRANS_TYPE,
                               TRANS_POINT_VALUE,
                               POSTING_DATE_TIME,
                               REF_SALES_TRANS_NO as salesTransNO,
                               PRODUCT_CODE as productCode,
                               '' as cTSTransactionOrgCode,
                               TRANS_DATE_TIME as transDateTime
                          FROM T_MBR_POINT_ADJUSTMENT  A,
                               T_MBR_POINT_TRANSACTION T
                         WHERE A.POINT_ADJUSTMENT_ID = T.POINT_TRANSACTION_ID
                           and T.trans_type <> 'F'
                           AND ACCT_ID =
                               (select POINT_ACCOUNT_ID
                                  from t_mbr_point_account
                                 where mbr_id = '33369085')
                        
                        union all
                        SELECT TRANS_TYPE,
                               TRANS_POINT_VALUE,
                               POSTING_DATE_TIME,
                               POINTCARD_ID as salesTransNO,
                               '8866160000' as productCode,
                               '' as cTSTransactionOrgCode,
                               TRANS_DATE_TIME as transDateTime
                          FROM T_MBR_POINT_Card B, T_MBR_POINT_TRANSACTION T
                         WHERE B.POINT_TRANSACTION_ID = T.POINT_TRANSACTION_ID
                           AND ACCT_ID =
                               (select POINT_ACCOUNT_ID
                                  from t_mbr_point_account
                                 where mbr_id = '33369085')
                        
                        union all
                        SELECT TRANS_TYPE,
                               TRANS_POINT_VALUE,
                               POSTING_DATE_TIME,
                               SALES_TRANS_NO as salesTransNO,
                               to_char(SALES_TRANS_CODE) as productCode,
                               to_char(SALES_TRANS_CHANNEL) as cTSTransactionOrgCode,
                               TRANS_DATE_TIME as transDateTime
                          FROM T_MBR_POINT_AWARD C, T_MBR_POINT_TRANSACTION T
                         WHERE C.POINT_AWARD_ID = T.POINT_TRANSACTION_ID
                           AND ACCT_ID =
                               (select POINT_ACCOUNT_ID
                                  from t_mbr_point_account
                                 where mbr_id = '33369085')) d
                 order by POSTING_DATE_TIME desc) a) b
