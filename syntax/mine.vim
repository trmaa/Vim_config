:set syntax=mine
:set filetype=cpp
:let c_minlines = 100
:au Syntax c call MyCadd()
:function MyCadd()
:  syn keyword cMyItem contained Ni
:  syn cluster cCommentGroup add=cMyItem
:  hi link cMyItem Title
:endfun
