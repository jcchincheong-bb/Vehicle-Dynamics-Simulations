function [sys] = TF_fdyn(param)
% defining parameters
    m_B = param(1);
    c_B = param(2);
    d_B = param(3);
    m_W = param(4);
    c_W = param(5);
    d_W = param(6);    
% define the transfer function
    num_B = [0, d_W*d_B, d_W*c_B+d_B*c_W, c_W*c_B, 0, 0];
    num_W = [m_B*d_W, d_B*d_W+m_B*c_W, d_B*c_W+d_W*c_B, c_B*c_W, 0, 0];
    dem = [m_B*m_W, m_B*(d_B+d_W)+m_W*d_B, m_B*(c_B+c_W)+m_W*c_B+d_B*d_W, d_B*c_W+d_W*c_B, c_B*c_W];
    num = m_B*num_B + m_W*num_W;
    sys = tf(num,dem);
end