function th7 = sniff(phi,freq, t)
% function th7 = sniff(phi,freq, t)
% head pitch motion of sniff
% involving joints : joint 7
% Takes   phi:  amplitude of the sniff motion
%         freq: frequency
%         t:    time request
% Returns th7:  the position of joint 7 at time t
th7 = phi*abs(sin(pi*freq*t));
end
