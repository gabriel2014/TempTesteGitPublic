rem Script-ul trebuie lansat din directorul proiectului git 
SET PATH=%PATH%;D:\Alex\git\bin
START /WAIT git add . 
START /WAIT git commit -m "actualizare date locale"
START /WAIT git push origin  
exit 
