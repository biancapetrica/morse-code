# morse-code

Functia morse construieste arborele corespunzator codului Morse
dupa exemplul dat. Functia morse_decode parcurge sirul dat caracter cu caracter;
daca intalnim caracterul . avansam pe ramura punct cu m{2}, in caz contrar pe 
ramura - cu m{3}, pana la sfarsitul sirului. Litera cautata va fi data de m{1},
unde m este arborele dat de functia anterioara. In functia multiple_decode
creez un vector de stringuri cu strsplit si pentru fiecare element din vector 
apelez functia morse_decode, litera rezultata introducand-o intr-un vector de
caractere cpy, iar la final x=cpy. 
Functia morse_encode creeaza un nou arbore cu coduri morse(a). In timp ce
parcurg fiecare nod al arborelui morse initial, pentru nodul curent determin
codul morse al acestuia si il introduc in noul arbore, in pozitia 
corespunzatoare. Acest lucru il realizez stiind nivelul pe care ma aflu(l) si 
in a cata celula sunt din acest nivel (i), si valoarea nodului parinte
a{l,ant} . Daca i este impar atunci adaug '.' la aceasta valoare, daca nu '-'. 
In acelasi timp compar valoarea nodului curent morse cu caracterul cautat c
si daca este aceeasi returnez valoarea nodului corespunzator din arborele a.
Arborele a are 5 niveluri de la 0 la 4 si cate 2^l noduri pe fiecare nivel.
Functia muliple_encode apeleaza fubctia morse_encode pentru fiecare caracter al 
sirului str si construieste un nou sir prin concatenarea rezultatelor.

