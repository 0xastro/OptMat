clear all; close all;

load data/fitting.txt

a=fitting(:,1);
b=fitting(:,2);
m=length(a);
onesC=ones(m,1);
n = 4 ;

A = [ ones(length(a),1) a a.^2 a.^3 ];
Q = A'*A ;
C = -A'*b ;

stop_point=10^-3;
next_Step=0;
x0 = zeros(length(C),1);
x=x0;

g = Q*x + C ;
%% Implement the gradient
while norm(g) > stop_point
    %f = 0.5*x'*Q*x + C'*x;
    %setting the direction
    d = -g;
    %calculating the stepSize @t.
    t = norm(g)^2/(g'*Q*g) ;
    x = x + t*d ;
    g = Q*x + C;
    
    %pause
    next_Step = next_Step + 1 ;
    fprintf('%e %f\n',next_Step,norm(g));
end

