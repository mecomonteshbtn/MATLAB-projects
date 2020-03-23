function varargout = INTERFAZ(varargin)

% INTERFAZ MATLAB code for INTERFAZ.fig
%      INTERFAZ, by itself, creates a new INTERFAZ or raises the existing
%      singleton*.
%
%      H = INTERFAZ returns the handle to a new INTERFAZ or the handle to
%      the existing singleton*.
%
%      INTERFAZ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFAZ.M with the given input arguments.
%
%      INTERFAZ('Property','Value',...) creates a new INTERFAZ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before INTERFAZ_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to INTERFAZ_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help INTERFAZ

% Last Modified by GUIDE v2.5 13-Nov-2013 18:40:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @INTERFAZ_OpeningFcn, ...
                   'gui_OutputFcn',  @INTERFAZ_OutputFcn, ...
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


% --- Executes just before INTERFAZ is made visible.
function INTERFAZ_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to INTERFAZ (see VARARGIN)

% Choose default command line output for INTERFAZ
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes INTERFAZ wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = INTERFAZ_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
f=inline('cos(x)+sin(x)');
fplot(f,[0,10])

% --- Executes on button press in DERIVADAS.
function DERIVADAS_Callback(hObject, eventdata, handles)
% hObject    handle to DERIVADAS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
derivada


% --- Executes on button press in INTEGRACION.
function INTEGRACION_Callback(hObject, eventdata, handles)
% hObject    handle to INTEGRACION (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 s=menu('ELIJA EL METODO','TRAPECIOS','SIMPSON 1/3','SIMPSON 3/8');
    switch s,
        case 1
            trapecio
        case 2
            simpson13
        case 3 
            simpson38
    end


% --- Executes on button press in RAICES.
function RAICES_Callback(hObject, eventdata, handles)
% hObject    handle to RAICES (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=menu('ELIJA EL METODO','BISECCION','REGLA FALSA','SECANTE','NEWTON','BUSQUEDAS','RAICES MULTIPLES','PUNTO FIJO');
    switch s,
        case 1
            biseccion2
        case 2
            reglafalsa2
        case 3
            secante2
        case 4
            newton2
        case 5
            busquedaincremental2
        case 6
            raicesmultiples2
        case 7 
            puntofijo2
    end


% --- Executes on button press in MATRICES.
function MATRICES_Callback(hObject, eventdata, handles)
% hObject    handle to MATRICES (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=menu('ELIJA EL METODO','GAUSS-SEIDEL','JACOBI','SOR','CHOLESKY','CROUT','DOOLITTLE','ELIMINACION GAUSS','PIVOTEO PARCIAL','PIVOTEO TOTAL');
        switch s,
            case 1
                GSeidel
            case 2
                jacobi
            case 3
                SOR
            case 4
                cholesky
            case 5
                Crout
            case 6
                doolittle
            case 7 
                eliminacion_gaussiana
            case 8
                pivoteo_parcial 
            case 9
                Pivoteo_total
        end


% --- Executes on button press in INTERPOLACION.
function INTERPOLACION_Callback(hObject, eventdata, handles)
% hObject    handle to INTERPOLACION (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 s=menu('ELIJA EL METODO','POLINOMIO DE LAGRANGE','POLINOMIO DE NEWTON','NEVILLE');
    switch s,
        case 1
            lagrangepoly
        case 2
            newpoly
        case 3 
            neville
    end


% --- Executes on button press in ED.
function ED_Callback(hObject, eventdata, handles)
% hObject    handle to ED (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=menu('ELIJA EL METODO','EULER','EULER MODIFICADO','RK4');
        switch s,
            case 1
                euler
            case 2
                euler2
            case 3
                rk4
        end


% --- Executes on button press in SALIR.
function SALIR_Callback(hObject, eventdata, handles)
% hObject    handle to SALIR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;