::
::  A library for parsing and producing Roman numeral expressions.
::
=<
::
|%
::  +parse: determine the value of a Roman numeral expression
::
++  parse
  |=  expression=tape
  ^-  @ud
  ~&  "parse"
  !!
::  +yield: produce the Roman numeral for a given value
::
++  yield
  |=  n=@ud
  ^-  tape
  ?>  (gte n 1)
  ::
  =/  options  numerals-and-subtractives
  =/  final  *tape
  |-
  ?:  =(n 0)
    final
  ?~  options
    !!
  =/  roman=tape  -.i.options
  =/  value=@ud  +.i.options
  =/  expression=tape  (zing (reap (div n value) roman))
  %=  $
    n        (mod n value)
    options  t.options
    final    (weld final expression)
  ==
--
::
|%
++  numerals
  !!
::
++  subtractives
  !!
::
++  numerals-and-subtractives
  ^-  (list [tape @ud])
  :~  ["m" 1.000]
      ["cm" 900]
      ["d" 500]
      ["cd" 400]
      ["c" 100]
      ["xc" 90]
      ["l" 50]
      ["xl" 40]
      ["x" 10]
      ["ix" 9]
      ["v" 5]
      ["iv" 4]
      ["i" 1]
  ==
--
