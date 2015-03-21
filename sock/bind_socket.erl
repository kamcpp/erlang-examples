%------------------------------------------------
% Autho: Kamran Amini  <kam.cpp@gmail.com>
%------------------------------------------------

-module(bind_socket).
-author('Kamran Amini  kam.cpp@gmail.com').

-export([start/0]).

-define(PORT_NUMBER, 5000).

start() ->
  start(?PORT_NUMBER).

start(PortNumber) ->
  spawn(?MODULE, bind, [PortNumber]).

bind(PortNumber) ->
  case gen_tcp:listen(PortNumber, [binary, {packet, 0}, {active, false}]) of
    {ok, ServerSocket} ->
      wait_for_client(ServerSocket);
     _ ->
       error
  end.

wait_for_client(ServerSocket) ->
  case gen_tcp:accept(ServerSocket) of
    {ok, ClientSocket} ->
      gen_tcp:send(ClientSocket, io_lib:format("~p~n", [{date(), time()}])),
      gen_tcp:close(ClientSocket),
      wait_for_client(ServerSocket);
     _ ->
      wait_for_client(ServerSocket)
  end.
