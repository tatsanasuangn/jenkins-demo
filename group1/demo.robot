####### This Example Dev by 'Banyawit Janyod' ######
***Settings***
Library    Selenium2Library
#Library    AutoItLibrary
Suite teardown       Close Browser
#######################################################
***Variables***
${USERNAME}            admin1
${PASSWORD}            dog
${INVALID_USERNAME}    admin
${INVALID_PASSWORD}    admin12
${URL}                 https://www.google.co.th/
${BROWSER}             Chrome
${Apple}				Apple
#${notepad++} 			 C:\\Program Files\\Notepad++\\notepad++.exe
#######################################################
***Keywords***
Go to login
    Open Browser    ${URL}    ${BROWSER}
	Delete All Cookies	
	Maximize Browser Window 
	Input Text 		//*[@id="lst-ib"]   	${PASSWORD} 
	Press Key   //*[@id="lst-ib"]      \\13
	Element Should Be Visible    //*[@id="lst-ib"]    
	Get Title
	Sleep  5
	Go Back
	Sleep  3
	
Seaching Apple 
	Input Text   //*[@id="lst-ib"]      ${Apple}
	Press Key    //*[@id="lst-ib"] 		\\13 
	Sleep  3

#######################################################	
***Test Cases***
Seaching Pet
	Go to login
	Seaching Apple 
  #  :FOR    ${i}    IN RANGE    10
   # \    Log    ${i}
   # \    Exit For Loop If    ${i} == 3
  # 	   \    Go to login
#		\    Seaching Apple
   

   