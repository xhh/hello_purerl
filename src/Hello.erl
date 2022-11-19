-module(hello@foreign).
-export([ffi_message/0]).

ffi_message() -> 'Elixir.Hello':message().
