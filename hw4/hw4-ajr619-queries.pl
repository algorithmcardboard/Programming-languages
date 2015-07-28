%% find all followers of @anirudhan
follows(F, @anirudhan).

%% find all tweets of @anirudhan
tweet(@anirudhan,I,M)

%% count number of retweets for t1
numretweets(I, Length) :- findall(I, retweet(_, I), B), length(B, Length).

%%feed of user @shan
feed(@shan, R).

%% query that searches for keyword first
search(first, U, M).

%%  show direct messages for Narasimman
show_inbox(@narasimman, M).

%%  check if the tweet is viral between @anirudhan and @vivek
isviral(@anirudhan, t2, @vivek).

%%   check if the tweet is viral between @anirudhan and @vivek by more than 3 levels of indirection
isviral(@anirudhan, t11, @vivek, 3).
