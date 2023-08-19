function Z=FrameDiffSp(X)
T1=Inf*X;
T2=T1;
T1(2:end,1:end-1) = X(2:end,1:end-1)-X(1:end-1,2:end);
T2(2:end,2:end)   = X(2:end,2:end)  -X(1:end-1,1:end-1);
T3=diff(X,1,1);
T4=diff(X,1,2); 
Z=[reshape(T1,[1,numel(T1)]) reshape(T2,[1,numel(T2)]) reshape(T3,[1,numel(T3)]) reshape(T4,[1,numel(T4)])];
Z(Z==Inf)=[];