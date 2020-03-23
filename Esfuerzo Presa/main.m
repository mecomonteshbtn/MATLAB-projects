function varargout = main(varargin)
% MAIN MATLAB code for main.fig
%      MAIN, by itself, creates a new MAIN or raises the existing
%      singleton*.
%
%      H = MAIN returns the handle to a new MAIN or the handle to
%      the existing singleton*.
%
%      MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN.M with the given input arguments.
%
%      MAIN('Property','Value',...) creates a new MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main

% Last Modified by GUIDE v2.5 06-Jun-2016 12:59:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
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


% --- Executes just before main is made visible.
function main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main (see VARARGIN)
% UIWAIT makes main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
%varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.


function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s1=get(handles.edit1, 'String');
AB=str2num(s1);
s2=get(handles.edit2, 'String');
BC=str2num(s2);
s3=get(handles.edit3, 'String');
CD=str2num(s3);
s4=get(handles.edit4, 'String');
DE=str2num(s4);
s5=get(handles.edit5, 'String');
AG=str2num(s5);
s6=get(handles.edit6, 'String');
AD=str2num(s6);
s7=get(handles.edit7, 'String');
GH=str2num(s7);
s9=get(handles.edit9, 'String');
alfa=str2num(s9);
s10=get(handles.edit10, 'String');
GAMMA1=str2num(s10);
s11=get(handles.edit11, 'String');
GAMMA2=str2num(s11);
s12=get(handles.edit12, 'String');
PHI2=str2num(s12);
s13=get(handles.edit13, 'String');
PHI1=str2num(s13);
s14=get(handles.edit14, 'String');
Ch=str2num(s14);
EF=AG-BC-CD-DE;

if PHI2==0  % el doble igual se pone para preguntar
	Nc=5.14;
	Nq=1;
	Ng=0;

elseif PHI2==1
	Nc=5.38;
	Nq=1.09;
	Ng=0.07;

elseif PHI2==2
	Nc=5.63;
	Nq=1.20;
	Ng=0.15;

elseif PHI2==3
	Nc=5.90;
	Nq=1.31;
	Ng=0.24;

elseif PHI2==4
	Nc=6.19;
	Nq=1.43;
	Ng=0.34;

elseif PHI2==5
	Nc=6.49;
	Nq=1.57;
	Ng=0.45;

elseif PHI2==6
	Nc=6,81;
	Nq=1.72;
	Ng=0.57;

elseif PHI2==7
	Nc=7.16;
	Nq=1.88;
	Ng=0.71;

elseif PHI2==8
	Nc=7.53;
	Nq=2.06;
	Ng=0.86;

elseif PHI2==9
	Nc=7.92;
	Nq=2.25;
	Ng=1.03;

elseif PHI2==10
	Nc=8.35;
	Nq=2.47;
	Ng=1.22;

elseif PHI2==11
	Nc=8.80;
	Nq=2.71;
	Ng=1.44;

elseif PHI2==12
	Nc=9,28;
	Nq=2.97;
	Ng=1.69;

elseif PHI2==13
	Nc=9.81;
	Nq=3.26;
	Ng=1.97;

elseif PHI2==14
	Nc=10.37;
	Nq=3,59;
	Ng=2.29;

elseif PHI2==15
	Nc=10.98;
	Nq=3.94;
	Ng=2.65;

elseif PHI2==16
	Nc=11.63;
	Nq=4.34;
	Ng=3.66;

elseif PHI2==17
	Nc=12.34;
	Nq=4.77;
	Ng=3.53;

elseif PHI2==18
	Nc=13.10;
	Nq=5,26;
	Ng=4.07;

elseif PHI2==19
	Nc=13.93;
	Nq=5.80;
	Ng=4.68;

elseif PHI2==20
	Nc=14.83;
	Nq=6.40;
	Ng=5.39;

elseif PHI2==21
	Nc=15.82;
	Nq=7.07;
	Ng=6.20;

elseif PHI2==22
	Nc=16.88;
	Nq=7.82;
	Ng=7.13;

elseif PHI2==23
	Nc=18.05;
	Nq=8.66;
	Ng=8.20;

elseif PHI2==24
	Nc=19.32;
	Nq=9.60;
	Ng=9.44;

elseif PHI2==25
	Nc=20.72;
	Nq=10.66;
	Ng=10.88;
end

Ka=(tan((45-PHI1/2)*pi()/180))^2;
IH=EF*tan(alfa*pi()/180);
Pa=GAMMA1*(GH+IH)^2*Ka/2;
Ph=Pa*cos(alfa*pi()/180);
Pv=Pa*sin(alfa*pi()/180);


MPa=Ph*(GH+IH)/3;
Kp=(tan((45+PHI2/2)*pi()/180))^2;
Z=GAMMA2*AD^2*Kp/2;
Y=2*Ch*AD*(Kp)^0.5;
Pp=Z+Y;
MPp=Z*AD/3+Y*AD/2;

W(1)=BC*(AD-AB)*GAMMA1;
W(2)=2.5*CD*(GH-AB)/2;
W(3)=2.5*DE*(GH-AB);
W(4)=2.5*AB*AG;
W(5)=EF*(GH-AB)*GAMMA2;
W(6)=EF^2*tan(alfa)/2;

Brazo(1)=AB/2;
Brazo(2)=2*CD/3+AB;
Brazo(3)=BC+CD+DE/2;
Brazo(4)=AG/2;
Brazo(5)=EF/2+DE+CD+BC;
Brazo(6)=2*EF/3+CD+DE+BC;

if alfa==0 %%no tiene inclinación
    Mtotal=MPp;
else
    Mtotal=Pp/3+Pv*AG;
end
Wtotal=0;

for i=1:1:5
    M(i)=W(i)*Brazo(i);
    Wtotal=Wtotal+W(i);
    Mtotal=Mtotal+M(i);
end

FSvolteo=Mtotal/MPa;
s31=num2str(FSvolteo);
set(handles.text31,'String',s31);

R=AG*2*Ch/3+Wtotal*tan(PHI2*pi()/270);
FSd=(R+Pp)/Ph;
s30=num2str(FSd);
set(handles.text30,'String',s30);

Mneto=Mtotal-MPa;
OE=Mneto/Wtotal;
e=AG/2-OE;
qmax=(Wtotal/AG)*(1+6*e/AG);
qmin=(Wtotal/AG)*(1-6*e/AG);

if e>AG/6
    fprintf('\n\n SE DEBE REDIMENSIONAR! \n\n');%\n es para cambiar de renglon, es como dar enter
end

q=GAMMA2*AD;
Bprima=AG-2*e;
Fcd=1+0.4*AD/Bprima;
PSI=atan(Ph/Wtotal);%atan(x) es tangente inversa de x
Fgammai=1-PSI/PHI2;
Fqd=1+2*tan(PHI2*pi()/180)*(1-sin(PHI2*pi()/180))^2*AD/Bprima;
Fci=(1-PSI/90)^2;

qu=Ch*Nc*Fcd*Fci+q*Nq*Fqd*Fci+GAMMA2*Bprima*Ng*Fgammai;
FSq=qu/Wtotal
s32=num2str(FSq);
set(handles.text32,'String',s32);

if FSq<3
    msgbox('Mejoramiento del suelo, Reemplazo del Sistema de Fundación, Mejoramiento del Sistema de Fundación, Aumentar la base ','Falla factor de Seguridad por carga')
end
if FSd<1.5
    msgbox('Aumentar la base, Aumentar el lleno Izquierdo, Cuña o Llave, Cambio en el Sistema de Fundación ','Falla factor de Seguridad por deslizamiento')
end
if FSvolteo<2
    msgbox('Aumentar la Aleta, Aumentar el tallo, Poner Anclajes, Aumentar el lleno ','Falla factor de Seguridad por volteo')
end
    
    % --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all


function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double



% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes3
imagen=imread('muro1.jpg');
image(imagen);
axis off;

% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes3
imagen=imread('muros.gif');
image(imagen);
axis off;


% --- Executes during object creation, after setting all properties.
function text30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
