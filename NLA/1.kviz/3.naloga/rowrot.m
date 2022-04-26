function A=rowrot(A,c,s)

% ROWROT(A,c,s) za dano matriko A dimenzije 2*q in skalarja c,s pomnozi
% matriko A z matriko [c,-s; s,c]' z leve.

% Bor Plestenjak
% 23.5.1994
% 11.4.2000 zamenjava s in -s

[p,q]=size(A);
for j=1:q
  r1=A(1,j); 
  r2=A(2,j);
  A(1,j)=c*r1+s*r2; 
  A(2,j)=-s*r1+c*r2;
end
