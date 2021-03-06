SELECT 
 sum(test_kylin_fact.price) as GMV 
 , count(*) as TRANS_CNT 
 FROM test_kylin_fact 
 inner JOIN test_cal_dt 
 ON test_kylin_fact.cal_dt = test_cal_dt.cal_dt 
 inner JOIN test_category_groupings 
 ON test_kylin_fact.leaf_categ_id = test_category_groupings.leaf_categ_id AND test_kylin_fact.lstg_site_id = test_category_groupings.site_id 
 inner JOIN test_sites 
 ON test_kylin_fact.lstg_site_id = test_sites.site_id 
 inner JOIN test_seller_type_dim 
 ON test_kylin_fact.slr_segment_cd = test_seller_type_dim.seller_type_cd 
