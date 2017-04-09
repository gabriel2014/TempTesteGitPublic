


function crtData=LoadHistoryFile(sFileName)

	sWorkingDir='D:\DatePerso2017\Bursa_Investitii_Stock_Market\ProiectDateBursiereIstorice';

	fTrigger1 = fopen([sWorkingDir '\' sFileName],'rt','ieee-le'); 

	crtData=[];
	crtLine=fgetl(fTrigger1); % use fgetline for FreeMat 
	while (ischar(crtLine)), 
		crtData=[crtData;GetALine(crtLine)]; 
		crtLine=fgetl(fTrigger1); % use fgetline for FreeMat 
	end; 

	fclose(fTrigger1); 
end

