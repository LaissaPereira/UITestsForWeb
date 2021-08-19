**Settings**
Documentation    Base file of automation test

Library    Browser

Resource    actions/Session.robot


**Keywords**

Start Session
    New Browser    firefox                                  False    slowMo=00:00:01
    New Page       https://rocklov-web-lah.herokuapp.com

Finish Session
    Take Screenshot

