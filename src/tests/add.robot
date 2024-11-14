*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When submitted a number the number gets added to the counter
   Go To  ${HOME_URL}
   Click Button  Nollaa
   Page Should Contain  nappia painettu 0 kertaa
   Input Text  amount  23
   Click Button  aseta
   Page Should Contain  nappia painettu 23 kertaa
   Click Button  Nollaa
   Page Should Contain  nappia painettu 0 kertaa
