function [c,s]=jacobics(A,p,q)

% Funkcija jacobics(A,p,q) vrne [c,s] za unicenje elementa 
% A(p,q) pri Jacobijevi metodi

if (A(p,q)~=0)
	tau=( A(p,p) - A(q,q) ) / ( 2 * A(p,q) );
	t=signum(tau) / ( abs(tau) + sqrt(1+tau^2) );
	c=1/sqrt(1+t^2);
	s=c*t;
else
   c=1;
   s=0;
end
