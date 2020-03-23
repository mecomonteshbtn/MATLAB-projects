 t={'INGRESE EL NUMERADOR','INGRESE EL DENOMINADOR'};
 def={'[25]','[1 4 25]'};
 dlgTitle='RESPUESTAS A LA FUNCION';
 lineNo=1;
 answer=inputdlg(t,dlgTitle,lineNo,def);
 a=tf(str2num(answer{1}),str2num(answer{2}));
 subplot(2,2,1);
 step(a)
 subplot(2,2,2);
 impulse(a)