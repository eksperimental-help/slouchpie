defmodule Foo.Big do
  @money (for x <- 1..1_000_000, into: %{amount: 0, currency: :DOGE} do
    {Enum.random(1_000_001..2_000_000), x}
  end)

  def reset_global_debt do
    for human <- Earth.list_humans() do
      update_financial_record_for_human(human, %{
        "total_amount" => @money.amount,
        "base_currency" => Map.get(@money, :currency)
      })
    end
  end

  def update_financial_record_for_human(human, enumerable) do
    {human, enumerable}
  end
end