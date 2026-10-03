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
end
