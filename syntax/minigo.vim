syn keyword minigoKeyword package func var const return if else switch continue break for type struct default case
syn keyword minigoBuiltin print println append cap len panic
syn match minigoInteger "\<\d*\>"
syn match minigoFloat "\<\d*\.\d*\>"
syn match minigoComment "^\/\/.*$"
syn region minigoStringDouble start=+"+ skip=+\\"+ end=+"+
" syn region minigoStringSingle start=+'+ skip=+\\'+ end=+'+
syn match minigoCharLiteral /'\(\\.\|[^']\)'/ contained
syn keyword minigoType int int8 int16 int32 int64 uint uint8 uint16 uint32 uint64 complex64 complex128 float32 float64 string bool error
syn match minigoPlusOperator "\v\+\=?"


" TODO: add syntax for division operator
syn match minigoIandOperator "\v\&\=?"
syn match minigoIOrOperator "\v\|\=?"
syn match minigoIXorOperator "\v\^\=?"
syn match minigoWalrusOperator "\v\:\=?"
syn match minigoSomeWeirdAssOperator "\v\&\^\=?"
syn match minigoIModuloOperator "\v\%\=?"
syn match minigoIDivOperator "\v\/\="
" syn match minigoILeftShiftOperator "\v\<\<\=?"
" syn match minigoIRightShiftOperator "\v>>\=?"

syn match minigoMinusOperator "\v-\=?"
syn match minigoNeqOperator "\v\!\=?"
syn match minigoAssignmentOperator "\v\="
syn match minigoLessThanEqOperator "\v\<\=?"
syn match minigoGreaterThanEqOperator "\v\>\=?"
syn match minigoTimesOperator "\v\*\=?"
syn match minigoFunctionName "\w\+\ze\s*("
syn match minigoType /:\s*\zs\w\+\ze/
syn keyword minigoConstant true false nil

hi link minigoComment Comment
hi link minigoType Type
hi link minigoInteger Number
hi link minigoFloat Number
hi link minigoKeyword Keyword
hi link minigoStringSingle String
hi link minigoStringDouble String
hi link minigoConstant Constant

hi link divOperator Operator
hi link minigoPlusOperator Operator 
hi link minigoMinusOperator Operator
hi link minigoAssignmentOperator Operator
hi link minigoLessThanEqOperator Operator
hi link minigoGreaterThanEqOperator Operator
hi link minigoTimesOperator Operator

hi link minigoIandOperator Operator
hi link minigoIOrOperator Operator
hi link minigoIXorOperator Operator
hi link minigoWalrusOperator Operator
hi link minigoSomeWeirdAssOperato Operator 
hi link minigoIModuloOperator Operator
hi link minigoIDivOperator Operator
hi link minigoNeqOperator Operator

hi link minigoBuiltin Special

hi link minigoFunctionName Function
hi link minigoType Type
hi link minigoCharLiteral Character
