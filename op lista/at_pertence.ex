# Laboratório de Linguagens de Programação - prof.Douglas Machado Tavares
# Atividade 1    
# data: 28/09/2026

defmodule Comum do
    def pertence(_elem, []), do: false

    def pertence(elem, [elem | _cauda]) do
        true
    end

    def pertence(elem, [_cabeca | cauda]) do
        pertence(elem, cauda)
    end
end