**Settings**
Documentation    Equipments Tests


Resource    ${EXECDIR}/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

**Test Cases**
Add New Equipment Per User

    ${equipment}             Get EquipmentJson     violin    
    Remove Equipament        ${equipment}[name]
    Login With               pink@test.com         pwd123    
    Go To Equipment Form
    Submit Equipment Form    ${equipment}
    #Should Be Equipo Is Available