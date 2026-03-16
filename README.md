# Simulador de Processamento Batch de Cartões

Este projeto simula o processamento de cartões em lote usando Cobol GNU.

## Estrutura
 - `cartoes.cbl`: Programa principal em Cobol GNU
 - `cartoes.txt`: Arquivo de entrada com dados dos cartões
 - `relatorio.txt`: Arquivo de saída com resultados do processamento

## Funcionamento
O programa lê o arquivo `cartoes.txt`, processa cada cartão (aprovando se o valor for maior que zero, rejeitando caso contrário) e gera um relatório em `relatorio.txt`.

## Formato do arquivo de entrada (`cartoes.txt`)
Cada linha representa um cartão:

```
<NUMERO> <NOME> <VALOR> <STATUS>
```
Exemplo:
```
12345 JOAO 1000 A
23456 MARIA 500 R
```


# Simulador de Processamento Batch de Cartões

Este projeto simula o processamento de cartões em lote usando Cobol GNU.

## Estrutura
- `cartoes.cbl`: Programa principal em Cobol GNU
- `cartoes.txt`: Arquivo de entrada com dados dos cartões
- `relatorio.txt`: Arquivo de saída com resultados do processamento

## Formato do arquivo de entrada (`cartoes.txt`)
Cada linha representa um cartão:

```
<NUMERO> <NOME> <VALOR> <STATUS>
```
Exemplo:
```
12345 JOAO 1000 A
23456 MARIA 500 R
```
