function [th3, th4, th6] = yawTorso(phi, t)
% function [th3, th4, th6] = yawTorso(phi, t)
% torso yaw motion
% involving joints : joint 3， 4， 6
% Takes   phi:  amplitude of the yaw motion
%         t:    time request
% Returns thi:  the position of joint i at time t
t_ = t;
% parameter normalize
if t_ < 0
    t_ = 0;
elseif t_ > 1
    t_ = 1;
end
if t_ < 1/2
    th6 = msin(1.3775,      5.296,    -0.3463,    t_)...
        + msin(0.4563,     22.08,      1.205,     t_);
    th4 = msin(4.879,       0.8658,   -0.09663,   t_)...
        + msin(0.3948,     16.444,    -0.9674,    t_)...
        + msin(0.1484,     35.04,      1.354,     t_);
    th3 = msin(1.995,       1.1676,   -0.05178,   t_)...
        + msin(0.1270,     17.46,      0.4304,    t_)...
        + msin(0.05573,    33.5,       1.208,     t_);
else
    th6 = msin(1.3775,      5.296,    -0.3463,    1/2)...
        + msin(0.4563,     22.08,      1.205,     1/2);
    th4 = msin(4.879,       0.8658,   -0.09663,   1/2)...
        + msin(0.3948,     16.444,    -0.9674,    1/2)...
        + msin(0.1484,     35.04,      1.354,     1/2);
    th3 = msin(1.995,       1.1676,   -0.05178,   1/2)...
        + msin(0.1270,     17.46,      0.4304,    1/2)...
        + msin(0.05573,    33.5,       1.208,     1/2);
end
th=[th3, th4, th6];
if t_ < 3/4
    th = phi.*th;
else
    th = (4-4*t-msin(1/(2*pi),-8*pi,8*pi, t_))*th;
end
th3 = th(1);
th4 = th(2);
th6 = th(3);
end
