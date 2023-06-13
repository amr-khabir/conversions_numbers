function varargout = g3(varargin)
% G3 MATLAB code for g3.fig
%      G3, by itself, creates a new G3 or raises the existing
%      singleton*.
%
%      H = G3 returns the handle to a new G3 or the handle to
%      the existing singleton*.
%
%      G3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in G3.M with the given input arguments.
%
%      G3('Property','Value',...) creates a new G3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before g3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to g3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help g3

% Last Modified by GUIDE v2.5 28-Jan-2021 21:15:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @g3_OpeningFcn, ...
                   'gui_OutputFcn',  @g3_OutputFcn, ...
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

function radio_off(handles) 
set(handles.c1,'value',0)
set(handles.c2,'value',0)
set(handles.c3,'value',0)
set(handles.c6,'value',0)



function pop_enable(handles)
set(handles.r1,'enable','on')
set(handles.r2,'enable','on')
set(handles.r3,'enable','on')
set(handles.r5,'enable','on')

% --- Executes just before g3 is made visible.
function g3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to g3 (see VARARGIN)

% Choose default command line output for g3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes g3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);

set(handles.t2,'visible','off')

% --- Outputs from this function are returned to the command line.
function varargout = g3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

radio_off(handles) 
pop_enable(handles)
ste(handles.r3,'enable', 'off')
ste(handles.r1,'enable', 'off')
ste(handles.r2,'enable', 'off')
ste(handles.r4,'enable', 'off')
ste(handles.r5,'enable', 'off')

function t1_Callback(hObject, eventdata, handles)
% hObject    handle to t1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t1 as text
%        str2double(get(hObject,'String')) returns contents of t1 as a double


% --- Executes during object creation, after setting all properties.
function t1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in r1.
function r1_Callback(hObject, eventdata, handles)
% hObject    handle to r1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of r1
 
radio_off(handles) 
pop_enable(handles)
set(handles.c1 ,'value',1)
ste(handles.r1,'enable', 'on')
ste(handles.r2,'enable', 'off')
ste(handles.r3,'enable', 'off')
ste(handles.r5,'enable', 'off')

% --- Executes on button press in r2.
function r2_Callback(hObject, eventdata, handles)
% hObject    handle to r2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of r2

radio_off(handles) 
pop_enable(handles)
set(handles.c2 ,'value',1)
ste(handles.r2,'enable', 'on')
ste(handles.r1,'enable', 'off')
ste(handles.r3,'enable', 'off')
ste(handles.r5,'enable', 'off')


% --- Executes on selection change in c1.
function c1_Callback(hObject, eventdata, handles)
% hObject    handle to c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns c1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from c1
x=str2double(get (handles.t1,'string'));
h=get(hObject,'value')

switch h
    case 1
        set(handles.t2, 'visible','off')
    case 2
        y= x*1000;
    case 3
        y=x*100;
    case 4
        y= x/3.04;
end
if h~= 1
    set(handles.t2,'visible', 'on','string',y)
end

% --- Executes during object creation, after setting all properties.
function c1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in c2.
function c2_Callback(hObject, eventdata, handles)
% hObject    handle to c2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns c2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from c2

x=str2double(get (handles.t1,'string'));
h=get(hObject,'value')

switch h
    case 1
        set(handles.t2, 'visible','off')
    case 2
        y= x*1000;
    case 3
        y=x/1000;
    case 4
        y= x/0.5;
end
if h~= 1
    set(handles.t2,'visible', 'on','string',y)
end
% --- Executes during object creation, after setting all properties.
function c2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t2_Callback(hObject, eventdata, handles)
% hObject    handle to t2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t2 as text
%        str2double(get(hObject,'String')) returns contents of t2 as a double


% --- Executes during object creation, after setting all properties.
function t2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in r3.
function r3_Callback(hObject, eventdata, handles)
% hObject    handle to r3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of r3

radio_off(handles) 
pop_enable(handles)
set(handles.c3 ,'value',1)
ste(handles.r3,'enable', 'on')
ste(handles.r1,'enable', 'off')
ste(handles.r2,'enable', 'off')
ste(handles.r5,'enable', 'off')


% --- Executes on selection change in c3.
function c3_Callback(hObject, eventdata, handles)
% hObject    handle to c3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns c3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from c3

x=str2double(get (handles.t1,'string'));
h=get(hObject,'value')

switch h
    case 1
        set(handles.t2, 'visible','off')
    case 2
        y=x/180;
        y=x*pi;
    case 3
        y=(pi/x)*(180/pi);

end
if h~= 1
    set(handles.t2,'visible', 'on','string',y)
end

% --- Executes during object creation, after setting all properties.
function c3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in c4.

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in c5.


function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in r5.


% --- Executes during object creation, after setting all properties.
function text2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in r5.
function r5_Callback(hObject, eventdata, handles)
% hObject    handle to r5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of r5
radio_off(handles) 
pop_enable(handles)
set(handles.c6 ,'value',1)
ste(handles.r3,'enable', 'off')
ste(handles.r1,'enable', 'off')
ste(handles.r2,'enable', 'off')
ste(handles.r5,'enable', 'on')


% --- Executes on selection change in c6.
function c6_Callback(hObject, eventdata, handles)
% hObject    handle to c6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns c6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from c6
x=str2double(get (handles.t1,'string'));
h=get(hObject,'value')

switch h
    case 1
        set(handles.t2, 'visible','off')
    case 2
           y=dec2bin(x);  
    case 3
        y=dec2hex(x);

end
if h~= 1
    set(handles.t2,'visible', 'on','string',y)
end

% --- Executes during object creation, after setting all properties.
function c6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
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
