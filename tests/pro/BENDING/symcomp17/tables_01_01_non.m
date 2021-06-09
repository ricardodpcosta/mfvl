clear; clc;
addpath('../../../../');
addpath('../../../../mfvl_utils_mod');
addpath('../../../../mfvl_utils_mod/results_treatment');
addpath('../../../../mfvl_utils_mod/plot_mesh');
addpath('../../../../mfvl_run');
addpath('../../../../mfvl_mesh_mod');
addpath('../../../../mfvl_solver_mod');
addpath('../../../../mfvl_quadrat_mod');
addpath('../../../../mfvl_reconst_mod');
addpath('../../../../mfvl_domain_mod');
addpath('../../../../mfvl_model_mod');
addpath('../../../../mfvl_model_mod/mfvl_material_list1d');
mfvl_lib;

addpath('test_01_01_test1_pro2_non/output');
load('test_pro_bending_01_01_test1_pro2_results');
p1_l_inf=p1_pro2;
p1_l_1=p1_pro2_l1;
clearvars p1_pro2 p1_pro2_l1

addpath('test_01_01_test2_pro2_non/output');
load('test_pro_bending_01_01_test2_pro2_results');
p2_l_inf=p2_pro2;
p2_l_1=p2_pro2_l1;
clearvars p2_pro2 p2_pro2_l1

addpath('test_01_01_test1_pro4_non/output');
load('test_pro_bending_01_01_test1_pro4_results');
p3_l_inf=p1_pro4;
p3_l_1=p1_pro4_l1;
clearvars p1_pro4 p1_pro4_l1;

addpath('test_01_01_test2_pro4_non/output');
load('test_pro_bending_01_01_test2_pro4_results');
p4_l_inf=p2_pro4;
p4_l_1=p2_pro4_l1;
clearvars p2_pro4 p2_pro4_l1;

load('requisites.mat');
%%%

file_name_out='table_01_01_manufactured_non.tex';
caption_table='Test of 01\_01 with d and d+1.';
label='none';
mfvl_symcomp_tables_01_01(file_name_out,caption_table,label,num_cells,degree,p1_l_inf,p1_l_1,...
    p2_l_inf,p2_l_1,p3_l_inf,p3_l_1,p4_l_inf,p4_l_1);

clearvars p1_l_inf p1_l_1 p2_l_inf p2_l_1 p3_l_inf p3_l_1 p4_l_inf p4_l_1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

addpath('test_01_01_test3_pro2_non/output');
load('test_pro_bending_01_01_test3_pro2_results');
p1_l_inf=p1_pro2;
p1_l_1=p1_pro2_l1;
clearvars p1_pro2 p1_pro2_l1

addpath('test_01_01_test4_pro2_non/output');
load('test_pro_bending_01_01_test4_pro2_results');
p2_l_inf=p2_pro2;
p2_l_1=p2_pro2_l1;
clearvars p2_pro2 p2_pro2_l1

addpath('test_01_01_test3_pro4_non/output');
load('test_pro_bending_01_01_test3_pro4_results');
p3_l_inf=p1_pro4;
p3_l_1=p1_pro4_l1;
clearvars p1_pro4 p1_pro4_l1;

addpath('test_01_01_test4_pro4_non/output');
load('test_pro_bending_01_01_test4_pro4_results');
p4_l_inf=p2_pro4;
p4_l_1=p2_pro4_l1;
clearvars p2_pro4 p2_pro4_l1;


file_name_out='table_01_01_null_non.tex';
caption_table='Test of 01\_01 with d and d+1.';
label='none';
mfvl_symcomp_tables_01_01(file_name_out,caption_table,label,num_cells,degree,p1_l_inf,p1_l_1,...
    p2_l_inf,p2_l_1,p3_l_inf,p3_l_1,p4_l_inf,p4_l_1);
