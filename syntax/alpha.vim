syn keyword alphaKeyword if then else while do let in begin end const var
syn match alphaInteger "\<\d*\>"
syn match alphaFloat "\<\d*\.\d*\>"
syn match alphaComment "\/\/.*$"
" syn match alphaString "\".*\""
syn region alphaStringDouble start=+"+ skip=+\\"+ end=+"+
syn region alphaStringSingle start=+'+ skip=+\\'+ end=+'+
syn keyword alphaType int float string bool
syn match alphaPlusOperator "\v\+\=?"
syn match alphaMinusOperator "\v-\=?"
syn match alphaAssignmentOperator "\v\="
syn match alphaLessThanEqOperator "\v\<\=?"
syn match alphaGreaterThanEqOperator "\v\>\=?"
syn match alphaTimesOperator "\v\*\=?"
syn match alphaFunctionName "\w\+\ze\s*("
syn match alphaType /:\s*\zs\w\+\ze/
syn keyword alphaConstant true false

hi link alphaType Type
hi link alphaInteger Number
hi link alphaFloat Number
hi link alphaComment Comment
hi link alphaKeyword Keyword
hi link alphaStringSingle String
hi link alphaStringDouble String
hi link alphaConstant Constant

hi link alphaPlusOperator Operator 
hi link alphaMinusOperator Operator
hi link alphaAssignmentOperator Operator
hi link alphaLessThanEqOperator Operator
hi link alphaGreaterThanEqOperator Operator
hi link alphaTimesOperator Operator

hi link alphaFunctionName Function
hi link alphaType Type
