function varargout = fmatricular(varargin)
% FMATRICULAR MATLAB code for fmatricular.fig
%      FMATRICULAR, by itself, creates a new FMATRICULAR or raises the existing
%      singleton*.
%
%      H = FMATRICULAR returns the handle to a new FMATRICULAR or the handle to
%      the existing singleton*.
%
%      FMATRICULAR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FMATRICULAR.M with the given input arguments.
%
%      FMATRICULAR('Property','Value',...) creates a new FMATRICULAR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fmatricular_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fmatricular_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fmatricular

% Last Modified by GUIDE v2.5 06-May-2013 10:49:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fmatricular_OpeningFcn, ...
                   'gui_OutputFcn',  @fmatricular_OutputFcn, ...
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


% --- Executes just before fmatricular is made visible.
function fmatricular_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fmatricular (see VARARGIN)

% Choose default command line output for fmatricular
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fmatricular wait for user response (see UIRESUME)
% uiwait(handles.fmatricular);


% --- Outputs from this function are returned to the command line.
function varargout = fmatricular_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in bMatricular.
function bMatricular_Callback(hObject, eventdata, handles)

global nc
global placas
global rutas
global clases
global fecha
global marcas


nc = nc + 1;
placas{nc} = get(handles.M1, 'String');
rutas{nc} = get(handles.M3, 'String');
clases{nc} = get(handles.M5, 'String');
fecha{nc} = get(handles.M2, 'String');
marcas{nc} = get(handles.M4, 'String');
close
fmatriculados



% hObject    handle to bMatricular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function M1_Callback(hObject, eventdata, handles)
% hObject    handle to M1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M1 as text
%        str2double(get(hObject,'String')) returns contents of M1 as a double


% --- Executes during object creation, after setting all properties.
function M1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function M2_Callback(hObject, eventdata, handles)
% hObject    handle to M2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M2 as text
%        str2double(get(hObject,'String')) returns contents of M2 as a double


% --- Executes during object creation, after setting all properties.
function M2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function M3_Callback(hObject, eventdata, handles)
% hObject    handle to M3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M3 as text
%        str2double(get(hObject,'String')) returns contents of M3 as a double


% --- Executes during object creation, after setting all properties.
function M3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function M4_Callback(hObject, eventdata, handles)
% hObject    handle to M4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M4 as text
%        str2double(get(hObject,'String')) returns contents of M4 as a double


% --- Executes during object creation, after setting all properties.
function M4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function M5_Callback(hObject, eventdata, handles)
% hObject    handle to M5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M5 as text
%        str2double(get(hObject,'String')) returns contents of M5 as a double


% --- Executes during object creation, after setting all properties.
function M5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
