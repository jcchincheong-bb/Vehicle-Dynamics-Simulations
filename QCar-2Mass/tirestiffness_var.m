%% Programm

close all
clear 
para;
param = [m_B c_B d_B m_W c_W d_W];
f=50;
%% variation of wheel mass
tirestiffness=100:10:200;

for h=1:length(tirestiffness)
    param(5) = tirestiffness(h)*1000;
    leg(h)= tirestiffness(h) + " kN/m";
    sys_acc(h)=TF_acc(param);
    sys_fdyn(h)=TF_fdyn(param);
end

bodemag(sys_acc(1),sys_acc(2),sys_acc(3),sys_acc(4),sys_acc(5),sys_acc(6),sys_acc(7),sys_acc(8),sys_acc(9),sys_acc(10),sys_acc(11),{0,f*(2*pi)})
ylabel("Acceleration")
acc_leg = legend(leg);
acc_leg.Location = 'southeast';
figure

bodemag(sys_fdyn(1),sys_fdyn(2),sys_fdyn(3),sys_fdyn(4),sys_fdyn(5),sys_fdyn(6),sys_fdyn(7),sys_fdyn(8),sys_fdyn(9),sys_fdyn(10),sys_fdyn(11),{0,f*(2*pi)})
ylabel("Dynamic Force")
f_leg = legend(leg);
f_leg.Location = 'southeast';