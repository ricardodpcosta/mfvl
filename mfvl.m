% October, 2016
% global variables
global mfvl_bound_cond_dirichlet;
global mfvl_bound_cond_neumann;
global mfvl_bound_cond_type01;
global mfvl_bound_cond_type02;
global mfvl_bound_cond_type23;
global mfvl_inter_cond_continuity;
global mfvl_inter_cond_transference;
global mfvl_initi_cond_explicit;
global mfvl_source_term_explicit;
global mfvl_reconst_cell;
global mfvl_reconst_vertex;
global mfvl_conservation_none;
global mfvl_conservation_mean_value;
global mfvl_conservation_mean_value_der1;
global mfvl_conservation_mean_value_der2;
global mfvl_conservation_mean_value_der3;
global mfvl_conservation_none_der1;
global mfvl_conservation_none_der2;
global mfvl_conservation_point_value;
global mfvl_conservation_point_value_der1;
global mfvl_material1d_solid;
global mfvl_material1d_fluid;
global mfvl_degree_default;
global mfvl_bending_scheme;
global mfvl_cdr_scheme;
mfvl_bound_cond_dirichlet=1;
mfvl_bound_cond_neumann=2;
mfvl_bound_cond_type01=3;
mfvl_bound_cond_type02=4;
mfvl_bound_cond_type23=5;
mfvl_inter_cond_continuity=3;
mfvl_inter_cond_transference=4;
mfvl_initi_cond_explicit=5;
mfvl_source_term_explicit=6;
mfvl_reconst_cell=1;
mfvl_reconst_vertex=2;
mfvl_conservation_none=1;
mfvl_conservation_mean_value=2;
mfvl_conservation_point_value=3;
mfvl_conservation_mean_value_der1=4;
mfvl_conservation_mean_value_der2=5;
mfvl_conservation_mean_value_der3=9;
mfvl_conservation_none_der1=6;
mfvl_conservation_none_der2=7;
mfvl_conservation_point_value_der1=8;
mfvl_material1d_solid=1;
mfvl_material1d_fluid=2;
mfvl_degree_default=1;
mfvl_cdr_scheme=1;
mfvl_bending_scheme=2;
% source paths
addpath('mfvl_utils_mod');
addpath('mfvl_utils_mod/results_treatment');
addpath('mfvl_utils_mod/plot_mesh');
addpath('mfvl_run');
addpath('mfvl_mesh_mod');
addpath('mfvl_solver_mod');
addpath('mfvl_quadrat_mod');
addpath('mfvl_reconst_mod');
addpath('mfvl_domain_mod');
addpath('mfvl_model_mod');
addpath('mfvl_model_mod/mfvl_material_list1d');
% end of file