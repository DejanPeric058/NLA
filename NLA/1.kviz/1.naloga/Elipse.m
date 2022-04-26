function [B, b] = Elipse(A)
% Funkcija sprejme dvostolpčno matriko A
% z x in y koordinatami. Nazaj dobimo vektor
% dolžine 5 z b,c,d,e,f vrednostmi v implicitni
% obliki stožnice. Elipso fitamo po metodi 
% najmanjših kvadratov.

m = length(A);
B = zeros(m,5);
b = zeros(m,1);
g = @(x,y) [x*y y^2 x y 1];


for i = 1:m
    x = A(1,i);
    y = A(2,i);
    B(i,:) = g(x,y);
    b(i) = -x^2;
end


