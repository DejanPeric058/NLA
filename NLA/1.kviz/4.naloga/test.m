
n = 200;
h = 20;
gamma = 5;

d = zeros(2*h + 1, 1);

g = @(k,y,b) 1./b * exp(-k^2./(2*y^2));

for i= 1:2*h+1
    d(i) = g(i-h-1,gamma,1);
end

b = sum(d);

for i= 1:2*h+1
    d(i) = g(i-h-1,gamma,b);
end

%plot(d)

A = zeros(n);
v = d(h+1:2*h+1);
r = flip(d(1:h+1));

for i= 1:n
    A(i:i+h,i:i+h) = toeplitz(v,r);
end
A = A(1:n,1:n)
sumdi = sum(diag(A));
sumanti = sum(diag(flip(A)));
suma = sumdi + sumanti

x = zeros(n,1);
for i= 50:100
    x(i) = 1;
end

plot(x)
hold on
y = A*x;
plot(y)
res = norm(x-y);

hold off

x1 = zeros(n,1);
x1(101:150)=4;
for i= 50:100
    x1(i)=(i-50)/50;
end

rng(1000); 
w=0.1*randn(n, 1);
y1 = A*x1 + w;

plot(x1)
hold on
plot(y1)

[U,S,V] = svd(A);
S(11:n,11:n) = 0;
for i=1:10
    S(i,i) = 1./S(i,i);
end
A1 = U*S*V.';
norma1 = norm(x1-A1*y1)

