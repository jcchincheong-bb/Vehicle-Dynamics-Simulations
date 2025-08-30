%% Meta
% Simple Script to analyse the Pacejka friction model for friction against
% slip in tires 
%% Setup
% Wet
c1w=86/100;
c2w=33078/1000;
c3w=36/100;
f_mue_w = @(x)(c1w*(1-exp(-c2w*x))-c3w*x);
% Icy
c1i=2/10;
c2i=6628/1000;
c3i=0;
f_mue_i = @(x)(c1i*(1-exp(-c2i*x))-c3i*x);

%% Ploting friction against slip in different road conditions
fplot(f_mue_w,[0,1])
hold on
fplot(f_mue_i,[0,1])
hold off
grid
legend('wet','icy')
xlabel('braking slip')
ylabel('coef. of friction')
ylim([0 0.9])
figure
%% Ploting friction against tire speed in different road conditions and vehicle velocities (braking)
f_slip = @(v_v,v_w)((v_v-v_w)/(v_v));
for i=5:5:50
    slip_val = f_slip(i,0:0.1:i);
    plot(0:0.1:i,f_mue_w(slip_val),"-")
    hold on
    plot(0:0.1:i,f_mue_i(slip_val),"--")
end
xlabel('Tire speed [m/s]'); ylabel('Coef. of Friction [-]')
figure
%% Ploting friction against driving speed in different road conditions and tire velocities (accelerating)
f_slip = @(v_w,v_v)((v_w-v_v)/(v_w));
for i=5:5:50
    slip_val = f_slip(i,0:0.1:i);
    plot(0:0.1:i,f_mue_w(slip_val),"-")
    hold on
    plot(0:0.1:i,f_mue_i(slip_val),"--")
end
xlabel('Driving speed [m/s]'); ylabel('Coef. of Friction [-]')