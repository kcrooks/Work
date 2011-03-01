: greet ." Hey big spender!" ;
greet Hey big spender! ok
: refrain ." Spend a little time with me." ;  ok
refrain Spend a little time with me. ok
: song greet refrain ;  ok
song Hey, big spender!Spend a little time with me. ok
: greet ." Hey, Fred." ;
  ^^^^^
Warning(-4100): GREET is redefined  ok
greet Hey, Fred. ok
song Hey, big spender!Spend a little time with me. ok
\ song was created before greet was redefined  ok
variable _greeter  ok
: greet1 ." Hey, big spender!" ;  ok
' greet1 _greeter !    ok
: song _greeter @ execute refrain ;
  ^^^^
Warning(-4100): SONG is redefined  ok
song Hey, big spender!Spend a little time with me. ok
: greet2 ." Stellaaaa!" ;   ok
' greet2 _greeter !  ok
song Stellaaaa!Spend a little time with me. ok
: greet3 ." This should work" ;    ok
' greet3 _greeter !    ok
song This should workSpend a little time with me. ok
cr
 ok
reset-stacks cr
 ok
0 1 2 3 4 5 6 7 8 9 10 99 cr
 ok........
: dump begin dup . 0= until ; cr
  ^^^^
Warning(-4100): DUMP is redefined
 ok........
cr dump
99 10 9 8 7 6 5 4 3 2 1 0  ok
cr reset-stacks
 ok
0 1 2 3 4 5 6 7 8 9 10 99 cr
 ok........
: interleave >r begin dup . r@ . 0= until r> ; cr
 ok........
interleave cr 10 99 9 99 8 99 7 99 6 99 5 99 4 99 3 99 2 99 1 99 0 99
 ok.
