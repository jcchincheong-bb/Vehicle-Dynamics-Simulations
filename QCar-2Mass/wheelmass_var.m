%% Programm

close all
clear all
para;

freq=0:0.1:50;

%% variation of wheel mass
wheelmass=[30 40 50];


for h=1:3
    m_W=wheelmass(h);
for i=1:length(freq)
    f=freq(i)
    sim('model');
    F(h,i)=max(F_dyn(length(F_dyn)/2:length(F_dyn)));
    acc(h,i)=max(ddz_B(length(ddz_B)/2:length(ddz_B)));
end
end

figure(1)
loglog(freq,acc(1,:),freq,acc(2,:),freq,acc(3,:))
xlabel('Frequency [Hz]')
ylabel('acc')
title('variation of wheel mass')
legend('30 kg','40 kg','50kg')
figure(2)
loglog(freq,F(1,:),freq,F(2,:),freq,F(3,:))
xlabel('Frequency [Hz]')
ylabel('Fdyn')
title('variation of wheel mass')
legend('30 kg','40 kg','50kg')

