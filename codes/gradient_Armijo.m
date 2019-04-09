%% - Solve the @problem With the
%  - @Armijo inexact line search
%---------------------------------------------------------

tolerance = 1e-3;
% line search setting
alpha = 0.1;
gamma = 0.9;
iter = 0 ;
tbar=1;
x0 = [0 0]';

% @INITIALIZE X
x = x0 ;

% RETURN the function @fun and it's gradient @g
[fun, g] = f(x);
fprintf('DEBUG: %i %f\n',iter,norm(g))
g=[3 1];
while norm(g) > tolerance    
    % search direction
    [fun, g] = f(x);
    fprintf('DEBUG: %i %f\n',iter,norm(g))

    d = -g;
    t = tbar;
    [g, fun] = f(x);
    % Armijo
    while f(x+t*d) > fun + alpha*g'*d*t
        t = gamma*t;
    end
    fprintf('DEBUG: %i %f\n',iter,norm(g))
    x=x+t*d;
    iter=iter+1;

end
