defmodule Worker do
  # 1,000以下らのランダムな数字を生成
  def random do
    :rand.uniform(1000);
  end

  # nミリ秒スリープして結果を文字列として返す
  def sleep(n) do
    IO.puts "sleep(#{inspect n}) started."
    :timer.sleep(n) # nミリ秒スリープする
    IO.puts "sleep(#{inspect n}) ended."
    "result-sleep(#{inspect n})"
  end

  def exec_seq do
    IO.puts "===== 逐次実行開始 ===== "
    result = 1 .. 100
      |> Enum.map(fn(_) -> random() end)
      |> Enum.map(fn(t) -> Worker.sleep(t) end)

    IO.puts "===== 逐次実行結果 ===== "
    result
  end

end
