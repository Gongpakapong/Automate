*** Setting ***
Library      SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}      https://demo.guru99.com/test/newtours/
${browser}          chrome
*** Test Cases ***
TC1
        LaunchBrowser   ${url}      ${browser}
        Input Text      name:userName           Joiner
        Input Text      name:password            Joiner



