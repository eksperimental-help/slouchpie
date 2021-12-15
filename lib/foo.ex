defmodule Earth do
  def list_humans(), do: 1..100
end

defmodule Foo do
  @money %{amount: 0, currency: :DOGE}

  def reset_global_debt do
    for human <- Earth.list_humans() do
      update_financial_record_for_human(human, %{
        "total_amount" => unquote(@money.amount),
        "base_currency" => unquote(Map.get(@money, :currency))
      })
    end
  end

  def update_financial_record_for_human(human, enumerable) do
    {human, enumerable}
  end
end
