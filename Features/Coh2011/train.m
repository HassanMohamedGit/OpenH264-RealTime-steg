clearvars; clc;

Train1=dlmread('steg.txt');
Train1(:,13)=ones(size(Train1,1),1);
Train0=dlmread('orig.txt');
Train0(:,13)=zeros(size(Train0,1),1);

s0=size(Train0,1);
s1=size(Train1,1);
s=min(s0,s1);

% Train=[Train0(1:size(Train1,1),:); Train1];
Train=[Train0(1:s,:); Train1(1:s,:)];

Train=Train(randperm(size(Train, 1)), : );
Train=Train(randperm(size(Train, 1)), : );
Train=Train(randperm(size(Train, 1)), : );

% clearvars;

% yfit=npelo1.predictFcn(Test);
% hist(abs(yfit-Verify))

