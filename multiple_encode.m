%Pentru fiecare caracter din sir aplic functia encode si apoi creez un nou sir
%prin concatenare cu codurile morse
function x=multiple_encode(str)
	n=length(str);
	cpy="";
	for i=1:n
		s=morse_encode(str(i));
		cpy=[cpy " " s];
	endfor
	x=cpy;
endfunction