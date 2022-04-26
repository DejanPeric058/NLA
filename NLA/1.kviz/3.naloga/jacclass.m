function A=jacclass(A)

% JACCLASS(A) izvrsi en korak klasicne Jacobijeve metode za iskanje lastnih
% vrednosti simetricnih matrik, ki unici po absolutni vrednosti najvecji
% izven diagonalni element matrike A.

% Bor Plestenjak
% 23.5.1994

[p,q]=maxindex(A-diag(diag(A)));
A=jacelim(A,p,q);


