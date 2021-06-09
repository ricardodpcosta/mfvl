% January, 2017
% script for post-processing - PRO
clear all; clc;
addpath('../../../../../../');
addpath('../../../../../../mfvl_utils_mod');
addpath('../../../../../../mfvl_utils_mod/results_treatment');
addpath('../../../../../../mfvl_utils_mod/plot_mesh');
addpath('../../../../../../mfvl_run');
addpath('../../../../../../mfvl_mesh_mod');
addpath('../../../../../../mfvl_solver_mod');
addpath('../../../../../../mfvl_quadrat_mod');
addpath('../../../../../../mfvl_reconst_mod');
addpath('../../../../../../mfvl_domain_mod');
addpath('../../../../../../mfvl_model_mod');
addpath('../../../../../../mfvl_model_mod/mfvl_material_list1d');
addpath('../../../../../../mfvl_utils_mod/results_treatment');
load('output/test_pro_bending_01_01_test23_pro6_results.mat');
func=@(x)(sin(6*pi*x)*exp(x)); % attention
% errors
for i=1:numel(degree)
        for k=1:numel(num_cells)
            error{i}(k)=max(abs(pro{i}{k}.u_approx'-m{k}.eval_mean_value_cells(func)));
        end
end
p1_pro6=format_errors_orders(error{1},numel(num_cells),num_cells);
p2_pro6=format_errors_orders(error{2},numel(num_cells),num_cells);
p3_pro6=format_errors_orders(error{3},numel(num_cells),num_cells);

if ~exist('output/tables', 'dir')
    mkdir('output/','tables');
end
% write tables
label='Table:PRO:test_01_01_test23_pro6';
directory1='../../../../../../../Report/BIC_2017_report/tables/bending_pro_tables/test_01_01_test23_pro6.tex';
directory2='output/tables/test_01_01_test23_pro6.tex';
caption='Numerical results of the example~/ref{Example:Pro:bending:Test01_01_glob1} with $/omega=1|1$, and $/omega=1$.';

% mfvl_write_table4(directory1,caption,label,num_cells,degree,...
%     p1_pro6.e,p1_pro6.o,...
%     p2_pro6.e,p2_pro6.o);
% 
% mfvl_write_table4(directory2,caption,label,num_cells,degree,...
%     p1_pro6.e,p1_pro6.o,...
%     p2_pro6.e,p2_pro6.o);
save('output/test_pro_bending_01_01_test23_pro6_results.mat');
