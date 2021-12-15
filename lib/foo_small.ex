defmodule Foo.Small do
  @money (for x <- 1..1_000_000, into: %{amount: 0, currency: :DOGE} do
    {Enum.random(1_000_001..2_000_000), x}
  end)

  @amount @money.amount
  @currency @money.currency

  def reset_global_debt do
    amount = @amount
    currency = @currency

    for human <- Earth.list_humans() do
      update_financial_record_for_human(human, %{
        "total_amount" => amount,
        "base_currency" => currency
      })
    end
  end

  def update_financial_record_for_human(human, enumerable) do
    {human, enumerable}
  end
end