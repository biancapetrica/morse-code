%Pentru a gasi codul morse al unei litere creez un arbore cu coduri 
%corespunzatoare arborelui morse m si in acelasi timp verific daca am gasit
%caracterul c cautat si il returnez in caz afirmativ. 
function x = morse_encode(c)
	m={morse};
	a{1,1}=''; %creez un arbore cu codul morse al fiecarei litere
	i=1; l=1; %cu l contorizez nivelurile lui c; iar i-nr de celule pt fiecare nivel  
  N = m{1};
	m = m(2:end); %parcurg de la stanga la dreapta fiecare element al arborelui m
	m = {m{:} N{2} N{3} }; 
	while ~isempty(m)
		N = m{1};
		m = m(2:end);
		if ~isempty(N)
			ant=fix((i-1)/2)+1; % determin nodul parinte 
			if l == 1
				if mod(i,2) == 1
					a{l+1, i} = [a{l, ant} '.'];
				else 
					a{l+1, i} = [a{l, ant} '-'];
				endif
				x=a{l+1, i}; % x = codul morse al literei curente N{1}
				if i == 2
					i=0;
					l++; %am parcurs toate nodurile de pe acest nivel si trec la urmatorul
				endif
			elseif l == 2
				if mod(i,2) == 1
					a{l+1, i} = [a{l, ant} '.'];
				else
					a{l+1, i} = [a{l, ant} '-'];
				endif
				x=a{l+1, i};
				if i == 4
					i= 0;
					l++;
				endif
			elseif l == 3
				if mod(i,2) == 1
					a{l+1, i} = [a{l, ant} '.'];
				else
					a{l+1, i} = [a{l, ant} '-'];
				endif
				x=a{l+1, i};
				if i == 8
					i= 0;
					l++;
				endif
			elseif l == 4
				if mod(i,2) == 1
					a{l+1, i} = [a{l, ant} '.'];
				else
					a{l+1, i} = [a{l, ant} '-'];
				endif
				x=a{l+1, i};
				if i == 16
					i= 0;
					l++;
				endif
			endif
			m = {m{:} N{2} N{3}}; % modul in care parcurg arborele 
			if N{1} ==  c
				return %am gasit codul cerut
			endif
		endif
		i++;
	endwhile
	x='*'; % nu a fost gasit caracterul c dat ca parametru
endfunction