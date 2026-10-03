# Laboratório de Linguagens de Programação - prof.Douglas Machado Tavares
# Atividade 1    
# data: 28/09/2026

#multiplica n primeiros números naturais impares
defmodule Comum do
    def mult_impar(n) do
        
    end
end

defmodule Cauda do
    def mult_impar(n) when n >= 0 do
        mult_impar(n, 1)
    end

    defp mult_impar(0, acm) do
        acm
    end

    defp mult_impar(n, acm) do
        mult_impar(n - 1, acm * (2 * n - 1))
    end
end