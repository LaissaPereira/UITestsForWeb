**Settings**
Documentation    Login Actions

**Keywords**

Login With
    [Arguments]    ${email}                           ${password}
    Fill Text      id=user_email                      ${email}
    Fill Text      css=input[placeholder*="senha"]    ${password}
    Click          text=Entrar


Do Logout
    Click    css=.do-Logout

User Should Be Logged In
    Wait For Elements State    css=.dashboard    visible    5    Login error

Alert Text Should Be
    [Arguments]                ${expect_message}
    Wait For Elements State    css=.alert           visible    5
    Get Text                   css=.alert           ==         ${expect_message}


