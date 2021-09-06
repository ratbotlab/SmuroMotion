function [th1, th2, th5, th7] = pitchTorso(phi, t)
% function [th1, th2, th5, th7] = pitchTorso(phi, t)
% torso pitch motion
% involving joints : joint 1, 2, 5, 7
% Takes   phi:  amplitude of the yaw motion
%         t:    time request
% Returns thi:  the position of joint i at time t
t_ = t;
% parameter normalize
if t_ < 0
    t_ = 0;
elseif t_ >1
    t_ = 1;
end
if t_ < 1/2
    th7 = msin(0.2157,      1.932,    0.05225,  t_)...
        + msin(0.009819,   27.22,    12.46,     t_);
    th5 = msin(0.4838,      6.06,    -0.3152,   t_)...
        + msin(0.08064,    22.8,      1.972,    t_)...
        + msin(0.08745,    10.374,    2.396,    t_);
    th2 = msin(0.1140,     10.874,    3.059,    t_)...
        + msin(0.07469,    17.942,   -0.4667,   t_)...
        + msin(0.02515,    36.58,     7.215,    t_);
    th1 = msin(0.3106,      6.534,   -0.7386,   t_)...
        + msin(0.3539,      15.482,   0.7499,   t_)...
        + msin(0.2284,      18.428,   3.311,    t_);
else
    th7 = msin(0.2157,      1.932,    0.05225,  1/2)...
        + msin(0.009819,   27.22,    12.46,     1/2);
    th5 = msin(0.4838,      6.06,    -0.3152,   1/2)...
        + msin(0.08064,    22.8,      1.972,    1/2)...
        + msin(0.08745,    10.374,    2.396,    1/2);
    th2 = msin(0.1140,     10.874,    3.059,    1/2)...
        + msin(0.07469,    17.942,   -0.4667,   1/2)...
        + msin(0.02515,    36.58,     7.215,    1/2);
    th1 = msin(0.3106,      6.534,   -0.7386,   1/2)...
        + msin(0.3539,      15.482,   0.7499,   1/2)...
        + msin(0.2284,      18.428,   3.311,    1/2);
end
th=[th1, th2, th5, th7];
if t_ < 3/4
    th = phi.*th;
else
    th = (4-4*t-msin(1/(2*pi),-8*pi,8*pi, t_))*th;
end
th1 = th(1);
th2 = th(2);
th5 = th(3);
th7 = th(4);
end
