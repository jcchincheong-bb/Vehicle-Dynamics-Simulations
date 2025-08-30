
close all
clear all
QCarModel_Parameters;
freq=0:0.1:10;


for i=1:length(freq)
    f=freq(i)
    sim('QcarModel_RoadExcitation_R2023a_Sim');
    dist(i)= max(ans.z_B(floor(length(ans.z_B)/2):floor(length(ans.z_B))));
    acc(i)= max(ans.zdd_B(floor(length(ans.zdd_B)/2):floor(length(ans.zdd_B))));
end

figure(1)
loglog(freq,acc)
xlabel('Frequency [Hz]')
ylabel('acc')


figure(2)
loglog(freq,dist)
xlabel('Frequency [Hz]')
ylabel('dist')

