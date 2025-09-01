# Repositório Modelo para Exercícios de Haskell

Bem-vindo ao seu ambiente de programação Haskell! Este repositório foi configurado para que você possa começar a codificar imediatamente usando o GitHub Codespaces.

## Como começar?

1.  Clique no botão **"Code"** no canto superior direito do repositório.
2.  Selecione a opção **"Create codespace on main"** (na aba **"Codespaces"**).

O GitHub irá criar um ambiente de desenvolvimento pronto para uso, com o GHC (compilador Haskell) e as ferramentas necessárias já instaladas.

## Estrutura do Repositório

* `Exemplo/`: Contém um arquivo de exemplo (`Exemplo.hs`) com funções básicas para você se familiarizar.
* `Exercicio-01/`, `Exercicio-02/`, `Exercicio-03/`: Pastas para cada exercício. Sua tarefa é completar os arquivos `.hs` dentro delas.

## Como testar o código

Dentro de cada pasta há um arquivo de teste. Execute-os para verificar se seu código passa nos testes. Se passar é porque estão ok. Se não passarem, necessitam de ajustes. 

Para executá-los, abra uma janela do terminal do Codespaces e rode os testes com 'runghc'.

Por exemplo, para o exercício 1, execute o seguinte comando:

```bash
runghc Exercicio-01/TestExercicio01.hs
```

## Ajuda

Se tiver dúvidas, consulte a documentação oficial do [Haskell](https://www.haskell.org/documentation/).
