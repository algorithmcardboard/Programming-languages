fun sum ([], n)     = (n = 0)
  | sum (x::xs, n)  = sum (xs, n-x);
fun length xs = foldl (fn (x, acc) => 1 + acc) 0 xs;
fun reverse xs = foldl (fn (x, acc) => x :: acc) [] xs;
exception Mismatch
fun zip ([], []) = []
  | zip (x::xs, y::ys) = (x,y)::zip(xs,ys)
  | zip (nil, y::ys) = raise Mismatch
  | zip (x::xs, nil) = raise Mismatch;
fun unzip xs = foldl (fn ((x,y), (ax, ay)) => (ax@[x], ay@[y])) (nil, nil) xs;
