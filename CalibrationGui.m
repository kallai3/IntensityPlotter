function varargout = CalibrationGui(varargin)
% CALIBRATIONGUI MATLAB code for CalibrationGui.fig
%      CALIBRATIONGUI, by itself, creates a new CALIBRATIONGUI or raises the existing
%      singleton*.
%
%      H = CALIBRATIONGUI returns the handle to a new CALIBRATIONGUI or the handle to
%      the existing singleton*.
%
%      CALIBRATIONGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALIBRATIONGUI.M with the given input arguments.
%
%      CALIBRATIONGUI('Property','Value',...) creates a new CALIBRATIONGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CalibrationGui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CalibrationGui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CalibrationGui

% Last Modified by GUIDE v2.5 03-Jul-2018 14:19:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CalibrationGui_OpeningFcn, ...
                   'gui_OutputFcn',  @CalibrationGui_OutputFcn, ...
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


% --- Executes just before CalibrationGui is made visible.
function CalibrationGui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CalibrationGui (see VARARGIN)

% Choose default command line output for CalibrationGui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CalibrationGui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CalibrationGui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Start.
function Start_Callback(hObject, eventdata, handles)
% pathname = getappdata(CalibrationGui,'Data');
% disp(pathname);
% M = importdata(pathname,' ',1);
setappdata(GuiforIntensity3,'Yup', 0);
degree = str2double(get(handles.degree, 'String'));
path = getappdata(CalibrationGui,'name');
name = getappdata(CalibrationGui,'path');
xgreen = getappdata(CalibrationGui,'xgreen');
ygreen = getappdata(CalibrationGui,'ygreen');
timegreen = getappdata(CalibrationGui,'timegreen');
xred = getappdata(CalibrationGui,'xred');
yred = getappdata(CalibrationGui,'yred');
timered = getappdata(CalibrationGui,'timered');

disp(path);
disp(name);
M = importdata([(name),(path)],' ',1);
data = M.data;


for point=1:size(data,1)
    x(point) = data(point,1);
    y(point) = data(point,2);
    time(point) = data(point,3);
end
axes(handles.axes5);
scatter(time,y)
hold on 
fit5 = polyfit(time,y,degree);
x5 =time;
y5 = polyval(fit5,time);
plot(x5, y5);
hold off
y5 = transpose(y5);
handles.yfit = fit5;

axes(handles.axes6);
scatter(time,x)
hold on 
fit6 = polyfit(time,x,degree);
x6 = linspace(0, 2000);
y6 = polyval(fit6,x6);
plot(x6, y6);
hold off
y6 = transpose(y6); 
handles.xfit = fit6;

axes(handles.axes1);
scatter(timegreen, xgreen, 'g', 'filled');
hold on
fit = polyfit(timegreen,xgreen,degree);
x1 = linspace(0, 2000);
y1 = polyval(fit,x1);
plot(x1, y1);
hold off

axes(handles.axes2)
fit2 = polyfit(timegreen,ygreen, degree);
x2 = linspace(0, 2000);
y2 = polyval(fit2,x2);
plot(x2, y2);
hold on
scatter(timegreen, ygreen, 'g','filled');
hold off

axes(handles.axes3)
fit3 = polyfit(timered,xred, degree);
x3 = linspace(0, 2000);
y3 = polyval(fit3,x3);
plot(x3, y3);
hold on
scatter(timered, xred, 'r', 'filled');
hold off

axes(handles.axes4)
fit4 = polyfit(timered,yred, degree);
x4 = linspace(0, 2000);
y4 = polyval(fit4,x4);
plot(x4, y4);
hold on
scatter(timered, yred, 'r', 'filled');
hold off
guidata(hObject, handles);
% hObject    handle to Start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function degree_Callback(hObject, eventdata, handles)
% hObject    handle to degree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of degree as text
%        str2double(get(hObject,'String')) returns contents of degree as a double


% --- Executes during object creation, after setting all properties.
function degree_CreateFcn(hObject, eventdata, handles)
% hObject    handle to degree (see GCBO)
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
  setappdata(GuiforIntensity3,'xfit',handles.xfit);
  setappdata(GuiforIntensity3,'yfit',handles.yfit);
  setappdata(GuiforIntensity3,'Yup', 1)
  GuiforIntensity3
