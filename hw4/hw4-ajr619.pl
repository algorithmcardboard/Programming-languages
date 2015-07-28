%% Question 1
%% creating 6 users
user(@tony).
user(@anirudhan).
user(@narasimman).
user(@vivek).
user(@shan).
user(@shu).


%% queestion 2
%% creating relationships between the users
follows(@tony, @anirudhan).
follows(@shan, @anirudhan).
follows(@shu, @anirudhan).
follows(@anirudhan, @narasimman).
follows(@narasimman, @vivek).


%% queestion 3
%% creating tweets for users
tweet(@anirudhan, t1, [Anirudhan, First, tweet]).
tweet(@anirudhan, t2, [Anirudhan, Second, tweet]).
tweet(@anirudhan, t3, [Anirudhan, Third, tweet]).
tweet(@anirudhan, t4, [Anirudhan, Fourth, tweet]).
tweet(@tony, t5, [Tony, first, tweet]).
tweet(@tony, t6, [Tony, Second, tweet]).
tweet(@narasimman, t7, [Narasimman, first, tweet]).
tweet(@narasimman, t8, [Narasimman, Second, tweet]).


%% queestion 4
%% creating retweets
retweet(@shan, t8).
retweet(@shu, t3).
retweet(@vivek, t1).
retweet(@shan, t2).

%% queestion 5
%% The feedhelper function.  Returns tweets and retweeets for the users followers
feedhelper(U, F, M, I) :- follows(U, F), (tweet(F,I,M); retweet(F,I)).

%% functions given as a part of assignment text itself
feed(U,M) :- uniquefeed(U,O),remove_ident(O,M).
uniquefeed(U,R) :- setof([I,F|M],feedhelper(U,F,M,I),R).
remove_ident([],[]).
remove_ident([[_|Y]|T1],[H2|T2]) :- Y=H2,remove_ident(T1,T2).

%% search
%% question 6

does_match(K, []) :- fail.
does_match(K, [Head | Tail]) :- K == Head, !, does_match(K, Tail).
search(K, U, M) :- tweet(U, _, M), does_match(K, M).


%% isViral (S, I, R)
%% question 7
%% S = Un, R =  U1, I = Id.

%% isViral (S, I, R, M)
%% question 8
