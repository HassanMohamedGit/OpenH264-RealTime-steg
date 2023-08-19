function Z = Features3(X)
a=1; % a is an adaptive factor, determining the detecting precision
N=numel(X);

E1=0.5*(sum(X==0) - sum(X==2)  ) - a*sum(X==1 );
E2=0.5*(sum(X==0) - sum(X==-2) ) - a*sum(X==-1);


Y=abs(fft(PMF(X)));
Y=Y(1:numel(Y)/2);
COM=sum(Y.*(1:numel(Y)))/sum(Y);

Z=[E1/N E2/N COM];
