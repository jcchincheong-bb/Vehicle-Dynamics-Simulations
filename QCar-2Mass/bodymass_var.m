%% Programm

close all
clear 
para;
param = [m_B c_B d_B m_W c_W d_W];
f=50;
freq={0,f*(2*pi)};
%% variation of wheel mass
bodymass=linspace(100,5000,10);

for h=1:length(bodymass)
    param(1) = bodymass(h);
    leg(h)= bodymass(h) + " kg";
    sys_acc(h)=TF_acc(param);
    sys_fdyn(h)=TF_fdyn(param);
end

bodemag(sys_acc(1),sys_acc(2),sys_acc(3),sys_acc(4),sys_acc(5),sys_acc(6),sys_acc(7),sys_acc(8),sys_acc(9),sys_acc(10),freq)
ylabel("Acceleration")
acc_leg = legend(leg);
acc_leg.Location = 'southeast';
figure

bodemag(sys_fdyn(1),sys_fdyn(2),sys_fdyn(3),sys_fdyn(4),sys_fdyn(5),sys_fdyn(6),sys_fdyn(7),sys_fdyn(8),sys_fdyn(9),sys_fdyn(10),freq)
ylabel("Dynamic Force")
f_leg = legend(leg);
f_leg.Location = 'southeast';