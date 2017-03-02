program Jeu_De_Nim_Tp;

uses crt;

//ALGO: Jeu de Nim
//But faire un jeu de nim modulable et a 2J
//ENTREE l'user entre le nombre de baton qu'il veu retirer
//SORTIE si le J1 retire le dernier baton , il perd
{
	VAR
	retire , TOTAL, choix: entier

	BEGIN
		ECRIRE "Jeu de nim"
		ECRIRE "2 joueurs ou 1 joueur contre l ordinateur ?"
		LIRE choix
		SI choix = 1 ALORS
					ECRIRE "Combien voulez vous d'allumettes ?"
					LIRE TOTAL
			//TOUR 1
			REPETER // boucle permettant de continuer le jeu

					REPETER // boucle permettant d eviter d'avoir un nombre negatif d'alumettes

						REPETER // boucle permettant de demander un nombre entre 1 et 3

							ECRIRE "Joueur 1 , combien voulez vous enlever d'allumetttes ?"
							ECRIRE "Il reste "& TOTAL& " alumettes."
							lire retire

						JUSQUA retire > 0 ET retire <= 3

					JUSQUA TOTAL - retire >= 0

					TOTAL <- TOTAL - retire 
						SI TOTAL = 0 ALORS // savoir si qq un a gagné
							ECRIRE "Joueur 1 a perdu , Joueur 2 est le vainqueur ."
						FINSI

			SI TOTAL >= 1 ALORS
				//TOUR 2
						REPETER // boucle permettant d eviter d'avoir un nombre negatif d'alumettes

							REPETER // boucle permettant de demander un nombre entre 1 et 3

								ECRIRE "Joueur 2 , combien voulez vous enlever d'allumetttes ?"
								ECRIRE "Il reste "& TOTAL& " alumettes."
								lire retire

							JUSQUA retire > 0 ET retire <= 3

						JUSQUA TOTAL - retire >= 0

						TOTAL <- TOTAL - retire
							SI TOTAL = 0 ALORS	// savoir si qq un a gagné
								ECRIRE "Joueur 2 a perdu , Joueur 1 est le vainqueur ."
							FINSI
				JUSQUA TOTAL = 0
			FINSI
		SINON SI choix = 2 ALORS
			ECRIRE "Combien voulez vous d'allumettes ?"
					LIRE TOTAL
			//TOUR 1
			REPETER // boucle permettant de continuer le jeu

					REPETER // boucle permettant d eviter d'avoir un nombre negatif d'alumettes

						REPETER // boucle permettant de demander un nombre entre 1 et 3

							ECRIRE "Joueur 1 , combien voulez vous enlever d'allumetttes ?"
							ECRIRE "Il reste "& TOTAL& " alumettes."
							lire retire

						JUSQUA retire > 0 ET retire <= 3

					JUSQUA TOTAL - retire >= 0

					TOTAL <- TOTAL - retire 
						SI TOTAL = 0 ALORS // savoir si qq un a gagné
							ECRIRE "Joueur 1 a perdu , IA est le vainqueur ."
						FINSI

			SI TOTAL >= 1 ALORS
				//TOUR 2
						REPETER // boucle permettant d eviter d'avoir un nombre negatif d'alumettes

							REPETER // boucle permettant d'avoir une IA'
							retire <- Random
							JUSQUA retire > 0 ET retire <= 3

						JUSQUA TOTAL - retire >= 0

						TOTAL <- TOTAL - retire
							SI TOTAL = 0 ALORS	// savoir si qq un a gagné
								ECRIRE "IA a perdu , Joueur 1 est le vainqueur ."
							FINSI
				JUSQUA TOTAL = 0
			FINSI
		FINSI
FINSI
}

// JEU d'essai
{
ESSAI 1 
	Joueur 1 , combien voulez vous enlever d'allumetttes ?
	Il reste 9 alumettes.
	3
	Joueur 2 , combien voulez vous enlever d'allumetttes ?
	Il reste 6 alumettes.
	3
	Joueur 1 , combien voulez vous enlever d'allumetttes ?
	Il reste 3 alumettes.
	3
	Joueur 1 a perdu , Joueur 2 est le vainqueur .

ESSAI 2 
	Joueur 1 , combien voulez vous enlever d'allumetttes ?
	Il reste 9 alumettes.
	3 ( si je rentre 4 ou plus il va boucler)

	Joueur 2 , combien voulez vous enlever d'allumetttes ?
	Il reste 6 alumettes.
	3 ( si je rentre 0 ou moins il va boucler)

	Joueur 1 , combien voulez vous enlever d'allumetttes ?
	Il reste 3 alumettes.
	2

	Joueur 2 , combien voulez vous enlever d'allumetttes ?
	Il reste 1 alumettes.
	1 ( si je rentre plus que 1 il va boucler vu qu il reste une alumette.)

	Joueur 2 a perdu , Joueur 1 est le vainqueur .

ESSAI J1 vs IA
	Joueur 1 , combien voulez vous enlever d'allumetttes ?
	Il reste 9 alumettes.
	3
	Joueur 1 , combien voulez vous enlever d'allumetttes ?
	Il reste 3 alumettes.
	3
	Joueur 1 a perdu ,IA est le vainqueur .

}
VAR
	retire,TOTAL,choix: INTEGER;
BEGIN
	clrscr;
	writeln('Jeu de nim');
	writeln('2 joueurs ou 1 joueur contre l'' ordinateur ? ( entrez 1 pour 2J et 2 pour 1J et IA , entrez un autre chiffre pour quitter.)');
	readln(choix);
//CHOIX J1 ET J2
	IF choix = 1 THEN
		begin
			writeln('Joueur 1 contre Joueur 2.');
			writeln('Combien d''allumetttes voulez vous avoir ?');
			readln(TOTAL);
				REPEAT // boucle permettant de continuer le jeu
					begin
					//TOUR DU J1
						REPEAT // boucle permettant d eviter d'avoir un nombre negatif d'alumettes
							begin
								REPEAT // boucle permettant de demander un nombre entre 1 et 3
									begin
										writeln('Joueur 1 , combien voulez vous enlever d''allumetttes ?');
										writeln('Il reste ',TOTAL,' alumettes.');
										readln(retire);
									end;
								UNTIL (retire > 0) AND (retire <= 3) ;
							end;
						UNTIL TOTAL - retire >= 0 ;
					TOTAL := TOTAL - retire;
						IF TOTAL = 0 THEN // savoir si qq un a gagné
							begin
								writeln('Joueur 1 a perdu , Joueur 2 est le vainqueur .');
								readln;
							end;

					IF (TOTAL >= 1) THEN // savoir si il y aura un 2e tour ou pas
						begin

					//TOUR DU J2
							REPEAT // boucle permettant d eviter d'avoir un nombre negatif d'alumettes
								begin
									REPEAT // boucle permettant de demander un nombre entre 1 et 3
										begin
											writeln('Joueur 2 , combien voulez vous enlever d''allumetttes ?');
											writeln('Il reste ',TOTAL,' alumettes.');
											readln(retire);
										end;
									UNTIL (retire > 0) AND (retire <= 3) ;
								end;
							UNTIL TOTAL - retire >= 0 ;
						TOTAL := TOTAL - retire;
							IF TOTAL = 0 THEN // savoir si qq un a gagné
								begin
									writeln('Joueur 2 a perdu , Joueur 1 est le vainqueur .');
									readln;
								end;
						end;
					end;
				UNTIL TOTAL = 0;
		end
// JEUX J1 ET IA 
			ELSE IF choix = 2 THEN
				begin
					writeln('Joueur 1 contre l'' ordinateur.');
					writeln('Combien d''allumetttes voulez vous avoir ?');
					readln(TOTAL);
					REPEAT // boucle permettant de continuer le jeu
						begin
						//TOUR DU J1
							REPEAT // boucle permettant d eviter d'avoir un nombre negatif d'alumettes
								begin
									REPEAT // boucle permettant de demander un nombre entre 1 et 3
										begin
											writeln('Joueur 1 , combien voulez vous enlever d''allumetttes ?');
											writeln('Il reste ',TOTAL,' alumettes.');
											readln(retire);
										end;
									UNTIL (retire > 0) AND (retire <= 3) ;
								end;
							UNTIL TOTAL - retire >= 0 ;
						TOTAL := TOTAL - retire;
							IF TOTAL = 0 THEN // savoir si qq un a gagné
								begin
									writeln('Joueur 1 a perdu , L''IA est le vainqueur .');
									readln;
								end;

						IF (TOTAL >= 1) THEN // savoir si il y aura un 2e tour ou pas
							begin

						//TOUR De l' IA
								REPEAT // boucle permettant d eviter d'avoir un nombre negatif d'alumettes
									begin
										REPEAT // boucle permettant d'avoir une IA
											begin
												Randomize;
												retire := Random(3)+1;
											end;
										UNTIL (retire > 0) AND (retire <= 3) ;
									end;
								UNTIL TOTAL - retire >= 0 ;
							TOTAL := TOTAL - retire;
								IF TOTAL = 0 THEN // savoir si qq un a gagné
									begin
										writeln('L''IA a perdu , Joueur 1 est le vainqueur .');
										readln;
									end;
							end;
						end;
					UNTIL TOTAL = 0;
				end;
END.