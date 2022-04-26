function [c,s]=symsch2(A,p,q)

% SYMSCH2(A,p,q) za dano simetricno n*n matriko A in 1<=p<q<=n izracuna
% kosinusno-sinusni par (c,s), tako da za matriko B=J(p,q,fi)'*A*J(p,q,fi)
% velja, da je B(p,q)=B(q,p)=0. Funkcija se uporablja kot korak pri
% Jacobijevi metodi za lastne vrednosti simetricnih matrik.

% Bor Plestenjak
% 23.5.1994

if A(p,q)~=0
     r=(A(q,q)-A(p,p))/(2*A(p,q));
     t=signum(r)/(abs(r)+sqrt(1+r*r));
     c=1/sqrt(1+t*t); s=t*c;
else
     c=1; s=0;
end
end
