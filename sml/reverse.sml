fun reverse xs = foldl (fn (x, acc) => x :: acc) [] xs
