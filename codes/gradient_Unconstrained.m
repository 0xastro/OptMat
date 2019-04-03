clear all, close all;

%% EXCER 4
%******************************************************************
% minimize: 3x12 +3x2 +3x32 +3x42 −4x1x3 −4x2x4 +x1 −x2 +2x3 −3x4
% @NO CONSTRAINTS
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
% Implement the gradient
% *******************************************************************
% Initial Starting point
x0=[0 0 0 0]';

x=x0;
% Stop_Point: Tolerance to stop iteration
stop_point=10^-6;

%@next_Step := Iteration
next_Step=0;

%gk =∇f(xk)=Qxk +c
g = Q*x + C ;

while norm(g) > stop_point
    f = 0.5*x'*Q*x + C'*x;
    g = Q*x + C ;
    %setting the direction
    d = -g;
    %if norm(g) < stop_point 
    %    break;
    %end
    %step size
    t = norm(g)^2/(g'*Q*g) ;
    x = x + t*d ;
    g = Q*x + C 
    
    %@Used for debugging purposes
    %pause
    
    next_Step = next_Step + 1 ;
    fprintf('DEBUG: %i %f\n',next_Step,norm(g));

end
