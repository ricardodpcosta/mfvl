% January, 2017
% script for post-processing - PRO
clear all; clc;
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
addpath('../../../../mfvl_utils_mod/results_treatment');
load('output\test_pro_bending_01_23_test9_results.mat');
func=@(x)(x^4); % attention
% errors
for i=1:numel(degree)
    for f=1:numel(flux_num)
        for k=1:numel(num_cells)
            error{i}(k,f)=max(abs(pro{i}{k,f}.u_approx'-m{k}.eval_mean_value_cells(func)));
        end
    end
end
P1_PRO1=format_errors_orders(error{1}(:,1),numel(num_cells),num_cells);
P2_PRO1=format_errors_orders(error{2}(:,1),numel(num_cells),num_cells);
P3_PRO1=format_errors_orders(error{3}(:,1),numel(num_cells),num_cells);

% write tables
label='Table:PRO:test_01_23_test9';
directory1='..\..\..\..\..\Report\BIC_2017_report\tables\bending_pro_tables\test_01_23_test9.tex';
directory2='output\test_01_23_test9.tex';
caption='Numerical results of the example~\ref{Example:Pro:bending:Test01_23_glob1} with $\omega=1|1$, and $\omega=1$.';

 mfvl_write_table4(directory1,caption,label,num_cells,degree,...
     P1_PRO1.e,P1_PRO1.o,...
     P2_PRO1.e,P2_PRO1.o,...
     P3_PRO1.e,P3_PRO1.o);

 mfvl_write_table4(directory2,caption,label,num_cells,degree,...
     P1_PRO1.e,P1_PRO1.o,...
     P2_PRO1.e,P2_PRO1.o,...
     P3_PRO1.e,P3_PRO1.o);
save('output\test_pro_bending_01_23_test9_results.mat');
