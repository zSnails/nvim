syn match fuapPlusOperator "\v\+\=?"
syn match fuapMinusOperator "\v-\=?"
syn match fuapAssignmentOperator "\v\="
syn match fuapLessThanEqOperator "\v\<\=?"
syn match fuapGreaterThanEqOperator "\v\>\=?"
syn match fuapTimesOperator "\v\*\=?"
syn match fuapFunctionName "\w\+\ze\s*("
syn keyword fuapType entero flotante texto booleano
syn keyword fuapConstant verdadero falso 
syn keyword fuapKeywords mientras si sino retornar funcion
syn match fuapNumber "\<\d*\>"
syn match fuapFloat "\<\d*\.\d*\>"
syn match fuapComment "\/\/.*$"
syn match fuapString "\".*\""

syn region fuapMultilineComment start="\/\*" skip="\\\\\|\\" end="\*\/"

hi link fuapType Type
hi link fuapFloat Number
hi link fuapNumber Number
hi link fuapComment Comment
hi link fuapMultilineComment Comment
hi link fuapKeywords Keyword
hi link fuapString String
hi link fuapConstant Constant

hi link fuapPlusOperator Operator 
hi link fuapMinusOperator Operator
hi link fuapAssignmentOperator Operator
hi link fuapLessThanEqOperator Operator
hi link fuapGreaterThanEqOperator Operator
hi link fuapTimesOperator Operator

hi link fuapFunctionName Function
