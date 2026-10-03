# Laboratório de Linguagens de Programação - prof.Douglas Machado Tavares
# Atividade 1    
# data: 28/09/2026

defmodule Comum do
  #Operações numéricas:
  # Somar dos n primeiros naturais não nulos
  def somar_naturais(0) do
    0
  end

  def somar_naturais(n) when n > 0 do
    n + somar_naturais(n - 1)
  end

  # retorna n fatorial
  def fatorial(0) do
    1
  end

  def fatorial(n) when n > 0 do
    n * fatorial(n - 1)
  end

  #Determina o n-ésimo termo da sequência de fibonacci
  def fibonacci(n) when n > 2 do
    fibonacci(n - 1) + fibonacci(n - 2)
  end
  
  def fibonacci(1), do: 0
  def fibonacci(2), do: 1

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
  #Operações numéricas:
  # Somar dos n primeiros naturais não nulos
  def somar_naturais(n) when n >= 0 do
    somar_naturais(n, 0)
  end

  defp somar_naturais(0, acm) do
    acm
  end

  defp somar_naturais(n, acm) do
    somar_naturais(n - 1, acm + n)
  end

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

  #Determina o n-ésimo termo da sequência de fibonacci
  def fibonacci(n) when n >= 1 do
    fibonacci(n, 0, 1)
  end

  defp fibonacci(1, atual, _prox) do
    atual
  end

  defp fibonacci(n, atual, prox) do
    fibonacci(n - 1, prox, atual + prox)
  end

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
