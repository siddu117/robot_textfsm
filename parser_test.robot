*** Settings ****
Library         custom_modules/textfsm_parser.py

*** Variables ***
${show_clock_output}=   test_data\\cisco_show_clock.txt
${template}=            textfsm_templates\\cisco_show_clock.template

*** Test Cases ***

Getting Structured data from device output 
    ${structured_output}=  get_data_parsed  ${template}  ${show_clock_output}

    Log to console  ${structured_output}