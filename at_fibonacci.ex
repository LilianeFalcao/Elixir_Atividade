# Laboratório de Linguagens de Programação - prof.Douglas Machado Tavares
# Atividade 1    
# data: 28/09/2026

defmodule Comum do
    #Determina o n-ésimo termo da sequência de fibonacci
    def fibonacci(n) when n > 2 do
        fibonacci(n - 1) + fibonacci(n - 2)
    end
    
    def fibonacci(1), do: 0
    def fibonacci(2), do: 1
end

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