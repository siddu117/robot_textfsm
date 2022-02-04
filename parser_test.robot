*** Settings ****
Documentation     How to use a custom Python library.
Library           custom_modules/parser

*** Variables ***
&{show_clock_output}=    Get File test_data\\cisco_show_clock.txt
&{template}=    Get File textfsm_templates\\cisco_show_clock.template

*** Tasks ***

*** Test Cases ***

Getting Structured data from device output 
    ${structured_output} = get_data_parsed
        ${show_clock_output}
        ${template}

    Log to console ${structured_output}