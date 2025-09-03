# Repositório Modelo para Exercícios de Haskell

Bem-vindo ao seu ambiente de programação Haskell! Este repositório foi configurado para que você possa começar a codificar imediatamente usando o GitHub Codespaces.

## Como começar?

1.  Clique no botão **"Code"** no canto superior direito do repositório.
2.  Selecione a opção **"Create codespace on main"** (na aba **"Codespaces"**).

O GitHub irá criar um ambiente de desenvolvimento pronto para uso, com o GHC (compilador Haskell) e as ferramentas necessárias já instaladas.

## Estrutura do Repositório

* `Exemplos/`: Contém arquivos de exemplo com funções e códigos básicas para você se familiarizar com a linguagem.
* `Exercicio-01/`, `Exercicio-02/`, `Exercicio-03/` ... : Pastas para cada exercício. Sua tarefa é completar os arquivos `.hs` dentro delas.

## Como testar o código

Dentro de cada pasta há um arquivo de teste. Execute-os para verificar se seu código passa nos testes. Se passar é porque estão ok. Se não passarem, necessitam de ajustes. 

Para executá-los, abra uma janela do terminal do Codespaces e rode os testes com 'cabal run <arquivo_de_testes>'.

Por exemplo, para o exercício 1, execute o seguinte comando:

```bash
cabal run Exercicio-01-Test
```

## Ajuda

Se tiver dúvidas, consulte a documentação oficial do [Haskell](https://www.haskell.org/documentation/).
