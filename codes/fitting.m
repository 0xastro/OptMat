
%% Loading Data
load fitting.txt

a=fitting(:,1);
b=fitting(:,2);
m=length(a);
onesC=ones(m,1);
n = 4 ;

% Constructing A
A = [ onesC a a.^2 a.^3 ];

%% First Norm (LP Problem)


%% 2nd norm problem
%  ATAx = ATb
x2 = (A'*A)\(A'*b);
p2 = A*x2;
% C=[Cx, Cy]
c = [zeros(n,1); ones(m,1)];
g =[b; -b];
d=[A -eye(m); -A -eye(m)];


LP_SOL=linprog(c,d,g);
x1 = LP_SOL(1:n);
p1 = A*x1;

%% To solve the problem cTransposez
%min cTz . z is the vector variable of (x;y) so we have 4+51=55 Variable
%Az<=b 

%%linprog(c,A,b) 

%% Again writing the problem (C,D,G) in the infinity NORM (LP)
c_inf = [zeros(4,1); 1];
g_inf =[b; -b];
d_inf=[A -ones(m,1); -A -ones(m,1)];

LP_SOL_inf=linprog(c,d,g);
xinf = LP_SOL_inf(1:n);
pinf = A*xinf;

plot(a,b,'bo',a,p2,'g-',a,p1,'b-',a,pinf,'r-')
legend('Data','2-norm','1-norm','inf-norm','Location','NorthEastOutside')

