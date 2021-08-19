**Settings**
Documentation    Login Tests

Resource    ${EXECDIR}/resources/Base.robot

Test Setup       Start Session
Test Teardown    Finish Session

**Test Cases**

User Login
    Login With                  yukipereira@test.com    yuki
    User Should Be Logged In


User not signup

    Login With              yukipereira@gmail.com            yuki
    Alert Text Should Be    Usuário e/ou senha inválidos.



Incorrect Password

    Login With              yukipereira@test.com             abc123
    Alert Text Should Be    Usuário e/ou senha inválidos.

Incorrect email

    Login With              yukipereira&test.com              yuki
    Alert Text Should Be    Oops. Informe um email válido!


Empty email

    Login With              ${ EMPTY}                         yuki
    Alert Text Should Be    Oops. Informe um email válido!

Empty password

    Login With              yukipereira@test.com                ${ EMPTY}
    Alert Text Should Be    Oops. Informe sua senha secreta!



