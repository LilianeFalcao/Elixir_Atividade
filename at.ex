defmodule Cauda do
    def fibonacci(n) when n >= 1 do
        fibonacci(n, 0, 1)
    end

    defp fibonacci(1, atual, _prox) do
        atual
    end

    defp fibonacci(n, atual, prox) do
        fibonacci(n - 1, prox, atual + prox)
    end
end