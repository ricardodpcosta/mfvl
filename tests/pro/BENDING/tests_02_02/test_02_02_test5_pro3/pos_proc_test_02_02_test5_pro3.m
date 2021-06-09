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
load('output/test_pro_bending_02_02_test5_pro3_results.mat');
func=@(x)(-exp(x)+(exp(1)-1)*((x^3)/6)+(x^2)/2+((5*exp(1)-8)/6)*x+1); % attention
% errors
for i=1:numel(degree)
    for f=1:numel(flux_num)
        for k=1:numel(num_cells)
            error{i}(k,f)=max(abs(pro{i}{k,f}.u_approx'-m{k}.eval_mean_value_cells(func)));
        end
    end
end
p1_pro3=format_errors_orders(error{1}(:,1),numel(num_cells),num_cells);
p2_pro3=format_errors_orders(error{2}(:,1),numel(num_cells),num_cells);

% write tables
label='Table:PRO:test_02_02_test5_pro3';
directory1='../../../../../Report/BIC_2017_report/tables/bending_pro_tables/test_02_02_test5_pro3.tex';
directory2='output/test_02_02_test5_pro3.tex';
caption='Numerical results of the example~/ref{Example:Pro:bending:Test02_02_pro3} with $/omega=1|1$, and $/omega=1$.';

 mfvl_write_table4(directory1,caption,label,num_cells,degree,...
     p1_pro3.e,p1_pro3.o,...
     p2_pro3.e,p2_pro3.o);

 mfvl_write_table4(directory2,caption,label,num_cells,degree,...
     p1_pro3.e,p1_pro3.o,...
     p2_pro3.e,p2_pro3.o);
save('output/test_pro_bending_02_02_test5_pro3_results.mat');
