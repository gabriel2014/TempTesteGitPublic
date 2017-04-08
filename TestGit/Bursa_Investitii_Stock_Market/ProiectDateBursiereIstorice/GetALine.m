

function y = GetALine(a)
	crtYear=sscanf(a(1,1:4),'%u');
	crtMonth=sscanf(a(1,6:7),'%u');
	crtDay=sscanf(a(1,9:10),'%u'); 
	day=datenum(crtYear,crtMonth ,crtDay ,0 ,0 ,0); 
	% for FreeMat use this line - day=clocktotime([crtYear crtMonth crtDay 0 0 0]);
	s=size(a); 
	crtOpen=sscanf(a(1,18:s(1,2)),'%f'); 
	y=[day crtOpen]; 
end


