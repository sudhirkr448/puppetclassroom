# Class: paramclas::display
#
#
class paramclas::display ($decisionvariable = 0){
    #$decisionvariable = 0
    if $decisionvariable == 0{
        notify {'0':}
    }
    else {
        notify {'value':}
    }
    
    }