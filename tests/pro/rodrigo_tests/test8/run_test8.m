% January, 2017
% test8 processing - PRO
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

num_cells=[20 30 40 100];
flux_num=[1 2];
degree=[1 2 3 4 5];
weight1=3;
weight2=1;
force=0;
scheme='cdr';
auto_stencil_opt='user';
stencil_size(1,:)=zeros([1 numel(degree)]);
stencil_size(2,:)=degree;
stencil_size(3,:)=degree;
stencil_size(4,:)=degree+ones([1 numel(degree)]);
% the stencil_size will be distributed in a matrix with four lines
% the first is for the total
% the second is only for the conservative reconst. in the cells
% the third is only for the conservative in the vertices
% the fouth is only for the non-conservative

for d=1:numel(degree)
    for f=1:numel(flux_num)
        if (flux_num(f)==1)
            flux='pro1';
        else
            flux='pro2';
        end
        for k=1:numel(num_cells)
            geo_test8;
            model_test8;
            mesh_test8;
            disp([d f k]);  
           
            pro{d}{k,f}=mfvl_pro(m{k},domain,mod,degree(d),flux,[weight1 weight2],scheme,stencil_size(:,d),force,auto_stencil_opt);
        end
    end
end

% work files
save('output\test8_pro_results.mat');
load gong.mat;
sound(y);