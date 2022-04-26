function A=jacelim(A,p,q)

% JACELIM(A,p,q) za dano simetricno n*n matriko A in 1<=p<q<=n izvrsi
% en korak Jacobijeve metode za iskanje lastnih vrednosti simetricnih
% matrik, tako da z ortogonalno rotacijo unici elementa na mestu (p,q).

% Bor Plestenjak
% 23.5.1994

[c,s]=jacobics(A,p,q);
A([p q],:)=rowrot(A([p q],:),c,s);
A(:,[p,q])=colrot(A(:,[p,q]),c,s);


