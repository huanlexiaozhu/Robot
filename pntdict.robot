*** Settings ***
Library  Collections
Library  Collections
*** Keywords ***
打印字典
    [Documentation]  传入字典参数，自动打印
    #RF这个自动化框架原理

    #我们来看一个简单的示例：
         #
         #    创建一个字典
         #    给字典赋值
         #    把字典打印出来
    [Arguments]  ${dict}
    set to dictionary  ${dict}      a=1     b=2     c=3
    log  ${dict}

*** Test Cases ***
TestCase001
    ${dict_test}     create dictionary
    打印字典  ${dict_test}