function Z = PMF(X)
U=unique(X);
Z=zeros(1,numel(U));
for i=1:numel(U)
    Z(i)=sum(X==U(i))/numel(X);
end
