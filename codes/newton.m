%% - Solve the @problem With the
%  - @Newton line search
%---------------------------------------------------------
clear; close all; clc; 

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
[fun, g, h] = f(x);

while norm(g) > tolerance
    
    % get the function f(x) @fun and the Gradient @g
    fprintf('DEBUG: %i %e\n',iter,norm(g))

    d = -h\g;
    t = tbar;
    % Newton
    while f(x+t*d) > fun + alpha*g'*d*t
        t = gamma*t ;
    end
         
    x = x + t*d ;
    
    [fun, g, h] = f(x);
    iter=iter+1;
    
end

