*** Settings ***
Documentation  Simple test
Library  functions.py
*** Variables ***
${x}=  6
${y}=  15
${z}=  12
${a}=  3
${b}=  5

*** Test Cases ***
test1
  should be equal   ${x}  ${y}

test2
  should not be equal  ${x}  ${y}

test3
  ${num}=  num
  ${numstring}  Convert To String  ${num}
  should be equal  ${numstring}  ${z}

test4
  ${a}=  Convert To Integer  ${a}
  ${b}=  Convert To Integer  ${b}
  ${mul}=  multiplication  ${a}  ${b}
  ${mul}=  Convert To String  ${mul}
  should be equal  ${y}  ${mul}

# update
test5(TheNewest)
  should be equal  ${y}  ${z}
*** Keywords ***
