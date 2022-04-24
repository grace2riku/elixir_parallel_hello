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

end
