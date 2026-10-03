# Laboratório de Linguagens de Programação - prof.Douglas Machado Tavares
# Atividade 1    
# data: 28/09/2026

#Determina o menor valor
defmodule Comum do
    def menor_val(n, m) when n == 0 or m == 0 , do: 0

    def menor_val(n, m) when n < m do
        n
    end

    def menor_val(_n, m) do
        m
    end
end

defmodule Cauda do
    def menor_val(n, m) do
        menor_val(n, m, 0)
    end

    defp menor_val(0, _m, acm), do: acm
    defp menor_val(_n, 0, acm), do: acm

    defp menor_val(n, m, acm) do
        menor_val(n - 1, m - 1, acm + 1)
    end
end