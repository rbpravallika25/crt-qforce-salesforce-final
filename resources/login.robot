*** Settings ***
Library    QForce

*** Keywords ***
Login To Salesforce
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Login    ${ENV:SF_USERNAME}    ${ENV:SF_PASSWORD}
    Launch App    ${APP_NAME}
