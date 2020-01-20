perguntaAnsiedade(Opt) :-
	Opt =:= 1 -> write('Você já sentiu uma forte ansiedade ou preocupação e teve dificuldades em controlá-la?');
	Opt =:= 2 -> write('A preocupação ou ansiedade faz você se sentir fadigado ou irritado?');
	Opt =:= 3 -> write('A preocupação ou ansiedade faz você ter dificuldades em dormir ou se concentrar?');
	Opt =:= 4 -> write('Você experiencia pensamentos perturbadores e indesejados?');
	Opt =:= 5 -> write('Você experiencia um medo muito grande que causa pânico, falta de ar, dores no peito, palpitações no coração, suor, tremedeira, náusea, tortura e/ou medo de morrer?');
	Opt =:= 6 -> write('Você evita lugares ou situações sociais por medo de sentir esse pânico?');
	Opt =:= 7 -> write('Você já realizou comportamentos repetitivos para controlar sua preocupação e/ou pânico? (i.e. trancar as portas, lavar as mãos, contar, repetir palavras)').