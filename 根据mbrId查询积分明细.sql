select *
  from (select a.*, rownum as num
          from (SELECT TRANS_TYPE,
                       TRANS_POINT_VALUE,
                       POSTING_DATE_TIME,
                       salesTransNO,
                       decode(ltrim(rtrim(productCode)),
                              '8866010000',
                              '��Ʊ',
                              '8866020000',
                              '�Ƶ�',
                              '8866030000',
                              '����',
                              '8866040000',
                              '������',
                              '8866050000',
                              '�Ŷ���',
                              '8866060000',
                              'Ʊ��',
                              '8866080000',
                              '�⳵',
                              '8866090000',
                              '�̳�',
                              '8866100000',
                              '����',
                              '8866110000',
                              '��Ʊ',
                              '8866120000',
                              '����',
                              '8866130000',
                              '�������ת�����',
                              '8866140000',
                              '�������ת��������',
                              '8866150000',
                              '�ڲ��ǻ����˻�ת��',
                              '8866160000',
                              '���ֳ�ֵ��',
                              '8866170000',
                              'ֱ�ӹ������',
                              '8866070000',
                              '����',
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
