*** Test Cases ***
#ForLoop
    #FOR  ${i}  IN RANGE  1  10
    #  log to console   ${i}
    #END

Forloop2
    @{items}   create list  1  2  3  4  5
    FOR  ${i}  IN  @{items}
      log to console  ${i}
    END