


sNZDHKD=LoadHistoryFile('NZDHKD_D1.csv');
sNZDSGD=LoadHistoryFile('NZDSGD_D1.csv');
s=size(sNZDSGD); 
sNZDSGD=sNZDSGD(1518:s(1,1),:);
sSGDHKD=LoadHistoryFile('SGDHKD_D1.csv');


colCounter=1;
sNZDSGD_Scalled=[];
s=size(sSGDHKD); 
while (colCounter<=s(1,1)) 
	colCoresp=find(sNZDSGD==sSGDHKD(colCounter,1));
	crtPairNZDSGD=[sSGDHKD(colCounter),sNZDSGD(colCounter,2)]; 
	sNZDSGD_Scalled=[sNZDSGD_Scalled;crtPairNZDSGD];

	colCounter=colCounter+1; 
end; 

clear colCounter; 
clear crtPairNZDSGD; 
clear sNZDSGD; 
clear colCoresp;

plot(sNZDHKD(:,1),sNZDHKD(:,2),'g',sNZDSGD_Scalled(:,1),6*sNZDSGD_Scalled(:,2),'r',sSGDHKD(:,1),sSGDHKD(:,2),'b');
