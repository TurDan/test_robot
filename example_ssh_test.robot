*** Settings ***
Library           keyword.py
Resource          Login.input.robot
Test Setup        Establish Ssh    ${serwer}    ${USER}    ${PASSWORD}

*** Test Cases ***
Connect to Remote Server
    [Tags]    SSH
    ${server}   My Keyword     ip
    ${output}    SSHLibrary.Execute Command    ls -l
    Log    ${output}
    SSHLibrary.Close Connection