%DISEÑO DE FILTROS
%TRABAJO FINAL CIRCUITOS II
%ROBINSON MONTES GOMEZ

function inicio();

f=findobj('Tag','met');
f=get(f,'Value');

max=findobj('tag','max');
min=findobj('tag','min');
max=finobj('tag','string');
min=finobj('tag','string');
max=str2num(max);
min=str2num(min)
fcia1=findobj('tag','fcia1');
fcia2=findobj('tag','fcia2');
fcia1=get(fcia1,'string');
fcia2=get(fcia2,'string');
fcia1=str2num(fcia1);
fcia2=str2num(fcia2);

tipo1=findobj(0,'Tag','filt');
tipo=get(tipo1,'Value');

[J,K]=imread('atenea.jpg');

if tipo == 1,
	if isempty(fcia1) | fcia1<=0,
		msgbox('DEBEN INGRESAR VALORES CON UNA FRECUENCIA W1 MAYOR QUE CERO','ADVERTENCIA','custom',J,K);
		return;
	end
	  
elseif tipo == 2,
	if isempty(fcia1) | fcia1<=0,
		msgbox('DEBEN INGRESAR VALORES CON UNA FRECUENCIA W1 MAYOR QUE CERO','ADVERTENCIA','custom',J,K);
		return;
	end
	
elseif tipo == 3,
	if isempty(fcia1) | fcia1<=0, 
		msgbox('DEBEN INGRESAR VALORES CON UNA FRECUENCIA W1 MAYOR QUE CERO','ADVERTENCIA','custom',J,K);
		return;
	end
	
	if isempty(fcia2) | fcia2<=0,
		msgbox('DEBEN INGRESAR VALORES CON UNA FRECUENCIA W2 MAYOR QUE CERO','ADVERTENCIA','custom',J,K);
		return;
	end
    
    if fcia2<=fcia1
        msgbox('DEBEN INGRESAR VALORES CON UNA FRECUENCIA W2 MAYOR QUE W1','ADVERTENCIA','custom',J,K);
        return;
    end

elseif tipo == 4,
	if isempty(fcia1) | fcia1<=0, 
		msgbox('DEBEN INGRESAR VALORES CON UNA FRECUENCIA W1 MAYOR QUE CERO','ADVERTENCIA','custom',J,K);
		return;
	end
	
	if isempty(fcia2) | fcia2<=0,
		msgbox('DEBEN INGRESAR VALORES CON UNA FRECUENCIA W2 MAYOR QUE CERO','ADVERTENCIA','custom',J,K);
		return;
	end
    
    if fcia2<=fcia1
        msgbox('DEBEN INGRESAR VALORES CON UNA FRECUENCIA W2 MAYOR QUE W1','ADVERTENCIA','custom',J,K);
        return;
    end

            p=get(max,'string');
				if isempty(max) | max<=0,
				   msgbox('INGRESE EL VALOR DE Amax MAYOR QUE CERO','ADVERTENCIA','custom',J,K);
				   return;
				end
		     	p=str2num(p);
           	
            if isempty(p),
		   	  msgbox('SOLO SE ACEPTAN VALORES NUMERICOS','ADVERTENCIA','custom',J,K);
			     return;
             end
             
             q=get(min,'string');
                if isempty(min) | min<=0,
                    msgbox('INGRESE EL VALOR DE Amin MAYOR QUE CERO','ADVERTENCIA','custom',J,K);
                    return;
                end
                q=str2num(q)
           	    
                if isempty(q),
		   	  msgbox('SOLO SE ACEPTAN VALORES NUMERICOS.','ADVERTENCIA','custom',J,K);
			     return;
			  	end
          
