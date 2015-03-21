%------------------------------------------------
% Autho: Kamran Amini  <kam.cpp@gmail.com>
%------------------------------------------------

-module(recursion).
-author('Kamran Amini  kam.cpp@gmail.com').

-export([fact/1]).

fact(0) -> 1;
fact(N) -> N * fact(N-1).
