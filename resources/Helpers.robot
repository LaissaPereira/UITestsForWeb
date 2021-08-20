**Settings**
Documentation    Helpers Keywords

Library    OperatingSystem


**Keywords**

Get EquipmentJson
    [Arguments]    ${equipment}    

    ${fixture}    Get File    ${EXECDIR}/resources/fixtures/equipments.json
    ${json}       Evaluate    json.loads($fixture)                             json


    ${select_equipment}    Set Variable    ${json}[${equipment}]

    [Return]    ${select_equipment}
