function varargout = WaypointPUB(varargin)
% WAYPOINTPUB MATLAB code for WaypointPUB.fig
%      WAYPOINTPUB, by itself, creates a new WAYPOINTPUB or raises the existing
%      singleton*.
%
%      H = WAYPOINTPUB returns the handle to a new WAYPOINTPUB or the handle to
%      the existing singleton*.
%
%      WAYPOINTPUB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WAYPOINTPUB.M with the given input arguments.
%
%      WAYPOINTPUB('Property','Value',...) creates a new WAYPOINTPUB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before WaypointPUB_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to WaypointPUB_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help WaypointPUB

% Last Modified by GUIDE v2.5 08-Jul-2019 01:19:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @WaypointPUB_OpeningFcn, ...
                   'gui_OutputFcn',  @WaypointPUB_OutputFcn, ...
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


% --- Executes just before WaypointPUB is made visible.
function WaypointPUB_OpeningFcn(hObject, eventdata, handles, varargin)

% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to WaypointPUB (see VARARGIN)

% Flag=False
% Create the data to plot.
% flag=False;
% handles.ip= ip.address
% handles.membrane=membrane;
% [x,y] = meshgrid(-8:.5:8);
% handles.Flag=Bool Flag
% r = sqrt(x.^2+y.^2) + eps;
% sinc = sin(r)./r;
% handles.sinc = sinc;
% % Set the current data value.
% handles.current_data = handles.peaks;
% surf(handles.current_data)


% Choose default command line output for WaypointPUB
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes WaypointPUB wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = WaypointPUB_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structureguide
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ip_address=get(handles.ip_address,'String')
rosinit(ip_address)




function ip_address_Callback(hObject, eventdata, handles)
% hObject    handle to ip_address (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ip_address as text
%        str2double(get(hObject,'String')) returns contents of ip_address as a double
ip_address= get(hObject,'String');
ip_address

% --- Executes during object creation, after setting all properties.
function ip_address_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ip_address (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in stop.
function stop_Callback(hObject, eventdata, handles)
% hObject    handle to stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% if flag
%     flag=False
% else
%     flag=True
% end




function xwaypoint_Callback(hObject, eventdata, handles)
% hObject    handle to xwaypoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xwaypoint as text
%        str2double(get(hObject,'String')) returns contents of xwaypoint as a double
x= get(hObject,'String')
x

% --- Executes during object creation, after setting all properties.
function xwaypoint_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xwaypoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ywaypoint_Callback(hObject, eventdata, handles)
% hObject    handle to ywaypoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ywaypoint as text
%        str2double(get(hObject,'String')) returns contents of ywaypoint as a double
y= get(hObject,'String')
y

% --- Executes during object creation, after setting all properties.
function ywaypoint_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ywaypoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles) 
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rosshutdown;


% --- Executes on button press in setwaypoint.
function setwaypoint_Callback(hObject, eventdata, handles)
% hObject    handle to setwaypoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=str2num(get(handles.xwaypoint,'String'));
y=str2num(get(handles.ywaypoint,'String'));
robot = rospublisher('/turtle1/cmd_vel');
velmsg = rosmessage(robot);

velmsg.Linear.X=x
velmsg.Linear.Y=y
Flag=get(handles.repeat,'Value')
tic;
while toc < 5
    send(robot,velmsg)
    Flag=get(handles.repeat,'Value')
end




% --- Executes on button press in repeat.
function Flag=repeat_Callback(hObject, eventdata, handles)
% hObject    handle to repeat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of repeat
Flag=  get(hObject,'Value')
% return Flag


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in UpdatePosition.
function UpdatePosition_Callback(hObject, eventdata, handles)

% hObject    handle to UpdatePosition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% turtlepose= rossubscriber('/turtle1/pose');
% turtlepose
% scan = receive(turtlepose)
% scan
% X_in=scan.Linear.X
% Y_in=scan.Linear.Y
% figure
% plot(Y_in,X_in);
% while True
%   scan = receive(turtlepose,3);
%   X=scan.Linear.X
%   Y=scan.Linear.Y
%   plot(Y,X);
% end
figure
plot(5,2)
plot(7,3)




% --- Executes on key press with focus on setwaypoint and none of its controls.
function setwaypoint_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to setwaypoint (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
