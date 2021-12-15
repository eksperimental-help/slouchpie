Benchee.run(
  [
    "Unoptimized: Foo.Big": fn ->
        Foo.Big.reset_global_debt()
    end,

    "Optimized: Foo.Small": fn ->
        Foo.Small.reset_global_debt()
    end,
  ],
  time: 5,
  memory_time: 5
)
