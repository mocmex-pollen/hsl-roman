::
::  A library for parsing and producing Roman numeral expressions.
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
  ~&  "yield"
  !!
--
