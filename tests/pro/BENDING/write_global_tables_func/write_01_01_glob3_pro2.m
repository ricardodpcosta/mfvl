clear all;clc;
addpath('../../../mfvl_utils_mod/results_treatment');
addpath('test_01_01_test9_pro2/output');
addpath('test_01_01_test10_pro2/output');
addpath('test_01_01_test11_pro2/output');
addpath('test_01_01_test12_pro2/output');
load('test_pro_bending_01_01_test1_pro2_results');
load('test_pro_bending_01_01_test2_pro2_results');
load('test_pro_bending_01_01_test3_pro2_results');
load('test_pro_bending_01_01_test4_pro2_results');
caption_table{1}='$\omega=1|1,1$';
caption_table{2}='$\omega=1|3,1$';
caption_table{3}='$\omega=1|3,3$';
caption_table{4}='$\omega=1|3,10$';
caption_table{5}='Numerical results of pro2 scheme to the example~\ref{Example:PRO:bending:01_01_glob3_pro2}.';
file_name_out='table_01_01_glob3_pro2.tex';
label='PRO:bending:01_01_glob3_pro2';
mfvl_write_table6(file_name_out,caption_table,label,num_cells,stencil_size,degree,...
    p1_pro2,...
    p2_pro2,...
    p3_pro2,...
    p4_pro2,...
    p5_pro2,...
    p6_pro2,...
    p7_pro2,...
    p8_pro2);

directory2='../../../../Report/BIC_2017_report/tables/bending_pro_tables/global_tables/table_01_01_glob3_pro2.tex';
mfvl_write_table6(directory2,caption_table,label,num_cells,stencil_size,degree,...
    p1_pro2,...
    p2_pro2,...
    p3_pro2,...
    p4_pro2,...
    p5_pro2,...
    p6_pro2,...
    p7_pro2,...
    p8_pro2);

