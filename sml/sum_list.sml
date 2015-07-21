fun sum ([], n)     = (n = 0)
  | sum (x::xs, n)  = sum (xs, n-x)
