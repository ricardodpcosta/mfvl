% January, 2017
% test processing - PRO
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
mfvl_lib;
global a_matrix;
global stencil_matrix;

num_cells=[20 40 80 160 320 640 1280 2560];
% flux_num=1;
pro_scheme='pro4';
degree=[3 4 5];
weight1=3;
weight2=1;
flux_scheme='pro1';
%scheme{2}='pro4';
stencil_size=[4 6 6];
force=0;
auto_stencil_opt='user';

save('output/requisites.mat','num_cells','pro_scheme','degree','weight1','weight2','flux_scheme','stencil_size','force','auto_stencil_opt');
for d=1:numel(degree)
        for k=1:numel(num_cells)
            a_matrix=cell([1 num_cells(k)+2]);
            stencil_matrix=cell([1 num_cells(k)+2]);
            geo_test_01_01_test24_pro4;
            model_test_01_01_test24_pro4;
            mesh_test_01_01_test24_pro4;
            disp([d k]); 
            file_name=['nc' num2str(num_cells(k)) '_deg' num2str(degree(d)) '_wei1' num2str(weight1) num2str(weight2) '_' pro_scheme];
            if ~exist(['output/' file_name], 'dir')
                mkdir('output/',file_name);
            end

            file_name_mesh=['output/' file_name '/mesh.mat'];
            file_name_domain=['output/' file_name '/domain.mat'];
            file_name_model=['output/' file_name '/model.mat'];
            file_name_pro=['output/' file_name '/pro.mat'];
            file_name_sol=['output/' file_name '/sol.txt'];
            
            mesh=m{k};

            save(file_name_mesh,'mesh');
            save(file_name_domain,'domain');
            save(file_name_model,'mod');
            pro{d}{k}=mfvl_pro_bending(m{k},domain,mod,degree(d),[weight1 weight2],stencil_size(d),force,auto_stencil_opt,pro_scheme,flux_scheme);
            pro_s=pro{d}{k};
            sol=pro{d}{k}.u_approx;
            sol=num2str(sol);
            save(file_name_pro,'pro_s');
            dlmwrite(file_name_sol,sol,'delimiter','');
            %save(file_name_sol,'sol');
        end
end

% work files
save('output/test_pro_bending_01_01_test24_pro4_results.mat');
%load gong.mat;
%sound(y);
