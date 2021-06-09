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
load('output\test_pro_bending_01_23_test2_results.mat');
func=@(x)(exp(x)); % attention
% errors
for i=1:numel(degree)
    for f=1:numel(flux_num)
        for k=1:numel(num_cells)
            error{i}(k,f)=max(abs(pro{i}{k,f}.u_approx'-m{k}.eval_mean_value_cells(func)));
        end
    end
end
P4_PRO1=format_errors_orders(error{1}(:,1),numel(num_cells),num_cells);
P5_PRO1=format_errors_orders(error{2}(:,1),numel(num_cells),num_cells);
P6_PRO1=format_errors_orders(error{3}(:,1),numel(num_cells),num_cells);

% write tables
label='Table:PRO:test_01_23_test2';
directory1='..\..\..\..\..\Report\BIC_2017_report\tables\bending_pro_tables\test_01_23_test2.tex';
directory2='output\test_01_23_test2.tex';
caption='Numerical results of the example~\ref{Example:Pro:bending:Test01_23_glob1} with $\omega=1|3$, and $\omega=1$.';

 mfvl_write_table4(directory1,caption,label,num_cells,degree,...
     P4_PRO1.e,P4_PRO1.o,...
     P5_PRO1.e,P5_PRO1.o,...
     P6_PRO1.e,P6_PRO1.o);

 mfvl_write_table4(directory2,caption,label,num_cells,degree,...
     P4_PRO1.e,P4_PRO1.o,...
     P5_PRO1.e,P5_PRO1.o,...
     P6_PRO1.e,P6_PRO1.o);
save('output\test_pro_bending_01_23_test2_results.mat');
