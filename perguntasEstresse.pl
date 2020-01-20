perguntaEstresse(Opt) :-
	Opt =:= 1 -> write('Você sente algum desses sintomas: dores de cabeça, dores no peito, tensão muscular, náusea ou mudanças na vida sexual?');
	Opt =:= 2 -> write('Você sente fadiga e/ou dificuldade em dormir ou acorda com facilidade?');
	Opt =:= 3 -> write('Você se preocupa demais com suas responsabilidades e se sente sobrecarregado por elas?');
	Opt =:= 4 -> write('Você tem dificuldades em se concentrar em suas tarefas ou se manter motivado?');
	Opt =:= 5 -> write('Você se sente irritado, triste ou nervoso');
	Opt =:= 6 -> write('Você sente pouca fome ou está comendo demais?');
	Opt =:= 7 -> write('Está tendo dificuldades em controlar a quantidade de cafeína, álcool ou tabaco que você consome?');
	Opt =:= 8 -> write('Você busca ficar sozinho ou se sente pressionado quando está em grupos de pessoas?').