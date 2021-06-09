% January, 2017
% script for post-processing - PRO
clear all; clc;
addpath('../../../../../');
addpath('../../../../../mfvl_utils_mod');
addpath('../../../../../mfvl_utils_mod/results_treatment');
addpath('../../../../../mfvl_utils_mod/plot_mesh');
addpath('../../../../../mfvl_run');
addpath('../../../../../mfvl_mesh_mod');
addpath('../../../../../mfvl_solver_mod');
addpath('../../../../../mfvl_quadrat_mod');
addpath('../../../../../mfvl_reconst_mod');
addpath('../../../../../mfvl_domain_mod');
addpath('../../../../../mfvl_model_mod');
addpath('../../../../../mfvl_model_mod/mfvl_material_list1d');
addpath('../../../../../mfvl_utils_mod/results_treatment');
load('output/requisites.mat');
mfvl_lib;
func=@(x)-exp(x)+(exp(1)/6)*x^3+x+1; % attention
%if ~exist('output/plots', 'dir')
%    mkdir('output/','plots');
%end
% errors
for i=1:numel(degree)
    for k=1:numel(num_cells)
        file_name=['nc' num2str(num_cells(k)) '_deg' num2str(degree(i)) '_wei1' num2str(weight1) num2str(weight2) '_' pro_scheme];
        sol=importdata(['output/' file_name '/sol.dat']);
        load(['output/' file_name '/mesh.mat']);
        h=mesh.get_cell_length_all;

        error{1,i}(k)=max(abs(sol'-mesh.eval_mean_value_cells(func)));
        error{2,i}(k)=sum(abs(sol'-mesh.eval_mean_value_cells(func)).*h);
    end
end
p7_pro4=format_errors_orders(error{1,1},numel(num_cells),num_cells);
p7_pro4_l1=format_errors_orders(error{2,1},numel(num_cells),num_cells);

p8_pro4=format_errors_orders(error{1,2},numel(num_cells),num_cells);
p8_pro4_l1=format_errors_orders(error{2,2},numel(num_cells),num_cells);

p9_pro4=format_errors_orders(error{1,3},numel(num_cells),num_cells);
p9_pro4_l1=format_errors_orders(error{2,3},numel(num_cells),num_cells);

save('output/test_pro_bending_01_23_test1_pro4_results','p7_pro4','p7_pro4_l1','p8_pro4','p8_pro4_l1','p9_pro4','p9_pro4_l1');
