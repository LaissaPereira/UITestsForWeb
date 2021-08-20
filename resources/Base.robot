**Settings**
Documentation    Base file of automation test

Library    Browser
Library    libs/mongo.py

Resource    Helpers.robot
Resource    actions/SessionActions.robot
Resource    actions/EquipmentActions.robot


**Keywords**

Start Session
    New Browser    firefox                                  False    slowMo=00:00:01
    New Page       https://rocklov-web-lah.herokuapp.com

Finish Test
    Take Screenshot

Take Screenshot And Logout
    Take Screenshot
    Do Logout

