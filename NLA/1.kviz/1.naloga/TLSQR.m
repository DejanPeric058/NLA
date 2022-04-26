function x = TLSQR(A,b)

% Funkcija izračuna x po metodi
% totalnih najmanjših kvadratov
% s pomočjo SVD razcepa. Funkcija
% sprejme predoločen sistem A (m x n)
% in vrednost b (m x 1).

n = length(A(1,:));
D = [A b];
[U,S,V]=svd(D);
x = -1.*(V(n+1,n+1)).^(-1).*V(1:n,n+1);



