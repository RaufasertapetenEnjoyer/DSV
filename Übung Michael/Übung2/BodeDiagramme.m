R=3; 
L=1e-4; 
C=1e-6;
W=logspace(2,8);
%Aufgabe 4
% H_R
%bode([0 R*C 0],[-L*C R*C 1],W);

% H_L
%bode([L*C 0 0],[L*C R*C 1],W);

% H_I
bode([0 C 0],[-L*C R*C 1],W);

%aufgabe 5

% H_R
%bode([0 L 0],[-R*C*L L R],W);

% H_L
%bode([0 0 R],[-R*L*C L R],W);

% H_C
%bode([R*L*C 0 0],[R*L*C L R],W);

% H_U
%bode([0 R*L 0],[-R*L*C L R],W);