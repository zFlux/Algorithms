% merge(L1, L2, R) takes pre-sorted list L1 and pre-sorted list L2 and merges them into sorted list R

% empty list cases
merge([],[],[]).
merge([A],[],[A]).
merge([],[A],[A]).

% singleton list cases
merge([A],[B], [A,B]) :- A =< B.
merge([A],[B], [B,A]) :- A > B.
merge([A|AT], [B], R) :- B =< A, append([B], [A|AT], R).
merge([A|AT], [B], R) :- B > A, merge([B], AT, L1), append([A], L1, R).
merge([A], [B|BT], R) :- A =< B, append([A], [B|BT], R).
merge([A], [B|BT], R) :- A > B, merge([A], BT, L1), append([B], L1, R).

% general cases
merge([A|AT],[B|BT], R) :- A >= B, merge([A|AT], BT, L1), append([B], L1, R).
merge([A|AT],[B|BT], R) :- A < B, merge([B|BT], AT, L1), append([A], L1, R).

% mergesort(L, R) takes a list of numeric values L and gives the sorted result R

% empty list case
mergesort([], []).

% singleton list case
mergesort([A],[A]).

% two element list sorting case
mergesort([H,T],[H,T]) :- H =< T.
mergesort([H,T],[T,H]) :- H > T.

% general cases: equal list lengths, even/odd and odd/even list length cases
mergesort(L, R) :- append(H,T,L), length(H,N), length(T,N), mergesort(H, L1), mergesort(T, L2), merge(L1, L2, R).
mergesort(L, R) :- append(H,T,L), length(H,N), M is N + 1, length(T,M), mergesort(H, L1), mergesort(T, L2), merge(L1, L2, R).
mergesort(L, R) :- append(H,T,L), length(T,N), M is N + 1, length(H,M), mergesort(H, L1), mergesort(T, L2), merge(L1, L2, R).
