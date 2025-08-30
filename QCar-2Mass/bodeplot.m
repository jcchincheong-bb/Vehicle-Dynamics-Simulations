%% Programm

close all
clear all
para;
freq={0,50*(2*pi)};

%% Bode Plot
sys = tf([d_W*d_B,d_W*c_B+d_B*c_W,c_W*c_B],[m_B*m_W,m_B*(d_B+d_W)+m_W*d_B,m_B*(c_B+c_W)+m_W*c_B+d_B*d_W,d_B*c_W+d_W*c_B,c_B*c_W]);
bode(sys,freq)