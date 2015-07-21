fun unzip xs = foldl (fn ((x,y), (ax, ay)) => (ax@[x], ay@[y])) (nil, nil) xs
