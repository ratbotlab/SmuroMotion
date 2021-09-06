function th7 = pitchHead(phi, t)
% function th7 = pitchHead(phi, t)
% head pitch motion
% involving joints : joint 7
% Takes   phi:  amplitude of the yaw motion
%         t:    time request
% Returns th7:  the position of joint 6 at time t
t_ = t;
% parameter normalize
if t_ < 0
    t_ = 0;
elseif t_ >1
    t_ = 1;
end
if t_ < 2/3
    th7 = phi*(1.5*t - 1/(2*pi)*sin(3*pi*t));
else
    th7 = phi*(3-3*t-1/(2*pi)*sin(6*pi*(1-t)));
end
end
