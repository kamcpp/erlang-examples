%-------------------------------------------------
% Author: Kamran Amini  <kam.cpp@gmail.com>
%-------------------------------------------------

-module(reverse).
-author('Kamran Amini  kamc.cpp@gmail.com').

-export([reverse/1]).

reverse(List) -> reverse(List, []).

% Notice that reserve/2 is a private method since it is not exported.
reverse([], Reversed) -> Reversed;
reverse([Head|Tail], Reversed) -> reverse(Tail, [Head|Reversed]).
