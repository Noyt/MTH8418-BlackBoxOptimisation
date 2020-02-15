

function [f] = griewank(x)

global history;

% p: number of points:
s = size(x);
p = s(1,2);

% current version does not support p>1:
if ( p > 1 )
    fprintf('\nERROR (p>1)\n\n')
    return
end

% check the bounds:
if ( sum(sum(x<-600|x>600) > 0 ) )
    f = ones(1,p) * inf;
    return
end

% objective:
f = ones(1,p) + (x(1,:).^2 + x(2,:).^2) ./ 4000.0 - cos(x(1,:)) .* cos(x(2,:)/sqrt(2.0));

% update history:
bbe = size(history,1)+1;
history = [ history ; bbe x' f ];

return