clearvars; clc
%system('bash Extract_mvs.sh');
[~,cmdout] =system("ls log| grep size | sed -e 's/.size//'");
mvmplo=strsplit(cmdout);
mvmplo(numel(mvmplo))=[];

parfor i=1:numel(mvmplo)
    t1=strcat('log/', cell2mat(mvmplo(i)));
    FileFeat=strcat('features/', cell2mat(mvmplo(i)), '.txt');
    [Zx,Zy]=FramesConstruction(t1);
    S=size(Zx);
    spx=[]; spy=[];
    for j=1:6:S(3) 
	for k=0:5
		if (j+k <= S(3))
			Zx1=FrameDiffSp(Zx(:,:,j+k));
			spx=[spx Zx1];
		end
		if (j+k <= S(3))
			Zy1=FrameDiffSp(Zy(:,:,j+k));
			spy=[spy Zy1];
		end
	end
        tmpx = FramesDiffTmp(Zx(:,:,j+1:j+6));
        tmpy = FramesDiffTmp(Zy(:,:,j+1:j+6));
dlmwrite(FileFeat,[Features3(spx) Features3(spy) Features3(tmpx) Features3(tmpy)], '-append');
    end
end


