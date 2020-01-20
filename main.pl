:- use_module(library(plunit)).

:- [nivelAnsiedade].
:- [nivelDepressao].
:- [nivelEstresse].
:- [perguntasAnsiedade].
:- [perguntasDepressao].
:- [perguntasEstresse].

%TESTES

:- begin_tests(testeAnsiedade).

test(t0, X == "| Você apresenta pouca ou nenhuma ansiedade.                     |") :- nivelAnsiedade(X, 7).
test(t0, X == "| Você apresenta pouca ou nenhuma ansiedade.                     |") :- nivelAnsiedade(X, 13).
test(t0, X == "| Você apresenta um nível baixo de ansiedade.                    |") :- nivelAnsiedade(X, 14).
test(t0, X == "| Você apresenta um nível baixo de ansiedade.                    |") :- nivelAnsiedade(X, 20).
test(t0, X == "| Você apresenta um nível moderado de ansiedade.                 |") :- nivelAnsiedade(X, 21).
test(t0, X == "| Você apresenta um nível moderado de ansiedade.                 |") :- nivelAnsiedade(X, 27).
test(t0, X == "| Você apresenta um nível alto de ansiedade.                     |") :- nivelAnsiedade(X, 28).
test(t0, X == "| Você apresenta um nível alto de ansiedade.                     |") :- nivelAnsiedade(X, 35).

:- end_tests(testeAnsiedade).

:- begin_tests(testeDepressao).

test(t0, X == "| Você apresenta pouca ou nenhuma depressão.                     |") :- nivelDepressao(X, 9).
test(t0, X == "| Você apresenta um nível de depressão baixíssimo.               |") :- nivelDepressao(X, 10).
test(t0, X == "| Você apresenta um nível de depressão baixíssimo.               |") :- nivelDepressao(X, 13).
test(t0, X == "| Você apresenta um nível de depressão baixo.                    |") :- nivelDepressao(X, 14).
test(t0, X == "| Você apresenta um nível de depressão baixo.                    |") :- nivelDepressao(X, 18).
test(t0, X == "| Você apresenta um nível de depressão moderado.                 |") :- nivelDepressao(X, 19).
test(t0, X == "| Você apresenta um nível de depressão moderado.                 |") :- nivelDepressao(X, 23).
test(t0, X == "| Você apresenta um nível de depressão moderado ou sevéro.       |") :- nivelDepressao(X, 24).
test(t0, X == "| Você apresenta um nível de depressão moderado ou sevéro.       |") :- nivelDepressao(X, 29).
test(t0, X == "| Você apresenta um nível de depressão sevéro.                   |") :- nivelDepressao(X, 30).
test(t0, X == "| Você apresenta um nível de depressão sevéro.                   |") :- nivelDepressao(X, 36).

:- end_tests(testeDepressao).

:- begin_tests(testeEstresse).

test(t0, X == "| Você apresenta pouca ou nenhuma indicação de estresse.         |") :- nivelEstresse(X, 8).
test(t0, X == "| Você apresenta pouca ou nenhuma indicação de estresse.         |") :- nivelEstresse(X, 17).
test(t0, X == "| Você apresenta um nível de estresse baixo.                     |") :- nivelEstresse(X, 18).
test(t0, X == "| Você apresenta um nível de estresse baixo.                     |") :- nivelEstresse(X, 26).
test(t0, X == "| Você apresenta um nível de estresse moderado.                  |") :- nivelEstresse(X, 27).
test(t0, X == "| Você apresenta um nível de estresse moderado.                  |") :- nivelEstresse(X, 35).
test(t0, X == "| Você apresenta um nível de estresse alto.                      |") :- nivelEstresse(X, 36).
test(t0, X == "| Você apresenta um nível de estresse alto.                      |") :- nivelEstresse(X, 40).

:- end_tests(testeEstresse).

%MAIN
clear :-
    format('~c~s~c~s', [0x1b, "[H", 0x1b, "[2J"]).

respostasAnsiedade :-
	write('---------------------------'), nl,
	write('| Respostas:              |'), nl,
	write('|-------------------------|'), nl,
	write('| 1) Nunca.               |'), nl,
	write('| 2) Raramente.           |'), nl,
	write('| 3) De vez em quando.    |'), nl,
	write('| 4) Frequentemente.      |'), nl,
	write('| 5) Muito frequentemente.|'), nl,
	write('---------------------------'), nl.

respostasDepressao :-
	write('----------------------------------'), nl,
	write('| Respostas:                     |'), nl,
	write('|--------------------------------|'), nl,
	write('| 1) Nunca.                      |'), nl,
	write('| 2) Alguns dias.                |'), nl,
	write('| 3) Mais da metade dos dias.    |'), nl,
	write('| 4) Quase todos os dias.        |'), nl,
	write('----------------------------------'), nl.

respostasEstresse :-
	write('---------------------------'), nl,
	write('| Respostas:              |'), nl,
	write('|-------------------------|'), nl,
	write('| 1) Nunca.               |'), nl,
	write('| 2) Raramente.           |'), nl,
	write('| 3) De vez em quando.    |'), nl,
	write('| 4) Frequentemente.      |'), nl,
	write('| 5) Muito frequentemente.|'), nl,
	write('---------------------------'), nl.

resultadoAvaliacao(NivelAnsiedade, NivelDepressao, NivelEstresse) :-
	nivelAnsiedade(X, NivelAnsiedade),
	nivelDepressao(Y, NivelDepressao),
	nivelEstresse(Z, NivelEstresse),

	clear,

	write('------------------------------------------------------------------'), nl,
	write('|                                                                |'), nl,
	write('|              Você finalizou a sua autoavaliação!!              |'), nl,
	write('|                                                                |'), nl,
	write('------------------------------------------------------------------'), nl,
	write('|                                                                |'), nl,
	write(X), nl,
	write('|                                                                |'), nl,
	write(Y), nl,
	write('|                                                                |'), nl,
	write(Z), nl,
	write('|                                                                |'), nl,
	write('------------------------------------------------------------------'), nl, nl,

	fimTeste.

menu :- 
	clear,
	write('---------------------------------------------------------------------------'), nl,
	write('|                              Saúde Mental                               |'), nl,
	write('---------------------------------------------------------------------------'), nl,
	write('| Saúde mental é o equilíbrio entre o que a pessoa sente e as exigências  |'), nl,
	write('| e/ou vivências do mundo externo. É a capacidade de administrar a própria|'), nl,
	write('| vida e suas emoções em meio a inúmeras mudanças sem perder o valor do   |'), nl,
	write('| real e do precioso. É buscar viver a vida na sua plenitude máxima,      |'), nl,
	write('|                     respeitando o legal e o outro.                      |'), nl,
	write('---------------------------------------------------------------------------'), nl, nl,

	write('---------------------------------------------------------------------------'), nl,
	write('|                  Teste autoavaliativo de Saúde Mental                   |'), nl,
	write('---------------------------------------------------------------------------'), nl,
	write('| O questionário a ser respondido é destinado àqueles que desejam fazer   |'), nl,
	write('| uma autoavaliação de sua saúde mental. As doenças abordadas por este    |'), nl,
	write('|              avaliador são: Ansiedade, Depressão e Estresse.            |'), nl,
	write('|       Siga as instruções a seguir para prosseguir com a avaliação.      |'), nl,
	write('---------------------------------------------------------------------------'), nl, nl,

	write('---------------------------------------------------------------------------'), nl,
	write('|          Digite uma das opções abaixo e insira um ponto final.          |'), nl,
	write('|                              Exemplo: "1."                              |'), nl,
	write('---------------------------------------------------------------------------'), nl, nl,

	write('---------------------------------------------------------------------------'), nl,
	write('| Teste autoavaliativo dos seus níveis de depressão, ansiedade e estresse |'), nl,
	write('--------------------------------------------------------------------------'), nl,
	write('| Escolha uma das opções:                                                 |'), nl,
	write('| 1. Iniciar o teste.                                                     |'), nl,
	write('| 2. Sair.                                                                |'), nl,
	write('---------------------------------------------------------------------------'), nl,
	read(Opt),
	escolhaMenu(Opt).

escolhaMenu(Opt) :-
	Opt =:= 1 -> iniciaTeste;
	Opt =:= 2 -> sairTeste.

sairTeste :- 
	clear,
	
	write('-----------------------------------------------------'), nl,
	write('|     Você saiu sem realizar sua autoavaliação!     |'), nl,
	write('|   Digite "menu." para mostrar o menu novamente.   |'), nl,
	write('-----------------------------------------------------'), nl, nl,
	true.

fimTeste :- 
	write('------------------------------------------------------------'), nl,
	write('|     Você finalizou sua autoavaliação!                    |'), nl,
	write('|   Digite "menu." caso queira voltar ao menu novamente.   |'), nl,
	write('------------------------------------------------------------'), nl, nl,
	true.

iniciaTeste :-
	clear,

	write('---------------------------------------------------------'), nl,
	write('|    Perguntas para avaliar o seu nível de ansiedade    |'), nl,
	write('---------------------------------------------------------'), nl, nl,

	write('---------------------------------------------------------'), nl,
	write('| Digite uma das opções abaixo e insira um ponto final. |'), nl,
	write('|                     Exemplo: "1."                     |'), nl,
	write('---------------------------------------------------------'), nl, nl,

	respostasAnsiedade, nl,

	perguntaAnsiedade(1), nl,
	read(A1),

	perguntaAnsiedade(2), nl,
	read(A2),

	perguntaAnsiedade(3), nl,
	read(A3),

	perguntaAnsiedade(4), nl,
	read(A4),

	perguntaAnsiedade(5), nl,
	read(A5),

	perguntaAnsiedade(6), nl,
	read(A6),

	perguntaAnsiedade(7), nl,
	read(A7),

	ResultadoAnsiedade is A1 + A2 + A3 + A4 + A5 + A6 + A7,
	clear,

	write('---------------------------------------------------------'), nl,
	write('|    Perguntas para avaliar o seu nível de Depressão    |'), nl,
	write('---------------------------------------------------------'), nl, nl,

	write('---------------------------------------------------------'), nl,
	write('| Digite uma das opções abaixo e insira um ponto final. |'), nl,
	write('|                     Exemplo: "1."                     |'), nl,
	write('---------------------------------------------------------'), nl, nl,

	respostasDepressao, nl,

	perguntaDepressao(1), nl,
	read(D1),

	perguntaDepressao(2), nl,
	read(D2),

	perguntaDepressao(3), nl,
	read(D3),

	perguntaDepressao(4), nl,
	read(D4),
	
	perguntaDepressao(5), nl,
	read(D5),

	perguntaDepressao(6), nl,
	read(D6),

	perguntaDepressao(7), nl,
	read(D7),

	perguntaDepressao(8), nl,
	read(D8),

	perguntaDepressao(9), nl,
	read(D9),

	ResultadoDepressao is D1 + D2 + D3 + D4 + D5 + D6 + D7 + D8 + D9,
	clear,

	write('---------------------------------------------------------'), nl,
	write('|    Perguntas para avaliar o seu nível de Estresse     |'), nl,
	write('---------------------------------------------------------'), nl, nl,

	write('---------------------------------------------------------'), nl,
	write('| Digite uma das opções abaixo e insira um ponto final. |'), nl,
	write('|                     Exemplo: "1."                     |'), nl,
	write('---------------------------------------------------------'), nl, nl,

	respostasEstresse, nl,

	perguntaEstresse(1), nl,
	read(E1),
	perguntaEstresse(2), nl,
	read(E2),
	perguntaEstresse(3), nl,
	read(E3),
	perguntaEstresse(4), nl,
	read(E4),
	perguntaEstresse(5), nl,
	read(E5),
	perguntaEstresse(6), nl,
	read(E6),
	perguntaEstresse(7), nl,
	read(E7),
	perguntaEstresse(8), nl,
	read(E8),

	ResultadoEstresse is E1 + E2 + E3 + E4 + E5 + E6 + E7 + E8,

	resultadoAvaliacao(ResultadoAnsiedade, ResultadoDepressao, ResultadoEstresse).