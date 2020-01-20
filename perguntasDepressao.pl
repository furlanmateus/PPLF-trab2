perguntaDepressao(Opt) :-
	Opt =:= 1 -> write('Você sente pouco interesse ou prazer em fazer qualquer tipo de atividade?');
	Opt =:= 2 -> write('Se sente pra baixo, deprimido ou sem esperança?');
	Opt =:= 3 -> write('Você sente dificuldade em dormir e/ou acordar com facilidade, ou dormir muito?');
	Opt =:= 4 -> write('Se sente cansado ou com pouca energia?');
	Opt =:= 5 -> write('Você sente pouca fome ou anda comendo demais?');
	Opt =:= 6 -> write('Se sente mal sobre você mesmo ou que você falhou ou desapontou a si mesmo ou alguêm da sua família?');
	Opt =:= 7 -> write('Sente problemas em se concentrar em coisas como ler ou assistir televisão?');
	Opt =:= 8 -> write('Você anda ou fala tão devagar que outra pessoa pode ter percebido?');
	Opt =:= 9 -> write('Você pensa que seria melhor se você se mata-se ou se machuca-se?').