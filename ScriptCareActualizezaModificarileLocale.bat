rem Script-ul trebuie lansat din directorul proiectului git 
SET PATH=%PATH%;C:\Program Files\Git\bin
START /WAIT git add . 
START /WAIT git commit -m "actualizare date locale"
START /WAIT git push origin  
exit 
