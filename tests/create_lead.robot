*** Settings ***
Resource    ../resources/login.robot
Resource    ../resources/lead.robot
Resource    ../variables/config.robot
Suite Teardown    Close Browser

*** Test Cases ***
Create Salesforce Lead Using QForce
    Login To Salesforce
    Create Lead With Faker Data
    Validate Lead Details
