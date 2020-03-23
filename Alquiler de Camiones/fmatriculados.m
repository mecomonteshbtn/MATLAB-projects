function varargout = fmatriculados(varargin)
% FMATRICULADOS M-file for fmatriculados.fig
%      FMATRICULADOS, by itself, creates a new FMATRICULADOS or raises the existing
%      singleton*.
%
%      H = FMATRICULADOS returns the handle to a new FMATRICULADOS or the handle to
%      the existing singleton*.
%
%      FMATRICULADOS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FMATRICULADOS.M with the given input arguments.
%
%      FMATRICULADOS('Property','Value',...) creates a new FMATRICULADOS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fmatriculados_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fmatriculados_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fmatriculados

% Last Modified by GUIDE v2.5 16-May-2013 15:57:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fmatriculados_OpeningFcn, ...
                   'gui_OutputFcn',  @fmatriculados_OutputFcn, ...
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


% --- Executes just before fmatriculados is made visible.
function fmatriculados_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fmatriculados (see VARARGIN)

% Choose default command line output for fmatriculados
global placas
global rutas
global clases
global fecha
global marcas

set(handles.lPlacas, 'String', placas);
set(handles.lRutas, 'String', rutas);
set(handles.lClases, 'String', clases);
set(handles.lMarcas, 'String', marcas);
set(handles.lFecha, 'String', fecha);

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fmatriculados wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fmatriculados_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)

close
finicio
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)

close
fretirados
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when entered data in editable cell(s) in uitable3.
function uitable3_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable3 (see GCBO)
% eventdata  structure with the following fields (see UITABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function cPrueba_Callback(hObject, eventdata, handles)
% hObject    handle to cPrueba (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cPrueba as text
%        str2double(get(hObject,'String')) returns contents of cPrueba as a double


% --- Executes during object creation, after setting all properties.
function cPrueba_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cPrueba (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tplaca_Callback(hObject, eventdata, handles)
% hObject    handle to tplaca (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tplaca as text
%        str2double(get(hObject,'String')) returns contents of tplaca as a double


% --- Executes during object creation, after setting all properties.
function tplaca_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tplaca (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tfecha_Callback(hObject, eventdata, handles)
% hObject    handle to tfecha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tfecha as text
%        str2double(get(hObject,'String')) returns contents of tfecha as a double


% --- Executes during object creation, after setting all properties.
function tfecha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tfecha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function truta_Callback(hObject, eventdata, handles)
% hObject    handle to truta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of truta as text
%        str2double(get(hObject,'String')) returns contents of truta as a double


% --- Executes during object creation, after setting all properties.
function truta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to truta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tmarca_Callback(hObject, eventdata, handles)
% hObject    handle to tmarca (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tmarca as text
%        str2double(get(hObject,'String')) returns contents of tmarca as a double


% --- Executes during object creation, after setting all properties.
function tmarca_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tmarca (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tclase_Callback(hObject, eventdata, handles)
% hObject    handle to tclase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tclase as text
%        str2double(get(hObject,'String')) returns contents of tclase as a double


% --- Executes during object creation, after setting all properties.
function tclase_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tclase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in lPlacas.
function lPlacas_Callback(hObject, eventdata, handles)

global nc
global placas

nc = nc + 1;
placas{nc} = Set(handles.lPlacas, 'String');

% hObject    handle to lPlacas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lPlacas contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lPlacas


% --- Executes during object creation, after setting all properties.
function lPlacas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lPlacas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in lRutas.
function lRutas_Callback(hObject, eventdata, handles)
% hObject    handle to lRutas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lRutas contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lRutas


% --- Executes during object creation, after setting all properties.
function lRutas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lRutas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in lClases.
function lClases_Callback(hObject, eventdata, handles)
% hObject    handle to lClases (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lClases contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lClases


% --- Executes during object creation, after setting all properties.
function lClases_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lClases (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in lFecha.
function lFecha_Callback(hObject, eventdata, handles)

global nc
global fecha

nc = nc + 1;
fecha{nc} = Set(handles.lFecha, 'String');



% hObject    handle to lFecha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lFecha contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lFecha


% --- Executes during object creation, after setting all properties.
function lFecha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lFecha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in lMarcas.
function lMarcas_Callback(hObject, eventdata, handles)
% hObject    handle to lMarcas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lMarcas contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lMarcas


% --- Executes during object creation, after setting all properties.
function lMarcas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lMarcas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
