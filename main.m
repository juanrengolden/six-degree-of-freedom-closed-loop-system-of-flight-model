clc;
clear all;
close all
%% global variable
global red
global blue
global sim_T
global maneuv_T
global sample_T
global lib_nzc
global lib_nyc
global FireRange
global H_max_r
global H_max_b
global H_min_r
global H_min_b

FireRange.red=5000;      %800m
%% initlization
%% flgiht parameters
%红方
red=struct;
red.x=0;                        %xe(m)
red.y=4000+50000;                     %ye(m)
red.z=0;                        %ze(m)
red.V=450;                      %airspeed
red.theta=0.0012;
red.psic=0;
red.gamma=0;
red.ksi=0.0111;
red.psi=0;
red.wx=0;
red.wy=0;
red.wz=1.19350777067254e-08;
red.alpha=0.0123;
red.beta=0;

%init controller
%% missile system
para=struct;
%% 控制参数
para.Kpf=0.1059;
para.Kdf=2.3012;
para.Kpp=0.53;
para.Kdp=0.76;
para.Kpg=1.1;
para.Kdg=0.08;
para.Kxp=0.02;

% simulation parameters
sim_T=300;                      %仿真时间            
maneuv_T=8;                     %机动时间
sample_T=0.01;                  %仿真间隔
