clear Problem;
clear Options;
clear InitPop;

global history;

history = [];

% Problem definition
Problem.ObjFunction='griewank';

Problem.LB = [-600;-600];
Problem.UB = [600;600];

% Initial guess
%InitPop(1).x=[1;1];                     % x0
%InitPop(1).x=[33.33337681;67.39743216]; % x1
%InitPop(1).x=[93.08669623;46.99250073]; % x2
%InitPop(1).x=[25.18204021;23.43866215]; % x3
%InitPop(1).x=[44.70580342;3.771470648]; % x4
%InitPop(1).x=[3.77386892;16.30384942];  % x5
%InitPop(1).x=[79.90834487;36.21897984]; % x6
%InitPop(1).x=[71.28314081;89.08095617]; % x7
%InitPop(1).x=[11.40812019;80.72055663]; % x8
%InitPop(1).x=[59.28416324;55.59832326]; % x9
InitPop(1).x=[0;0]; % xe

%Algorithm options
%Options.Size=40;
%Options.Size=1;
%Options.MaxIter=2000;
Options.MaxObj=2000;
%Options.SearchType=0;
%Options.LoadCache=0;

% Run the algorithm
[x,fx,RunData]=PSwarm(Problem, InitPop, Options);

bbe=RunData.ObjFunCounter
% deg=RunData.Degenerate

sol=x'
fx



% Write history file:
% dlmwrite('~/Desktop/history_x0.txt',history,'\t')