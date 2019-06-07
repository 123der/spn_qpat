% This file contains a demo for the class SPN.

clc;clear;

absorption = @(x)(0.01 + 0 * x(1,:));
scattering = @(x)(1.5  + 0 * x(1,:));
gruneisen  = @(x)(0.75 + 0 * x(1,:));
source     = @(x)(1.0  + 0 * x(1,:));

%%% finite element method option struct.
femm_opt   = struct(...
    'deg', 2,...
    'qdeg', 6, ...
    'min_area', 1e-4, ...
    'edge', [0 1 1 0; 0 0 1 1]...
    );

%%% coefficients set.
coeff_opt  = struct(...
    'absorption', absorption, ...
    'scattering', scattering, ...
    'gruneisen', gruneisen);

%%% The option struct for SPN.
opt = struct(...
    'order', 1, ...
    'femm_opt', femm_opt, ...
    'coeff', coeff_opt,...
    'source', source...
    );

Sp = SPN(opt);



%%% Calculate the forward solution.


%%% Calculate the backward solution.