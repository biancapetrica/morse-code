%Parcurg sirul element cu element si in functie de caracterul de pe pozitia
%curenta avansez in arbore pe ramura punct sau pe ramura linie
function x=morse_decode(sir)
	m=morse();
	n=length(sir); 
	for i=1:n
		c=sir(i);
		if strcmp(c, '.')==1 
			m=m{2}; %ramura punct
		elseif strcmp(c, '-')==1
			m=m{3}; %ramura linie
		elseif  strcmp(c, '.')==0 && strcmp(c, '-')==0
			disp("Ati introdus un cod gresit");
			x='*';
			return
		endif
	endfor
	x=m{1};
endfunction