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

%% 

