function [Zx,Zy] = FramesConstruction(X)
S=floor(dlmread(strcat(X ,'.size'))/16);
F=dlmread(strcat(X ,'.log'));
sF=size(F);
S(3)=max(F(:,1)) -1;
Zx=Inf*ones(S(2), S(1), S(3));
Zy=Zx;

for i=1:sF(1)
    Zx((F(i,3)-8)/16 +1, (F(i,2)-8)/16 +1, F(i,1) -1)=F(i,4);
    Zy((F(i,3)-8)/16 +1, (F(i,2)-8)/16 +1, F(i,1) -1)=F(i,5);
end

    
