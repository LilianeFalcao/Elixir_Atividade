# Laboratório de Linguagens de Programação - prof.Douglas Machado Tavares
# Atividade 1    
# data: 28/09/2026

defmodule Comum do
    #Operações com listas:
    # retorna tamanho da lista
    def tamanho([]) do
        0
    end

    def tamanho([_cabeca | cauda]) do
        1 + tamanho(cauda)
    end
end

defmodule Cauda do
    #Operações com listas:
    # retorna tamanho da lista
    def tamanho(lista) do
        tamanho(lista, 0)
    end

    defp tamanho([], acm) do
        acm
    end

    defp tamanho([_cabeca | cauda], acm) do
        tamanho(cauda, 1 + acm)
    end
end