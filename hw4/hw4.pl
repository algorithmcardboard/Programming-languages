user(@tony).
user(@anirudhan).
user(@narasimman).
user(@vivek).
user(@shan).
user(@shu).


follows(@tony, @anirudhan).
follows(@shan, @anirudhan).
follows(@shu, @anirudhan).
follows(@anirudhan, @narasimman).
follows(@narasimman, @vivek).


tweet(@anirudhan, t1, "Anirudhan First tweet").
tweet(@anirudhan, t2, "Anirudhan Second tweet").
tweet(@anirudhan, t3, "Anirudhan Third tweet").
tweet(@anirudhan, t4, "Anirudhan Fourth tweet").
tweet(@tony, t5, "Tony first tweet").
tweet(@tony, t6, "Tony Second tweet").
tweet(@narasimman, t7, "Narasimman first tweet").
tweet(@narasimman, t8, "Narasimman Second tweet").


retweet(@shan, t8).
retweet(@shu, t3).
retweet(@vivek, t1).
retweet(@shan, t2).

feed(U,M) :- uniquefeed(U,O),remove_ident(O,M).
uniquefeed(U,R) :- setof([I,F|M],feedhelper(U,F,M,I),R).
remove_ident([],[]).
remove_ident([[_|Y]|T1],[H2|T2]) :- Y=H2,remove_ident(T1,T2).
