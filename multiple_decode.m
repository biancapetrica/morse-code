%Formez un vector cu fiecare cod din sir, pentru care apelez functia de
%decodificare
function x=multiple_decode(sir)
	s=strsplit(sir, " "); %vector de stringuri
	n=length(s);
	for i=1:n
		cpy(i)=morse_decode(s{i});
	endfor
	x=cpy; %sirul de litere decodificate
endfunction