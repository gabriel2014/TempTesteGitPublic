


% Here we must obtain a matrix [return risk] with information,, for all data available for back testing 


startDate=20130607; 
crtDate=startDate;
rr=[]; 
while(crtDate<=EndDate), 

	crtDate=crtDate+1; 
	rr=[rr;StrategyCorelatedPairs_ReceiveTick()]



end; 



