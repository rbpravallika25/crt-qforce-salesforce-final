*** Settings ***
Library    QForce

*** Keywords ***
Handle Duplicate Lead Popup
    ${is_duplicate}=    Run Keyword And Return Status
    ...    Verify Text    Potential Duplicate

    IF    ${is_duplicate}
        Click Button    Save
    END
