%----Tobias' idea
$modal ==
    [ $consequence == [...],
         ...
      $index_sets ==
        [ agent = [archer,bond,batman],
          other = [mi,ma,me,mu] ],
         ...
    ]

Sets are finite.
Elements are unique (these are sets)

Geoff wrote ...
Tobias' beer-inspired idea for declaring finite index values as part of
the logic specification seemed nice, bbut now I worry. How can I say things
like "all even indices know", or "all brave agents think it is possible"?
In my world of mixed objects and indices I could have ...

    ! [X: $int]: ($remainder_e(X,2) => {$know:#X}(what_they_know)
    ! [A: agent]: (brave(A) => <#A>(what_is_possible)
