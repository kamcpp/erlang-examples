%-------------------------------------------------
% Author: Kamran Amini  <kam.cpp@gmail.com>
%-------------------------------------------------

-module(print_list).
-author('Kamran Amini  kamc.cpp@gmail.com').

-export([print_list/1]).

print_list([]) -> done;
print_list([Head|Tail]) -> erlang:display(Head), print_list(Tail).
