function varargout = interfaz(varargin)

% INTERFAZ MATLAB code for interfaz.fig
%      INTERFAZ, by itself, creates a new INTERFAZ or raises the existing
%      singleton*.
%
%      H = INTERFAZ returns the handle to a new INTERFAZ or the handle to
%      the existing singleton*.
%
%      INTERFAZ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFAZ.M with the given input arguments.
%
%      INTERFAZ('Property','Value',...) creates a new INTERFAZ or raises
%      the existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before interfaz_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to interfaz_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help interfaz

% Last Modified by GUIDE v2.5 28-Oct-2016 05:23:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @interfaz_OpeningFcn, ...
                   'gui_OutputFcn',  @interfaz_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

% --- Executes just before interfaz is made visible.
function interfaz_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to interfaz (see VARARGIN)

% Choose default command line output for interfaz
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

initialize_gui(hObject, handles, false);

% UIWAIT makes interfaz wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = interfaz_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
imagen=imread('Silla2.jpg');
msgbox('Este documento (software) y todos sus adjuntos son para el uso confidencial y exclusivo del destinatario. En ningún momento alguien diferente, puede leer, usar, distribuir o tomar acciones a partir de este documento (software) y todos sus adjuntos. Nótese que esta nota de confidencialidad debe ser asumida como un anuncio legal, con implicaciones del mismo tipo. Cualquier caso omiso que se haga de este anuncio legal y de la información confidencial aquí mencionada, servirá como elemento probatorio en caso de violación de la propiedad intelectual aquí establecida. Toda la propiedad intelectual de este documento (software) y todos sus adjuntos, pertenece al Grupo BAMR, UdeA, y al equipo de investigación que desarrollo este trabajo.','CONFIDENCIALIDAD:','custom',imagen);
estadoCabezal=0;
estadoApoya=0;
handles.estadoApoya=estadoApoya;
handles.estadoCabezal=estadoCabezal;
guidata(hObject,handles);


% --------------------------------------------------------------------
function initialize_gui(fig_handle, handles, isreset)
% If the metricdata field is present and the reset flag is false, it means
% we are we are just re-initializing a GUI by calling it from the cmd line
% while it is up. So, bail out as we dont want to reset the data.
if isfield(handles, 'metricdata') && ~isreset
    return;
end


% Update handles structure

% --- Executes on button press in Grande.
function Grande_Callback(hObject, eventdata, handles)
% hObject    handle to Grande (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

s1=num2str(54);
set(handles.AC,'String',s1);
s2=num2str(50);
set(handles.CH,'String',s2);
s3=num2str(53);
set(handles.CC,'String',s3);
s4=num2str(48);
set(handles.AM,'String',s4);
s5=num2str(44.5);
set(handles.NFP,'String',s5);
s6=num2str(12);
set(handles.MA,'String',s6);
s7=num2str(124.5);
set(handles.AO,'String',s7);
s8=num2str(23);
set(handles.CA,'String',s8);
s9=num2str(55.5);
set(handles.AR,'String',s9);
s10=num2str(47.5);
set(handles.AF,'String',s10);

handles.Percentil=1;
guidata(hObject,handles);


% --- Executes on button press in Mediano.
function Mediano_Callback(hObject, eventdata, handles)
% hObject    handle to Mediano (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

s1=num2str(48);
set(handles.AC,'String',s1);
s2=num2str(43);
set(handles.CH,'String',s2);
s3=num2str(51);
set(handles.CC,'String',s3);
s4=num2str(44);
set(handles.AM,'String',s4);
s5=num2str(39);
set(handles.NFP,'String',s5);
s6=num2str(13);
set(handles.MA,'String',s6);
s7=num2str(117);
set(handles.AO,'String',s7);
s8=num2str(20);
set(handles.CA,'String',s8);
s9=num2str(50.5);
set(handles.AR,'String',s9);
s10=num2str(42.5);
set(handles.AF,'String',s10);

handles.Percentil=2;
guidata(hObject,handles);


% --- Executes on button press in Pequeno.
function Pequeno_Callback(hObject, eventdata, handles)
% hObject    handle to Pequeno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

s1=num2str(57);
set(handles.AC,'String',s1);
s2=num2str(47);
set(handles.CH,'String',s2);
s3=num2str(38);
set(handles.CC,'String',s3);
s4=num2str(39);
set(handles.AM,'String',s4);
s5=num2str(34);
set(handles.NFP,'String',s5);
s6=num2str(12);
set(handles.MA,'String',s6);
s7=num2str(101.5);
set(handles.AO,'String',s7);
s8=num2str(27);
set(handles.CA,'String',s8);
s9=num2str(51);
set(handles.AR,'String',s9);
s10=num2str(41.25);
set(handles.AF,'String',s10);

handles.Percentil=3;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function Logos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Logos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate Logos
imagen=imread('logos.jpg');
image(imagen);
axis off;

function AC_Callback(hObject, eventdata, handles)
% hObject    handle to AC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AC as text
%        str2double(get(hObject,'String')) returns contents of AC as a double


% --- Executes during object creation, after setting all properties.
function AC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CH_Callback(hObject, eventdata, handles)
% hObject    handle to CH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CH as text
%        str2double(get(hObject,'String')) returns contents of CH as a double


% --- Executes during object creation, after setting all properties.
function CH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CC_Callback(hObject, eventdata, handles)
% hObject    handle to CC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CC as text
%        str2double(get(hObject,'String')) returns contents of CC as a double


% --- Executes during object creation, after setting all properties.
function CC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AM_Callback(hObject, eventdata, handles)
% hObject    handle to AM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AM as text
%        str2double(get(hObject,'String')) returns contents of AM as a double


% --- Executes during object creation, after setting all properties.
function AM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NFP_Callback(hObject, eventdata, handles)
% hObject    handle to NFP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NFP as text
%        str2double(get(hObject,'String')) returns contents of NFP as a double


% --- Executes during object creation, after setting all properties.
function NFP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NFP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MA_Callback(hObject, eventdata, handles)
% hObject    handle to MA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MA as text
%        str2double(get(hObject,'String')) returns contents of MA as a double


% --- Executes during object creation, after setting all properties.
function MA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AO_Callback(hObject, eventdata, handles)
% hObject    handle to AO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AO as text
%        str2double(get(hObject,'String')) returns contents of AO as a double


% --- Executes during object creation, after setting all properties.
function AO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AR_Callback(hObject, eventdata, handles)
% hObject    handle to AR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AR as text
%        str2double(get(hObject,'String')) returns contents of AR as a double


% --- Executes during object creation, after setting all properties.
function AR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AF_Callback(hObject, eventdata, handles)
% hObject    handle to AF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AF as text
%        str2double(get(hObject,'String')) returns contents of AF as a double


% --- Executes during object creation, after setting all properties.
function AF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CA_Callback(hObject, eventdata, handles)
% hObject    handle to CA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CA as text
%        str2double(get(hObject,'String')) returns contents of CA as a double


% --- Executes during object creation, after setting all properties.
function CA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Iniciar.
function Iniciar_Callback(hObject, eventdata, handles, Percentil)
% hObject    handle to Iniciar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --- Executes on button press in INICIAR.

Percentil=handles.Percentil;
estadoCabezal=handles.estadoCabezal;
estadoApoya=handles.estadoApoya;
xlswrite('Reporte.xlsx','     ','H4:J13');
xlswrite('Reporte.xlsx','     ','H20:J29');
xlswrite('Reporte.xlsx','     ','H35:J44');
xlswrite('Reporte.xlsx','     ','H50:J59');
xlswrite('Reporte.xlsx','     ','H65:J74');
xlswrite('Reporte.xlsx','     ','H80:J89');


switch Percentil
    case 1
        fprintf('\n\n                         PERCENTIL GRANDE \n');
        FEspaldar=878.05;
        HEspaldar=0.47;
        FCabezal=316.39;
        HCabezal=0.2;
        FSentadera=1200;
        FApoya=80;
        FCilindro=856;
        FPatas=184.04;
        
    case 2
        fprintf('\n\n                         PERCENTIL MEDIANO \n');
        FEspaldar=855.94;
        HEspaldar=0.47;
        FCabezal=350.23;
        HCabezal=0.2;
        FSentadera=1200;
        FApoya=80;
        FCilindro=817;
        FPatas=176.2;
        
    case 3
        fprintf('\n\n                         PERCENTIL PEQUEÑO \n');
        FEspaldar=760.07;
        HEspaldar=0.47;
        FCabezal=400.54;
        HCabezal=0.2;
        FSentadera=1200;
        FApoya=80;
        FCilindro=685;
        FPatas=149.74;
        
end


%---------------Datos iniciales ---------------------

Material={'PE medium' 'PE high' 'GFRP' 'PP' 'ABS' 'PVC' 'PS' 'PET' 'PC' 'PEEK' 'PE low' 'CFRP'};
Espuma={'Blanda' 'Media' 'Rígida'};

Gmaterial=[15.5 25.5 79 34 43 70.5 54.5 81 70.5 95 72 345];
dmaterial=[775 1275 2468.75 850 1075 1410 1090 1350 1175 1187.5 900 1725];
Ematerial=[48000 78000 72000 145000 245000 335000 305000 24000 235000 360000 18000 480000];
Eespuma=[40,120,200];
indiceMetal=[96,51];
Metal={'Aluminio','Acero'};
FS=1.2;

k=0;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%---------------Creación de los compuestos Material/Espuma----------------
for i=1:3
    p=0;
    for j=1:12
        p=p+1;
        k=k+1;
        Gmaterial(k)=Gmaterial(p);
        dmaterial(k)=dmaterial(p);
        Compuesto{k}=strcat(Material{j},'/',Espuma{i});
        Ecompuesto(k)=Ematerial(j)*0.05+Eespuma(i)*0.95;  
        Diferencia(k)=abs(Ecompuesto(k)-8800);
    end
end

for i=1:36
    indice(i)=Gmaterial(i)/dmaterial(i);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%---------------Análisis de los resultados generales Espaldar--------------
%figure(1)

d=1:1:5;

for i=1:5
    for j=1:12
        masacomparativo(j)=3*FEspaldar*HEspaldar^2*FS/(1000*d(i)*indice(j));
    end
    %subplot(2,3,i)
    %plot(indice(1:12),masacomparativo)
    %xlabel('índice de material [MPa/(Kg/m3)]');
    %ylabel('Masa del Espaldar [Kg]');
    %title(['Ashby Espaldar d = ',num2str(d(i)),' mm']);
end

%subplot(2,3,6)
%imagen=imread('leyenda.jpg');
%image(imagen);
%title('Leyenda eje x');
%axis off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%---------------Análisis de los resultados generales Cabezal---------------
if estadoCabezal==1
   % figure(2)

    d=1:1:5;

    for i=1:5
        for j=1:12
            masacomparativo(j)=3*FCabezal*HCabezal^2*FS/(1000*d(i)*indice(j));
        end
 %       subplot(2,3,i)
  %      plot(indice(1:12),masacomparativo)
   %     xlabel('índice de material [MPa/(Kg/m3)]');
    %    ylabel('Masa del Cabezal [Kg]');
     %   title(['Ashby Cabezal d = ',num2str(d(i)),' mm']);
    end

    %subplot(2,3,6)
    %imagen=imread('leyenda.jpg');
    %image(imagen);
    %title('Leyenda eje x');
    %axis off
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%---------------Análisis de los resultados generales Sentadera-------------
%figure(3)

d=1:1:5;

for i=1:5
    for j=1:12
        masacomparativo(j)=FSentadera*FS*d(i)/(10000*indice(j));
    end
 %   subplot(2,3,i)
  %  plot(indice(1:12),masacomparativo)
   % xlabel('índice de material [MPa/(Kg/m3)]');
    %ylabel('Masa del Sentadera [Kg]');
    %title(['Ashby Sentadera d = ',num2str(d(i)),' mm']);
end

%subplot(2,3,6)
%imagen=imread('leyenda.jpg');
%image(imagen);
%title('Leyenda eje x');
%axis off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%-------------Análisis de los resultados generales Apoya Brazos------------
if estadoApoya==1

 %   figure(4)

    d=1:1:5;

    for i=1:5
        for j=1:12
            masacomparativo(j)=FApoya*FS*d(i)/(10000*indice(j));
        end
  %      subplot(2,3,i)
   %     plot(indice(1:12),masacomparativo)
    %    xlabel('índice de material [MPa/(Kg/m3)]');
     %   ylabel('Masa del Apoya Brazos [Kg]');
      %  title(['Ashby Apoya Brazos d = ',num2str(d(i)),' mm']);
    end

    %subplot(2,3,6)
   % imagen=imread('leyenda.jpg');
    %image(imagen);
    %title('Leyenda eje x');
    %axis off
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%------------Ordenar vectores de los compuestos Material/Espuma------------

for i=2:36
    for j=1:37-i
        if Diferencia(j)>Diferencia(j+1)
            
            aux=Diferencia(j); 
            Diferencia(j)=Diferencia(j+1); 
            Diferencia(j+1)=aux; 
            
            aux=indice(j); 
            indice(j)=indice(j+1); 
            indice(j+1)=aux;
            
            aux=Ecompuesto(j); 
            Ecompuesto(j)=Ecompuesto(j+1); 
            Ecompuesto(j+1)=aux; 
            
            auxstr=Compuesto{j}; 
            Compuesto{j}=Compuesto{j+1}; 
            Compuesto{j+1}=auxstr;
        end
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%-----------------Análisis de los resultados generales---------------------
%figure(5)

matcomp=1:1:36;
%plot(matcomp,Ecompuesto);
%xlabel('Compuesto');
%ylabel('E compuesto [Kg/m^2]');
%title(['Rigidez del compuesto']);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%--------Optimización con los resultados filtrados para el Espaldar--------
%figure(6)

for j=1:10
    for i=1:5
        masa(i)=3*FEspaldar*HEspaldar^2*FS/(1000*d(i)*indice(j));
    end
        
 %   subplot(3,4,j)
  %  plot(d,masa)
   % xlabel('Espesor del Espaldar [mm]');
    %ylabel('Masa del Espaldar [Kg]');
    %title(Compuesto{j});
    
    masaEspaldar(j)=min(masa);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------Optimización con los resultados filtrados para el Cabezal-----------
if estadoCabezal==1
    %figure(7)

    for j=1:10
        for i=1:5
            masa(i)=3*FCabezal*HCabezal^2*FS/(1000*d(i)*indice(j));
        end

     %   subplot(3,4,j)
      %  plot(d,masa)
       % xlabel('Espesor del Cabezal [mm]');
        %ylabel('Masa del Cabezal [Kg]');
        %title(Compuesto{j});

        masaCabezal(j)=min(masa);
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%--------Optimización con los resultados filtrados para el Sentadera--------
%figure(8)

for j=1:10
    for i=1:5
        masa(i)=FSentadera*FS*d(i)/(10000*indice(j));
    end
        
 %   subplot(3,4,j)
  %  plot(d,masa)
   % xlabel('Espesor del Sentadera [mm]');
    %ylabel('Masa del Sentadera [Kg]');
    %title(Compuesto{j});
    
    masaSentadera(j)=min(masa);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------Optimización con los resultados filtrados para el Apoya Brazos------
if estadoApoya==1
    %figure(9)

    for j=1:10
        for i=1:5
            masa(i)=FApoya*FS*d(i)/(10000*indice(j));
        end

     %   subplot(3,4,j)
      %  plot(d,masa)
       % xlabel('Espesor del Apoya Brazos [mm]');
        %ylabel('Masa del Apoya Brazos [Kg]');
        %title(Compuesto{j});

        masaApoya(j)=min(masa);
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%--------Optimización con los resultados filtrados para el Cilíndro--------
%figure(10)

L=200:10:500;

for j=1:2
    for i=1:31
        masa(i)=FCilindro*FS*L(i)/(1000*indiceMetal(j));
    end
        
 %   subplot(2,1,j)
  %  plot(L,masa)
   % xlabel('Longitud del Cilíndro [mm]');
    %ylabel('Masa del Cilíndro [Kg]');
    %title(Metal{j});
    
    masaCilindro(j)=min(masa);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%--------Optimización con los resultados filtrados para las Patas----------
%figure(11)

L=200:10:500;

for j=1:12
    for i=1:31
        if j<=2
            masa(i)=5*FPatas*FS*L(i)/(1000*indiceMetal(j));
        else
            masa(i)=5*FPatas*FS*L(i)/(1000*indice(j-2));
        end
    end
    
    if j<=2
 %       subplot(3,4,j)
  %      plot(L,masa)
   %     xlabel('Longitud de la Base [mm]');
    %    ylabel('Masa de la Base [Kg]');
     %   title(Metal{j});
    else 
      %  subplot(3,4,j)
       % plot(L,masa)
        %xlabel('Longitud de la Base [mm]');
        %ylabel('Masa de la Base [Kg]');
        %title(Compuesto{j-2});
    end
    
    masaPatas(j)=min(masa);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%-------Presentación de los resultados filtrados para el Espaldar----------

fprintf('\n\n                         ESPALDAR \n');
fprintf('\n Lista de las 10 combinaciones Material/Espuma con Rigidez más \n');
fprintf(' próxima a la rigidez de la compuesto vertebra-disco-vertebra \n');
fprintf(' \nSe presenta la masa óptima para un espesor máximo de 5mm \n\n');

for i=1:10
    ReCompuesto{i,1}=Compuesto{i};
    ReEcompuesto(i,1)=Ecompuesto(i);
    RemasaEspaldar(i,1)=masaEspaldar(i);
    fprintf('\n %s\t\t\t\t\tE = %g MPa/m^2\t\t\t\t\tmasa = %f Kg\n',Compuesto{i},Ecompuesto(i),masaEspaldar(i));
end
xlswrite('Reporte.xlsx',ReCompuesto,'H4:H13');
xlswrite('Reporte.xlsx',ReEcompuesto,'I4:I13');
xlswrite('Reporte.xlsx',RemasaEspaldar,'J4:J13');

%------Presentación de los resultados filtrados para el Cabezal------------
if estadoCabezal==1
    fprintf('\n\n                         CABEZAL \n');
    fprintf('\n Lista de las 10 combinaciones Material/Espuma con Rigidez más \n');
    fprintf(' próxima a la rigidez de la compuesto vertebra-disco-vertebra \n');
    fprintf(' \n   Se presenta la masa óptima para un espesor máximo de 5mm \n\n');

    for i=1:10
        ReCompuesto{i,1}=Compuesto{i};
        ReEcompuesto(i,1)=Ecompuesto(i);
        RemasaCabezal(i,1)=masaCabezal(i);
        fprintf('\n %s\t\t\t\t\tE = %g MPa/m^2\t\t\t\t\tmasa = %f Kg\n',Compuesto{i},Ecompuesto(i),masaCabezal(i));
    end
    xlswrite('Reporte.xlsx',ReCompuesto,'H65:H74');
    xlswrite('Reporte.xlsx',ReEcompuesto,'I65:I74');
    xlswrite('Reporte.xlsx',RemasaCabezal,'J65:J74');
end

%------Presentación de los resultados filtrados para el Sentadera----------

fprintf('\n\n                         SENTADERA \n');
fprintf('\n Lista de las 10 combinaciones Material/Espuma con Rigidez más \n');
fprintf(' próxima a la rigidez de la compuesto vertebra-disco-vertebra \n');
fprintf(' \n   Se presenta la masa óptima para un espesor máximo de 5mm \n\n');

for i=1:10
    ReCompuesto{i,1}=Compuesto{i};
    ReEcompuesto(i,1)=Ecompuesto(i);
    RemasaSentadera(i,1)=masaSentadera(i);
    fprintf('\n %s\t\t\t\t\tE = %g MPa/m^2\t\t\t\t\tmasa = %f Kg\n',Compuesto{i},Ecompuesto(i),masaSentadera(i));
end

xlswrite('Reporte.xlsx',ReCompuesto,'H20:H29');
xlswrite('Reporte.xlsx',ReEcompuesto,'I20:I29');
xlswrite('Reporte.xlsx',RemasaSentadera,'J20:J29');

%------Presentación de los resultados filtrados para el Apoya Brazos-------
if estadoApoya==1
    fprintf('\n\n                        APOYA BRAZOS \n');
    fprintf('\n Lista de las 10 combinaciones Material/Espuma con Rigidez más \n');
    fprintf(' próxima a la rigidez de la compuesto vertebra-disco-vertebra \n');
    fprintf(' \n   Se presenta la masa óptima para un espesor máximo de 5mm \n\n');

    for i=1:10
        ReCompuesto{i,1}=Compuesto{i};
        ReEcompuesto(i,1)=Ecompuesto(i);
        RemasaApoya(i,1)=masaApoya(i);
        fprintf('\n %s\t\t\t\t\tE = %g MPa/m^2\t\t\t\t\tmasa = %f Kg\n',Compuesto{i},Ecompuesto(i),masaApoya(i));
    end
    xlswrite('Reporte.xlsx',ReCompuesto,'H80:H89');
    xlswrite('Reporte.xlsx',ReEcompuesto,'I80:I89');
    xlswrite('Reporte.xlsx',RemasaApoya,'J80:J89');
end

%------Presentación de los resultados filtrados para el Cilíndro------------
fprintf('\n\n                         CILÍNDRO \n');
fprintf('\n   Lista de las 2 Metales más usados en la fabricación del cilíndro \n');
fprintf(' \n   Se presenta la masa óptima para una longitud máxima de 500mm \n\n');

for i=1:2
    ReCompuesto{i,1}=Metal{i};
    RemasaCilindro(i,1)=masaCilindro(i);
    fprintf('\n %s\t\t\t\t\t masa = %f Kg\n',Metal{i},masaCilindro(i));
end

xlswrite('Reporte.xlsx',ReCompuesto,'H35:H36');
xlswrite('Reporte.xlsx',RemasaCilindro,'J35:J36');

%------Presentación de los resultados filtrados para el Patas------------
fprintf('\n\n                         BASE \n');
fprintf('\n   Lista de las 2 Metales más usados en la fabricación de la Base \n');
fprintf(' \n   Se presenta la masa óptima para una longitud máxima de 500mm \n\n');

for i=1:10
    if i<=2
        ReCompuesto{i,1}=Metal{i};
        RemasaPatas(i,1)=masaPatas(i);
        fprintf('\n %s\t\t\t\t\t masa = %f Kg\n',Metal{i},masaPatas(i));
    else 
        ReCompuesto{i,1}=Compuesto{i-2};
        RemasaPatas(i,1)=masaPatas(i);
        fprintf('\n %s\t\t\t\t\t masa = %f Kg\n',Compuesto{i-2},masaPatas(i));
    end
    
end

xlswrite('Reporte.xlsx',ReCompuesto,'H50:H59');
xlswrite('Reporte.xlsx',ReEcompuesto,'I52:I59');
xlswrite('Reporte.xlsx',RemasaPatas,'J50:J59');
winopen('Reporte.xlsx')

% --- Executes during object creation, after setting all properties.
function Silla1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Silla1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate Silla1
imagen=imread('Silla1.jpg');
image(imagen);
axis off;

function Silla2_CreateFcn(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
% hObject    handle to Silla2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate Silla2
imagen=imread('Silla2.jpg');
image(imagen);
axis off;


% --- Executes on button press in Cabezalcheck.
function Cabezalcheck_Callback(hObject, eventdata, handles)
% hObject    handle to Cabezalcheck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Cabezalcheck

estadoCabezal = get(handles.Cabezalcheck,'Value');
handles.estadoCabezal=estadoCabezal;
guidata(hObject,handles);

% --- Executes on button press in Apoyacheck.
function Apoyacheck_Callback(hObject, eventdata, handles)
% hObject    handle to Apoyacheck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Apoyacheck
estadoApoya = get(handles.Cabezalcheck,'Value');
handles.estadoApoya=estadoApoya;
guidata(hObject,handles);


% --- Executes on button press in Licitacion.
function Licitacion_Callback(hObject, eventdata, handles)
% hObject    handle to Licitacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

winopen('Licitacion.xlsx')

% --- Executes during object creation, after setting all properties.
function Licitacion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Licitacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
