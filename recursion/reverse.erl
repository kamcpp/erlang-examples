%-------------------------------------------------
% Author: Kamran Amini  <kam.cpp@gmail.com>
%-------------------------------------------------

-module(recursion).
-author('Kamran Amini  kamc.cpp@gmail.com').

-export([reverse/1]).

reverse(L) -> reverse(L, []).

% Notice that reserve/2 is a private method since it is not exported.
reverse([], R) -> R;
reverse([H|T], R) -> reverse(T, [H|R]).
