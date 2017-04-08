
% Calculeaza centrul clusterului folosind inclusiv ultima valoare din parametrii de intrare 

function media=SCP_CalculeazaMediaMobilaCurenta(cPair1, cPair2)

	s=size(cPair1); 
	globalParams=SCP_GetParams;
	cnt=globalParams(1,1); 
	media=[];
	while ( cnt<=s(1,1) ) 
		media=[media;mean( cPair1(cnt-globalParams(1,1)+1:cnt) )/mean(  cPair2(cnt-globalParams(1,1)+1:cnt)  ) ]; 
		cnt=cnt+1; 
	end
	
	% fill with ones, must not be used 
	media=[6.2*ones(globalParams(1,1)-1,1);media];
end



