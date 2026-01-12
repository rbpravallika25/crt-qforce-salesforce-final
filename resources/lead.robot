*** Settings ***
Library    QForce
Library    FakerLibrary
Resource   common.robot

*** Keywords ***
Create Lead With Faker Data
    ${first_name}=    First Name
    ${last_name}=     Last Name
    ${company}=       Company

    Go To Object Home    ${OBJECT_NAME}
    Click New

    Type Text    First Name    ${first_name}
    Type Text    Last Name     ${last_name}
    Type Text    Company       ${company}
    Picklist Select    Lead Source    ${LEAD_SOURCE}

    Click Save
    Handle Duplicate Lead Popup

Validate Lead Details
    Verify Field Value    Lead Status    Open

    ${owner}=    Get Field Value    Lead Owner
    Should Contain    ${owner}    ${ENV:SF_USERNAME}
