*** Settings ***
Library    Selenium2Library

*** Test Cases ***
Simple Test
    Open Browser     ${EMPTY}      FF
    Go to       https://www.wp.pl
    Sleep    10
    Click element     CSS=html body div#root div#application div div#header.header header._3iiJH div.qC45i div._1uXlV ul.rbY1o li a._1ZUKM

     Input Text     id=login          testerwsb_t1
     Input Text     id=password       adam1234
    Click element      id=btnSubmit
    #Wait Until Page Contains      Odebrane
    Sleep      10
    Page should contain  Odebrane
    Capture page Screenshot
    Close All Browsers
