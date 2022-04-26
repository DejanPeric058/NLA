function [A,norme]=jacmovie(A)

% [A,norme]=JACMOVIE(A) izvaja korake osnovne variante Jacobijeve metode 
% za iskanje lastnih vrednosti simetricne matrike A in hkrati izpisuje 
% tekoce matrike na zaslon. Izvajanje poteka po korakih in se lahko 
% prekine, vrne pa se zadnja matrika in vektor norm izvendiagonalnih
% elementov po korakih. 

% Bor Plestenjak
% 23.5.1994
% 11.4.2000

k=1;
off=norm(A-diag(diag(A)),'fro');
norme=off;
odg=[];

while length(odg)==0
  A=jacclass(A);
  clc;
  disp(['Jacobijeva metoda, korak :' int2str(k)]);
  A
  off=norm(A-diag(diag(A)),'fro');
  norme=[norme off];
  disp(blanks(2)');
  disp(['Norma izvendiagonalnih elementov :' num2str(off)]);
  disp(blanks(4)');
  odg=input('Za nadaljevanje pritisni enter, drugace pa neko cifro in enter :');
  k=k+1;
end
