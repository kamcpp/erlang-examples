%------------------------------------------------
% Author: Kamran Amini  <kam.cpp@gmail.com>
%------------------------------------------------

-module(recursion).
-author('Kamran Amini  <kam.cpp@gmail.com>').

-export([fact/1, print_list/1, reverse_list/1, search_key/2]).

% Factoriel Example
fact(0) -> 1;
fact(N) when N > 0 -> N * fact(N - 1).

% Print List Example
print_list([]) -> done;
print_list([Head|Tail]) -> erlang:display(Head), print_list(Tail).

% Reverse List Example
reverse_list(List) -> internal_reverse_list(List, []).

internal_reverse_list([], Result) -> Result;
internal_reverse_list([Head|Tail], Result) -> internal_reverse_list(Tail, [Head|Result]).

% Search Key in List

search_key(List, Key) -> internal_search_key(List, Key, 1).

internal_search_key([], _, _) -> notfound;
internal_search_key([Key|_], Key, Index) -> {found, Index};
internal_search_key([_|Tail], Key, Index) -> internal_search_key(Tail, Key, Index + 1).

