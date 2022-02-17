*** Settings ***
Library		SSHLibrary

*** Test Cases ***
NewTest01
    Log    HELLO GUYS !!!

NewTest02
    Open Connection    172.26.160.162
    Login    debian    mamba24
    Sleep    2
    List Directory    /home/debian
    sleep    2
    Close Connection

NewTest03
    Open Connection    172.26.160.162
    Login    debian    mamba24
    sleep    3
    ${output}=    SSHLibrary.ExecuteCommand    java --version
    sleep    3
    Close Connection
