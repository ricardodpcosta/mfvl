clear all;clc;
addpath('../../../mfvl_utils_mod/results_treatment');
addpath('test_01_01_test5_pro3/output');
addpath('test_01_01_test6_pro3/output');
addpath('test_01_01_test7_pro3/output');
addpath('test_01_01_test8_pro3/output');
load('test_pro_bending_01_01_test5_pro3_results');
load('test_pro_bending_01_01_test6_pro3_results');
load('test_pro_bending_01_01_test7_pro3_results');
load('test_pro_bending_01_01_test8_pro3_results');
caption_table{1}='$\omega=1|1,1$';
caption_table{2}='$\omega=1|3,1$';
caption_table{3}='$\omega=1|3,3$';
caption_table{4}='$\omega=1|3,10$';
caption_table{5}='Numerical results of pro3 scheme to the example~\ref{Example:PRO:bending:01_01_glob2_pro3}.';
file_name_out='table_01_01_glob2_pro3.tex';
label='PRO:bending:01_01_glob2_pro3';
mfvl_write_table6(file_name_out,caption_table,label,num_cells,stencil_size,degree,...
    p1_pro3,...
    p2_pro3,...
    p3_pro3,...
    p4_pro3,...
    p5_pro3,...
    p6_pro3,...
    p7_pro3,...
    p8_pro3);

directory2='../../../../Report/BIC_2017_report/tables/bending_pro_tables/global_tables/table_01_01_glob2_pro3.tex';
mfvl_write_table6(directory2,caption_table,label,num_cells,stencil_size,degree,...
    p1_pro3,...
    p2_pro3,...
    p3_pro3,...
    p4_pro3,...
    p5_pro3,...
    p6_pro3,...
    p7_pro3,...
    p8_pro3);
