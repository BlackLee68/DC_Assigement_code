% can use these code to compute the function.
A=1;
N=0.1;
B=[0:.0001:1];
t1= .7*qfunc(A/sqrt(N/2));
t2= .3*qfunc(B/sqrt(N/2));
diff=abs(t1-t2);
[c,d]=min(diff);
a(d)
%c
