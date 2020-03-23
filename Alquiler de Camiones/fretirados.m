function varargout = fretirados(varargin)
% FRETIRADOS M-file for fretirados.fig
%      FRETIRADOS, by itself, creates a new FRETIRADOS or raises the existing
%      singleton*.
%
%      H = FRETIRADOS returns the handle to a new FRETIRADOS or the handle to
%      the existing singleton*.
%
%      FRETIRADOS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FRETIRADOS.M with the given input arguments.
%
%      FRETIRADOS('Property','Value',...) creates a new FRETIRADOS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fretirados_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fretirados_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fretirados

% Last Modified by GUIDE v2.5 16-May-2013 17:05:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fretirados_OpeningFcn, ...
                   'gui_OutputFcn',  @fretirados_OutputFcn, ...
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


% --- Executes just before fretirados is made visible.
function fretirados_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fretirados (see VARARGIN)

% Choose default command line output for fretirados

global placa
global rutasr
global kilom 
global fechar
global ultre


set(handles.lplacar, 'String', placa);
set(handles.lrutar, 'String', rutasr);
set(handles.lkilo, 'String', kilom);
set(handles.lultima, 'String', ultre);
set(handles.lfechar, 'String', fechar);


handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fretirados wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fretirados_OutputFcn(hObject, eventdata, handles) 
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
fmatriculados
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in lplacar.
function lplacar_Callback(hObject, eventdata, handles)

% hObject    handle to lplacar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hints: contents = cellstr(get(hObject,'String')) returns lplacar contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lplacar


% --- Executes during object creation, after setting all properties.
function lplacar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lplacar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in lkilo.
function lkilo_Callback(hObject, eventdata, handles)
% hObject    handle to lkilo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lkilo contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lkilo


% --- Executes during object creation, after setting all properties.
function lkilo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lkilo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in lultima.
function lultima_Callback(hObject, eventdata, handles)
% hObject    handle to lultima (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lultima contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lultima


% --- Executes during object creation, after setting all properties.
function lultima_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lultima (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in lfechar.
function lfechar_Callback(hObject, eventdata, handles)
% hObject    handle to lfechar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lfechar contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lfechar


% --- Executes during object creation, after setting all properties.
function lfechar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lfechar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in lrutar.
function lrutar_Callback(hObject, eventdata, handles)
% hObject    handle to lrutar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lrutar contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lrutar


% --- Executes during object creation, after setting all properties.
function lrutar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lrutar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
