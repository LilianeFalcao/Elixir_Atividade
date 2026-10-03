# Laboratório de Linguagens de Programação - prof.Douglas Machado Tavares
# Atividade 1    
# data: 28/09/2026

defmodule Comum do
    # retorna n fatorial
    def fatorial(0) do
        1
    end

    def fatorial(n) when n > 0 do
        n * fatorial(n - 1)
    end
end

defmodule Cauda do
    # Retorna n fatorial
    def fatorial(n) when n >= 0 do
        fatorial(n, 1)
    end

    defp fatorial(0, acm) do
        acm
    end

    defp fatorial(n, acm) do
        fatorial(n - 1, acm * n)
    end
end