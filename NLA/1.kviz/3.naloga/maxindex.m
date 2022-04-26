function [p,q]=maxindex(A)

% [p,q]=MAXINDEX(A) vrne indeksa po absolutni vrednosti najvecjega elementa
% v matriki A.

% Bor Plestenjak
% 23.5.1994

[m1,v]=max(abs(A));
[m2,q]=max(m1);
p=v(q);

