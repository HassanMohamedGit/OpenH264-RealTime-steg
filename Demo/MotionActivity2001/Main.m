clearvars; clc
system('bash Extract_mvs.sh');
[~,cmdout] = system('ls log/');
St=strsplit(cmdout);
St(numel(St)) = [];
GOP=12;

for i=1:numel(St)
    t1=strcat('log/',cell2mat(St(i)));
    FileAct=strcat('activity/', cell2mat(St(i)),'.txt');
    Z=dlmread(t1);
    count=1;
    clear T;
    T=zeros(1, floor( max(Z(:,1))/GOP ) );
    for j=8:GOP:( max(Z(:,1)) -GOP)
        T(count) = std( Z(Z(:,1) < j, 2));
	count = count +1;
    end
    dlmwrite(FileAct, T); 
    R=[numel( T(T>= 0 & T < 3.9)) numel(T( T >= 3.9 & T < 10.7)) numel(T( T>= 10.7 & T < 17.1)) numel(T( T>= 17.1 & T < 32)) numel(T( T>=32)) ];
    t1
    [mean(T) R/numel(T) ]
end
    
