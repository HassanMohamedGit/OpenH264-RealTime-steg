function Z=FramesDiffTmp(X)
S=size(X);
Z=Inf*ones(S(3),S(1)*S(2));
for i=2:S(3)
    Y=X(:,:,i-1) - X(:,:,i);
    Z(i,:)=reshape(Y,[1,S(1)*S(2)]);
end
Z=reshape(Z,[1,numel(Z)]);
Z(Z==Inf)=[];