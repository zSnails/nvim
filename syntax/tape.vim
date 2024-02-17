syn keyword tapeKeyword Set Output Require Sleep Type Enter Hide Show
syn keyword tapeConstants FontSize FontFamily Height Width LetterSpacing LineHeight LoopOffset Theme Padding Framerate PlaybackSpeed MarginFill Margin BorderRadius WindowBarSize WindowBar TypingSpeed Shell
syn keyword tapeCommands Escape Backspace Delete Insert Down Enter Space Tab Left Right Up Down PageUp PageDown Ctrl+

syn match tapeTime "\d\+\(\.\d\+\)\?\(s\|ms\)\?"
syn match tapeComment "\#.*"
syn match tapeString "\".*\""

hi link tapeKeyword Keyword
hi link tapeConstants Constant
hi link tapeTime Number
hi link tapeComment Comment 
hi link tapeCommands Function
hi link tapeString String
