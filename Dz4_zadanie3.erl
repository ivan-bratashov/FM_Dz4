-module(Dz4_zadanie3).
-export([write_tests/0]).

write_tests() ->
    TestCode = "-module(lesson03_task1_tests).
-export([all/0]).

all() ->
    [test_first_word()].

test_first_word() ->
    BinText = <<\"Some text\">>,
    Result = lesson03_task1:first_word(BinText),
    ?assertEqual(Result, <<\"Some\">>).
",
    file:write_file("test/lesson03_task1_tests.erl", TestCode).
