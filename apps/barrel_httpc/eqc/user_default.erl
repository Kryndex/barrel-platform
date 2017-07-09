-module(user_default).
-compile(export_all).


setup() ->
    sync:go(),

		ok.

init_db() ->
		barrel_httpc_eqc:init_db().

run(X) ->
		 barrel_httpc_eqc:run(X).
eqc() ->

%		[] = eqc:module({numtests,100}, barrel_rpc_eqc),
		[] = eqc:module({numtests,100}, barrel_rpc_events_eqc),
%		[] = eqc:module({numtests,100}, barrel_httpc_eqc),
		ok.
