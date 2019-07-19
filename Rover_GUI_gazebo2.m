function varargout = Rover_GUI_gazebo2(varargin)
% ROVER_GUI_GAZEBO2 MATLAB code for Rover_GUI_gazebo2.fig
%      ROVER_GUI_GAZEBO2, by itself, creates a new ROVER_GUI_GAZEBO2 or raises the existing
%      singleton*.
%
%      H = ROVER_GUI_GAZEBO2 returns the handle to a new ROVER_GUI_GAZEBO2 or the handle to
%      the existing singleton*.
%
%      ROVER_GUI_GAZEBO2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROVER_GUI_GAZEBO2.M with the given input arguments.
%
%      ROVER_GUI_GAZEBO2('Property','Value',...) creates a new ROVER_GUI_GAZEBO2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Rover_GUI_gazebo2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Rover_GUI_gazebo2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Rover_GUI_gazebo2

% Last Modified by GUIDE v2.5 19-Jul-2019 12:10:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Rover_GUI_gazebo2_OpeningFcn, ...
                   'gui_OutputFcn',  @Rover_GUI_gazebo2_OutputFcn, ...
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


% --- Executes just before Rover_GUI_gazebo2 is made visible.
function Rover_GUI_gazebo2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Rover_GUI_gazebo2 (see VARARGIN)

% Choose default command line output for Rover_GUI_gazebo2
handles.output = hObject;
handles.topiclist.String = {};
handles.nodelist.String = {};
handles.table_pub.Data = {};
handles.table_sub.Data = {};
handles.table_ser.Data = {};
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Rover_GUI_gazebo2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Rover_GUI_gazebo2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in movefront.
function movefront_Callback(hObject, eventdata, handles)
% hObject    handle to movefront (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
velocity = 0.2;
velmsg = rosmessage(handles.robot);
velmsg.Linear.X = velocity;
send(handles.robot,velmsg);
%img = receive(handles.imsub);
%imshow(readImage(receive(handles.imsub)))

%handles.speed.String = num2str(str2double(handles.speed.String) +1);
% velocity = 1;
% velmsg = rosmessage(handles.robot);
% velmsg.Linear.X = velocity;
% send(handles.robot,velmsg);
% --- Executes on button press in moveright.
function moveright_Callback(hObject, eventdata, handles)
% hObject    handle to moveright (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% handles.angle.String = num2str(str2double(handles.angle.String) + 1)
turn_angle = -0.2;
velmsg = rosmessage(handles.robot);
velmsg.Angular.Z = turn_angle;
send(handles.robot,velmsg);
%img = receive(handles.imsub);
%imshow(readImage(receive(handles.imsub)))
% --- Executes on button press in moveback.
function moveback_Callback(hObject, eventdata, handles)
% hObject    handle to moveback (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%handles.speed.String = num2str(str2double(handles.speed.String) - 1);

velocity = -0.2;
velmsg = rosmessage(handles.robot);
velmsg.Linear.X = velocity;
send(handles.robot,velmsg);
%img = receive(handles.imsub);
%imshow(readImage(receive(handles.imsub)))
% --- Executes on button press in moveleft.
function moveleft_Callback(hObject, eventdata, handles)
% hObject    handle to moveleft (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.angle.String = num2str(str2double(handles.angle.String) - 1)
turn_angle = 0.2;
velmsg = rosmessage(handles.robot);
velmsg.Angular.Z = turn_angle;
send(handles.robot,velmsg);
%img = receive(handles.imsub);
%imshow(readImage(receive(handles.imsub)))

function speed_Callback(hObject, eventdata, handles)
% hObject    handle to speed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of speed as text
%        str2double(get(hObject,'String')) returns contents of speed as a double


% --- Executes during object creation, after setting all properties.
function speed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to speed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function angle_Callback(hObject, eventdata, handles)
% hObject    handle to angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of angle as text
%        str2double(get(hObject,'String')) returns contents of angle as a double


% --- Executes during object creation, after setting all properties.
function angle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in stop.
function stop_Callback(hObject, eventdata, handles)
% hObject    handle to stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
velmsg = rosmessage(handles.robot);
velmsg.Linear.X = 0;
velmsg.Angular.Z = 0;
send(handles.robot,velmsg);


% function pb_kpf(varargin)
% if varargin{1,2}.Character == 'p'
%     pb_call(varargin{:})
% end

% --- Executes on key press with focus on figure1 or any of its controls.
function figure1_WindowKeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
switch eventdata.Key
    case 'i'
        movefront_Callback(handles.movefront, [], handles);
        % handles.speed.String = num2str(str2double(handles.speed.String) + 1);  
        
    case 'm'
        moveback_Callback(handles.moveback, [], handles);
        % handles.speed.String = num2str(str2double(handles.speed.String) - 1);
    
    case 'u'
        moveleft_Callback(handles.moveleft, [], handles);
    
    case 'o'
        moveright_Callback(handles.moveleft, [], handles);
    
    case 'space'
        stop_Callback(handles.stop, [], handles);

end

   
% --- Executes on button press in ROSstart.
function ROSstart_Callback(hObject, eventdata, handles)
% hObject    handle to ROSstart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rosinit(['http://' num2str(handles.IP.String) ':11311'])

% --- Executes on button press in ROSend.
function ROSend_Callback(hObject, eventdata, handles)
% hObject    handle to ROSend (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rosshutdown
handles.nodelist.String = {};
handles.topiclist.String = {};
handles.table_pub.Data = {};
handles.table_sub.Data = {};
handles.table_ser.Data = {};

% --- Executes on button press in publish.
function publish_Callback(hObject, eventdata, handles)
% hObject    handle to publish (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.robot = rospublisher(handles.tplist{handles.topiclist.Value})
guidata(hObject, handles);
handles.nodeinfo = rosnode('info',handles.ndlt{handles.nodelist.Value});
handles.table_pub.Data = struct2cell(handles.nodeinfo.Publications)';

% --- Executes on button press in subscribe.
function subscribe_Callback(hObject, eventdata, handles)
% hObject    handle to subscribe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.imsub = rossubscriber(handles.tplist{handles.topiclist.Value});
guidata(hObject, handles);
handles.nodeinfo = rosnode('info',handles.ndlt{handles.nodelist.Value});
handles.table_sub.Data = struct2cell(handles.nodeinfo.Subscriptions)';
%handles.img = receive(handles.imsub);
%imshow(readImage(handles.img))

function IP_Callback(hObject, eventdata, handles)
% hObject    handle to IP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of IP as text
%        str2double(get(hObject,'String')) returns contents of IP as a double


% --- Executes during object creation, after setting all properties.
function IP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to IP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in node.
function node_Callback(hObject, eventdata, handles)
% hObject    handle to node (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.ndlt = rosnode('list');
guidata(hObject, handles);
handles.nodelist.String = handles.ndlt;
handles.nodeinfo = rosnode('info',handles.ndlt{handles.nodelist.Value});
handles.table_pub.Data = struct2cell(handles.nodeinfo.Publications)';
handles.table_sub.Data = struct2cell(handles.nodeinfo.Subscriptions)';
if isempty(handles.nodeinfo.Services);
    handles.table_ser.Data = {};
else
    handles.table_ser.Data = struct2cell(handles.nodeinfo.Services)';
end
% handles.publ.String = handles.ndlt;


% --- Executes on button press in topic.
function topic_Callback(hObject, eventdata, handles)
% hObject    handle to topic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.tplist = rostopic('list');
%handles.nodeinfo = rosnode('info',handles.tplist(3))
guidata(hObject, handles);
handles.topiclist.String = handles.tplist;

% --- Executes on selection change in topiclist.
function topiclist_Callback(hObject, eventdata, handles)
% hObject    handle to topiclist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns topiclist contents as cell array
%        contents{get(hObject,'Value')} returns selected item from topiclist


% --- Executes during object creation, after setting all properties.
function topiclist_CreateFcn(hObject, eventdata, handles)
% hObject    handle to topiclist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in nodelist.
function nodelist_Callback(hObject, eventdata, handles)
% hObject    handle to nodelist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns nodelist contents as cell array
%        contents{get(hObject,'Value')} returns selected item from nodelist
handles.nodeinfo = rosnode('info',handles.ndlt{handles.nodelist.Value});
handles.table_pub.Data = struct2cell(handles.nodeinfo.Publications)';
handles.table_sub.Data = struct2cell(handles.nodeinfo.Subscriptions)';
if isempty(handles.nodeinfo.Services);
    handles.table_ser.Data = {};
else
    handles.table_ser.Data = struct2cell(handles.nodeinfo.Services)';
end

% --- Executes during object creation, after setting all properties.
function nodelist_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nodelist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in clear1.
function clear1_Callback(hObject, eventdata, handles)
% hObject    handle to clear1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.nodelist.String = {};
handles.table_pub.Data = {};
handles.table_sub.Data = {};
handles.table_ser.Data = {};


% --- Executes on button press in clear2.
function clear2_Callback(hObject, eventdata, handles)
% hObject    handle to clear2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.topiclist.String = {};


% --- Executes on selection change in publ.
function publ_Callback(hObject, eventdata, handles)
% hObject    handle to publ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns publ contents as cell array
%        contents{get(hObject,'Value')} returns selected item from publ

%struct2cell(nodeinfo.Publications);


% --- Executes during object creation, after setting all properties.
function publ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to publ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected cell(s) is changed in table_sub.
function table_sub_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to table_sub (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)
%a = eventdata.Indices;
