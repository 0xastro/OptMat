clear all, close all;
clc;
%% EXCER 8: Problem 3
%******************************************************************
% minimize: 3x12 +3x2 +3x32 +3x42 −4x1x3 −4x2x4 +x1 −x2 +2x3 −3x4
% @NO CONSTRAINTS
% Conjugate gradient
%******************************************************************

% gradient f(x): then we got the hessian Matrix
Q = [6 0 -4 0; 
     0 6 0 -4; 
     -4 0 6 0; 
     0 -4 0 6];
% Obviously the diagonal is positive, thus f(x) is definite positive @(Strongly Convex)

% Linear Part: 
C = [1; -1; 2; -3];

%% ******************************************************************
% Implement the Conjugate Gradient
% *******************************************************************
% Initial Starting point

%x0=[0 0 0 0]';
x0 = zeros(length(C),1);

x=x0;
% Stop_Point: Tolerance to stop iteration
stop_point=1e-6;
%@next_Step := Iteration
iter=0;

fprintf('Conjugate Gradient method\n\n');
%gk =∇f(xk)=Qxk +c
f = 0.5*x'*Q*x + C'*x;
g = Q*x + C ;
while norm(g) > stop_point
    f = 0.5*x'*Q*x + C'*x;
    g = Q*x + C ;
    %setting the direction
    if iter == 0
        d = -g; 
    else
        beta = (norm(g)^2)/(norm(g_prev)^2);
        d = -g + beta*d_prev;
    end
    
    
    t = (norm(g)^2)/(d'*Q*d);
    x = x + t*d ;
%    g = Q*x + C; 

    iter = iter + 1 ;  
    %@Used for debugging purposes
    %pause
    d_prev = d;
    g_prev = g;
    g = Q*x + C; 

    fprintf('DEBUG: %i %e\n',iter,norm(g));

end

