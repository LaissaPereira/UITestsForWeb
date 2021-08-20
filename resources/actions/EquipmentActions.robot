**Settings**
Documentation    Equipament Actions

**Keywords**
Go To Equipment Form
    Click                      text=Criar anúncio
    Wait For Elements State    id=equipoForm         visible    5



Submit Equipment Form
    [Arguments]    ${equipment}

    ${thumb}       Set Variable              ${EXECDIR}/resources/fixtures/thumbnails/${equipment}[thumbnail]
    ${promise}=    Promise To Upload File    ${thumb}
    Click          id=thumbnail
    Wait For       ${promise}

    Fill text            id=name        ${equipment}[name]
    Select Options By    id=category    value                  ${equipment}[category]
    Fill text            id=price       ${equipment}[price]

    Click    text=Cadastrar




Should Be Equipo Is Available


