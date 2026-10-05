# Laboratório de Linguagens de Programação - prof.Douglas Machado Tavares
# Atividade 1    
# data: 28/09/2026

defmodule Comum do
    def mult_elem([]), do: 1

    def mult_elem([cabeca | cauda]) do
        cabeca * mult_elem(cauda)
    end        
end

defmodule Cauda do

    def mult_elem(lista) do
        mult_elem(lista, 1)
    end

   defp mult_elem([], acm), do: acm

   defp mult_elem([cabeca | cauda], acm) do
        mult_elem(cauda, cabeca * acm)
   end
end