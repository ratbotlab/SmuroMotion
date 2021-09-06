function th6 = yawHead(phi, t)
% function th6 = yawHead(phi, t)
% head yaw motion
% involving joints : joint 6
% Takes   phi:  amplitude of the yaw motion
%         t:    time request
% Returns th6:  the position of joint 6 at time t
t_ = t;
% parameter normalize
if t_ < 0
    t_ = 0;
elseif t_ >1
    t_ = 1;
end
if t_ < 2/3
    th6 = phi*(1.5*t - 1/(2*pi)*sin(3*pi*t));
else
    th6 = phi*(3-3*t-1/(2*pi)*sin(6*pi*(1-t)));
end
end