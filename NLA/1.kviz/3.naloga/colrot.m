function A=colrot(A,c,s)

% COLROT(A,c,s) za dano matriko A dimenzije q*2 in skalarja c,s pomnozi
% matriko A z matriko [c,-s; s,c] z desne.

% Bor Plestenjak
% 23.5.1994
% 11.4.2000 : zamenjava s in -s

[q,p]=size(A);
for i=1:q
  r1=A(i,1); 
  r2=A(i,2);
  A(i,1)=c*r1+s*r2; 
  A(i,2)=-s*r1+c*r2;
end
