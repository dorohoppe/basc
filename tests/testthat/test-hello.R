
# Tests for function weather()
expect_true(weather()
            %in% c("Great sunny wheather today!",
                   "Partly cloudy today.",
                   "Thunderstorm today, sorry..."))


# Tests for function hello
expect_true(is.character(hello("Name")))
expect_true(is.na(hello(NA)))
expect_error(hello(1))


