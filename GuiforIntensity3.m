function varargout = GuiforIntensity3(varargin)
% GUIFORINTENSITY3 MATLAB code for GuiforIntensity3.fig
%      GUIFORINTENSITY3, by itself, creates a new GUIFORINTENSITY3 or raises the existing
%      singleton*.
%
%      H = GUIFORINTENSITY3 returns the handle to a new GUIFORINTENSITY3 or the handle to
%      the existing singleton*.
%
%      GUIFORINTENSITY3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIFORINTENSITY3.M with the given input arguments.
%
%      GUIFORINTENSITY3('Property','Value',...) creates a new GUIFORINTENSITY3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GuiforIntensity3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GuiforIntensity3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GuiforIntensity3

% Last Modified by GUIDE v2.5 24-Jul-2018 09:38:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GuiforIntensity3_OpeningFcn, ...
                   'gui_OutputFcn',  @GuiforIntensity3_OutputFcn, ...
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


% --- Executes just before GuiforIntensity3 is made visible.
function GuiforIntensity3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GuiforIntensity3 (see VARARGIN)
handles.output = hObject;
handles.C = 0;
handles.Iname = 0;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GuiforIntensity3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GuiforIntensity3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
handles.ImportantData = 0;
varargout{1} = handles.output;


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Skip_Callback(hObject, eventdata, handles)

% hObject    handle to Skip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Skip as text
%        str2double(get(hObject,'String')) returns contents of Skip as a double




% --- Executes during object creation, after setting all properties.
function Skip_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Skip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function cutoff_Callback(hObject, eventdata, handles)
% hObject    handle to cutoff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cutoff as text
%        str2double(get(hObject,'String')) returns contents of cutoff as a double
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function cutoff_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cutoff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function PolarizationFrequency_Callback(hObject, eventdata, handles)
% hObject    handle to PolarizationFrequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PolarizationFrequency as text
%        str2double(get(hObject,'String')) returns contents of PolarizationFrequency as a double

% --- Executes during object creation, after setting all properties.





function PolarizationFrequency_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PolarizationFrequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes during object creation, after setting all properties.



function CameraFrequency_Callback(hObject, eventdata, handles)
% hObject    handle to CameraFrequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CameraFrequency as text
%        str2double(get(hObject,'String')) returns contents of CameraFrequency as a double


% --- Executes during object creation, after setting all properties.
function CameraFrequency_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CameraFrequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FramesinAq_Callback(hObject, eventdata, handles)
% hObject    handle to FramesinAq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FramesinAq as text
%        str2double(get(hObject,'String')) returns contents of FramesinAq as a double


% --- Executes during object creation, after setting all properties.
function FramesinAq_CreateFcn(hObject, eventdata, handles)

% hObject    handle to FramesinAq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Outputs from this function are returned to the command line.
function varargout = TestPush2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1)
cla(handles.axes2)
cla(handles.axes5)
name = handles.name;
path = handles.path;
M = importdata([path,name],' ',1);
totalframes = str2num(get(handles.FramesinAq, 'String'));
data = M.data;
xfit = 0;
yfit = 0;
frameold = 0;
cutoff = str2double(get(handles.cutoff, 'String'));;

if (getappdata(GuiforIntensity3,'Yup'))
    xfit = getappdata(GuiforIntensity3,'xfit');
    xoffset = polyval(xfit, data(:,3));
    data(:,1) = data(:,1)-xoffset;
    yfit = getappdata(GuiforIntensity3,'yfit');
    yoffset = polyval(yfit, data(:,3));
    data(:,2) = data(:,2)-yoffset;
    %yfit = getappdata(GuiforIntensity3,'yfit');
    
else
end

freqpol = str2num(get(handles.PolarizationFrequency, 'String'));
freqcam = str2num(get(handles.CameraFrequency, 'String'));

skip = str2num(get(handles.Skip, 'String'));
if get(handles.radiobright, 'Value') == 1
    bright = 1;
elseif get(handles.radiodim, 'Value') == 1
    bright = 2;
else
    bright = 3;
end

xpixel = str2double(get(handles.xpixel, 'String'));
ypixel = str2double(get(handles.ypixel, 'String'));
timearrayyred(1) = 0;
timearrayxred(1) = 0;
timearrayygreen(1) = 0;
timearrayxgreen(1) = 0;

% USE THIS: 'U:\Documents\2 Summer 2018\2_1_MMStack_Pos0_ome.txt'

% data(x,y,t(frame),i)
%%
% find min and max points in the x and y directions

xmax = max(data(:,1));
ymax = max(data(:,2));
xmin = min(data(:,1));
ymin = min(data(:,2));

pixel = str2num(get(handles.pixel, 'String')); 
%pixel = 10;  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     CHANGE THIS LATER
sizex = round((xmax - xmin)/pixel);  %range per pixel
sizey = round((ymax - ymin)/pixel);

z = zeros(sizex, sizey);
w = zeros(sizex, sizey);
r = zeros(sizex, sizey);
g = zeros(sizex, sizey);
xarraygreen = zeros(1,size(data, 1))+mean(data(:,1));
yarraygreen = zeros(1,size(data, 1))+mean(data(:,2));
timegreen = zeros(1,size(data, 1));
xarrayred = zeros(1,size(data, 1))+mean(data(:,1));
yarrayred = zeros(1,size(data, 1))+mean(data(:,2));
timered = zeros(1,size(data, 1));
x = 1:sizex; % xmin:xmax;
i = 1;   % i = 0;
j = ymin;
y = ones(1, sizex); %*j;
k = -1;   % k = 0;
m = 1;   % m = 0;


for i = 1:(sizey - 1)  % i < (sizey - 2)
    arrayxtemp = 1:sizex;
    x = horzcat(x,arrayxtemp);
end

      
for j = 1:(sizey-1) %ymax  % j < ymax
    ytemp = ones(1, sizex)*(j+1);
    y = horzcat(y, ytemp);
end

offset = str2num(get(handles.edit5, 'String')); % change when calibrated to scale brighter polarization
totalt = totalframes/freqcam;

numberofpol = 2*(totalt)*freqpol;
frameperpol = (freqcam/freqpol)/2;
%frameperpol = totalframes/(numberofpol);

capturedt = totalt - (skip/freqcam) - ((frameperpol-skip)/freqcam);
capturednumberofpol = 2*(capturedt)*freqpol;

if str2double(get(handles.override,'String')) > 0
   frameperpol = str2double(get(handles.override,'String'));
   numberofpol = totalframes/frameperpol;
   capturednumberofpol = round(numberofpol-1);
end
                                 %%datapts = round(length(data)/flip); %data points per polar segment
currpt = skip;
evenpol = capturednumberofpol-rem(capturednumberofpol,2);
timecounter = 1;
redcount = 0;
redintensity =0;
greencount = 0;
greenintensity =0;
radius = str2double(get(handles.radius, 'String'));
u = 0
while k < evenpol -2 %%number of points and/or num of voltage flipflops
    k = k + 1;
    m = 0;
    while data(currpt,3) < skip + frameperpol*k - 1   %% for m = 1:datapts %m = 1:frames %% number of points in polarization
      m = m + 1;
      if frameold == data(currpt,3);
          u = u+1;
          double(u)= data(currpt);
      end
      frameold = data(currpt,3);
      currpt = currpt+1;
      if m < 3 || abs(m-frameperpol) < 3
          continue
      end

    intensity = data(currpt,4);   %% from file
    pointx = data(currpt,1);      %% from file
    pointy = data(currpt,2);      %% from file
    xbin = round((pointx-xmin)/pixel);   %% round points to bin size
    ybin = round((pointy-ymin)/pixel);
    if xbin==0
        xbin=1;
    end
    if ybin ==0
        ybin =1;
    end

    if abs(xbin - xpixel) <= radius && abs(ybin - ypixel) <= radius
        
        if rem(k, 2) == 0
            if bright == 1 || bright == 3
                greencount = greencount+1;
                greenintensity = greenintensity + intensity;
                timearrayxgreen(timecounter) = data(currpt,3);
                timearrayygreen(timecounter) = intensity;
            else

                redcount = redcount+1;
                redintensity = redintensity + intensity;
                timearrayxred(timecounter) = data(currpt,3);
                timearrayyred(timecounter) = intensity;
            end
                
        else

            if bright == 1 || bright == 3
                redcount = redcount+1;
                redintensity = redintensity + intensity;
                timearrayxred(timecounter) = data(currpt,3);
                timearrayyred(timecounter) = intensity;
            else
                greencount = greencount+1;
                greenintensity = greenintensity + intensity;
                timearrayxgreen(timecounter) = data(currpt,3);
                timearrayygreen(timecounter) = intensity;
            end             
        end
        timecounter = timecounter+1;
    end
    
    
    newarray = zeros(sizex, sizey); 
    anotherarray = zeros(sizex, sizey); 
     
        if rem(k, 2) == 0
            if bright == 1
                intensity = intensity/offset;
                newarray(xbin, ybin) = intensity;
                z = z + newarray;

                anotherarray(xbin, ybin) = 1;
                g = g+ anotherarray;
                xarraygreen(currpt - (skip+1)) = pointx;
                yarraygreen(currpt - (skip+1)) = pointy;
                timegreen(currpt - (skip+1)) = data(currpt,3);
            elseif bright == 2
                newarray(xbin, ybin) = intensity;
                w = w + newarray;

                anotherarray(xbin, ybin) = 1;
                r = r + anotherarray;
                
                xarrayred(currpt - (skip+1)) = pointx;
                yarrayred(currpt- (skip+1)) = pointy;
                timered(currpt - (skip+1)) = data(currpt,3);
            else
                newarray(xbin, ybin) = intensity;
                z = z + newarray;

                anotherarray(xbin, ybin) = 1;
                g = g+ anotherarray;
                
                xarraygreen(currpt - (skip+1)) = pointx;
                yarraygreen(currpt - (skip+1)) = pointy;
                timegreen(currpt - (skip+1)) = data(currpt,3);
            end
                
        else
                %% add intensity to bin 2
                if bright == 1
                    newarray(xbin, ybin) = intensity;
                    w = w + newarray;
                    anotherarray(xbin, ybin) = 1;
                    r = r + anotherarray;
                    
                    xarrayred(currpt - (skip+1)) = pointx;
                    yarrayred(currpt - (skip+1)) = pointy;
                    timered(currpt - (skip+1)) = data(currpt,3);
                elseif bright == 2
                    intensity = intensity/offset;
                    newarray(xbin, ybin) = intensity;
                    z = z + newarray;
                    
                    anotherarray(xbin, ybin) = 1;
                    g = g + anotherarray;
                    
                    xarraygreen(currpt - (skip+1)) = pointx;
                    yarraygreen(currpt - (skip+1)) = pointy;
                    timegreen(currpt - (skip+1)) = data(currpt,3);
                    
                else
                    newarray(xbin, ybin) = intensity;
                    w = w + newarray;
                    
                    anotherarray(xbin, ybin) = 1;
                    r = r + anotherarray;
                    xarrayred(currpt - (skip+1)) = pointx;
                    yarrayred(currpt - (skip+1)) = pointy;
                    timered(currpt - (skip+1)) = data(currpt,3);
                end          
                
        end
        
    end

end
disp(u);


totalredcount = sum(sum(r));
totalgreencount= sum(sum(g));
totalgreeni = sum(sum(z));
totalredi = sum(sum(w));
sugscale = max(totalredi, totalgreeni) / min(totalredi, totalgreeni);


set(handles.allri, 'String', totalredi);
set(handles.allgi, 'String', totalgreeni);
set(handles.suggestedscale, 'String', sugscale);
set(handles.allavegreeni, 'String', totalgreeni/totalgreencount);
set(handles.allaveredi, 'String', totalredi/totalredcount);
aveintensitygreen = greenintensity/greencount;
aveintesitygred = redintensity/redcount;
set(handles.greenblink, 'String', greencount);
set(handles.redblink, 'String', redcount);
set(handles.redi, 'String', redintensity);
set(handles.text42, 'String', greenintensity);
set(handles.averedi, 'String', aveintesitygred);
set(handles.avegreeni, 'String', aveintensitygreen);



countarray = (r+g);
countarray = reshape(countarray,[1,(sizex*sizey)]);

p =1;
q =1;
c1 =0;
c2 =0;
dots = 0;
for p = 1:sizex
    for q = 1:sizey 
       scalec = max(w(p,q), z(p,q));
       if w(p,q) == 0
           c1 = 0;
       else
           c1 = w(p,q)/scalec;
       end
      
       if z(p,q) == 0
           c2 = 0;
       else
           c2 = z(p,q)/scalec;
       end
       if  countarray((p-1)*sizey+q) < cutoff;
           countarray(((p-1)*sizey+q))=0;
       else
           dots = dots+1;
          % countarray(((p-1)*sizey+q))=30;
       end
       colorcount(p,q,:,:) = [c1, c2, 0];
       colorarray2(p,q,:,:) = [c1 , c2, 0 ];
     end
end


maxcount = max(countarray);
scalecount = maxcount/200;
sizecount = countarray/scalecount;
sizecount = sizecount + .001;
maxcountstring = num2str(maxcount);
halfcountstring = num2str(maxcount/2);
set(handles.text23, 'String', maxcountstring);
set(handles.text24, 'String', halfcountstring);



colorcount = reshape(colorcount,[(sizex*sizey),3]);
axes(handles.axes1);
ax = gca;
ax.YDir = 'reverse';
scatter(x,y,sizecount,colorcount, 'filled')
set (handles.axes1,'YDir','reverse')


ylim([0,sizey]);
xlim([0,sizex]);

intensityarray = (w + z);
intensityarray = reshape(intensityarray,[1,(sizex*sizey)]);
%scatter(x,y,intensityarray,colorarray)
maxi = max(intensityarray);
halfi = maxi/2;
maxistring = num2str(maxi);
halfstring = num2str(halfi);
set(handles.text10, 'String', maxistring);
set(handles.text14, 'String', halfstring);
scalei = maxi / 500;
sizei = intensityarray / scalei;
p = 1;
q = 1;
c1 =0;
c2 =0;

recolorarray2 = reshape(colorarray2,[(sizex*sizey),3]);
sizei=sizei+.001;

newcolor = reshape(recolorarray2, sizex, sizey, 3);
shadei = sizei/500;
shadeiarray = [ shadei; shadei; shadei];
shadeiarray = transpose(shadeiarray);
shadedcolor = shadeiarray.*recolorarray2;
shadedcolor = reshape(shadedcolor, sizex, sizey, 3);

red = zeros(1,10,3);
redyellow = zeros(1,10,3);
yellow = zeros(1,10,3);
greenyellow = zeros(1,10,3);
green = zeros(1,10,3);
sizebar = zeros(1,10);
greengreen = zeros(1,10,3);
greenbluish = zeros(1,10,3);
bluegreen = zeros(1,10,3);
cyan = zeros(1,10,3);
blue =zeros(1,10,3);
scalex = zeros(1,50);
scaley = zeros(1,50);
for c3 = 1:10;
   red(:,c3,:) = ([1, 0, 0]/10)*(11-c3);
   redyellow(:,c3,:) = ([1, .5, 0]/10)*(11-c3);
   yellow(:,c3,:) = ([1,1, 0]/10)*(11-c3);
   greenyellow(:,c3,:) = ([.5, 1, 0]/10)*(11-c3);
   green(:,c3,:) = ([0, 1, 0]/10)*(11-c3);
   sizebar(1,c3) = (500/10)*(11-c3);
   greengreen(:,c3,:) = [0,1,0];
   greenbluish(:,c3,:) = [.5,1,0];
   bluegreen(:,c3,:) = [1,1,0];
   cyan(:,c3,:) = [1,.5,0];
   blue(:,c3,:) = [1,0,0];
end
k = 1;
for o=1:10
    for n=1:5
        scalex(k) = n;
        scaley(k) = o;
        k = k+1;
    end
end

css = [greengreen; greenbluish; bluegreen; cyan; blue;];
css = reshape(css,[(50),3]);
sizecountscale = [sizebar; sizebar; sizebar; sizebar; sizebar];
sizecountscale = rot90(sizecountscale, -2);
sizecountscale = reshape(sizecountscale,1, 50);
axes(handles.axes4);
ax = gca;
scatter(scalex, scaley, sizecountscale, css, 'filled')
ax.XTickLabel = {};
ax.YTickLabel = {};
ylim([0,10.5]);
xlim([0,6]);




csi =[red; redyellow; yellow; greenyellow; green];
csi = rot90(csi, -1);

 newcolor = rot90(newcolor);
% newcolor = flipud(newcolor);
shadedcolor = rot90(shadedcolor);
shadedcolor = flip(shadedcolor);
% shadedcolor = flipud(shadedcolor);
axes(handles.axes2);
 %PMap = imagesc(shadedcolor);
% hold on
PMap = imagesc(shadedcolor);
Map = imshow(shadedcolor);

check = handles.Iname;

 Rshaded    = imref2d(size(shadedcolor));
 

edge = 210;
 if(check ~= 0);
      
       Ipath = handles.Ipath;
       Iname = handles.Iname;
       Image = imread([Ipath, Iname]);
       RImage = imref2d(size(Image));
       
%        RImage.XWorldLimits = Rshaded.XWorldLimits;
%        RImage.YWorldLimits = Rshaded.YWorldLimits;
       Rshaded.XWorldLimits(2) = (xmax/105)+.5;
       Rshaded.YWorldLimits(2) = (ymax/105)+.5;
       Rshaded.XWorldLimits(1) = (xmin/105)+.5;
       Rshaded.YWorldLimits(1) = (ymin/105)+.5;
       

      
       imshow(Image);
       shadedcolor = imresize(shadedcolor, 1);
       C = imfuse(shadedcolor, Rshaded, Image, RImage, 'blend');
       imshow(C);
 end




axes(handles.axes3);
imagesc(csi);
%axis off
axes(handles.axes5);
maxplotter = max(max(timearrayyred), max(timearrayygreen))+2;
minplotter = min(min(timearrayyred), min(timearrayygreen))-2;
ylim([minplotter,maxplotter]);
xlim([skip,skip+(numberofpol*frameperpol)]);
if bright == 1 || bright == 3
    for v = 0:numberofpol/2;
        rectangle('Position',[(skip+(v*frameperpol*2)) 0 frameperpol maxplotter],'FaceColor',[1 .5 .5], 'EdgeColor', 'none');
        hold on
        rectangle('Position',[(skip+(v*frameperpol*2)+frameperpol) 0 frameperpol maxplotter],'FaceColor',[.5 1 .5], 'EdgeColor', 'none');
    end
else
    for v = 0:numberofpol/2;
        rectangle('Position',[(skip+(v*frameperpol*2)) 0 frameperpol maxplotter], 'FaceColor',[.5 1 .5], 'EdgeColor', 'none');
        hold on
        rectangle('Position',[(skip+(v*frameperpol*2)+frameperpol) 0 frameperpol maxplotter],'FaceColor',[1 .5 .5], 'EdgeColor', 'none');
    end
end
scatter(timearrayxred, timearrayyred,'MarkerEdgeColor',[.5,0,0], 'MarkerFaceColor',[.6,0,0]);
scatter(timearrayxgreen, timearrayygreen,'MarkerEdgeColor',[0,.5,0], 'MarkerFaceColor',[0,.6,0]);
ylim([min(min(timearrayyred), min(timearrayygreen))-2,max(max(timearrayyred), max(timearrayygreen)+2)]);
xlim([skip,skip+(numberofpol*frameperpol)]);


disp(timearrayyred);
startpt = frameperpol+1;
reddegree = str2double(get(handles.reddegree, 'String'));
newredx = timearrayxred(startpt:1000);
newredy = timearrayyred(startpt:1000);


fit1 = polyfit(newredx,newredy, reddegree);

%fit1 = polyfit(timearrayxred(startpt:1000),timearrayyred(startpt:1000), reddegree);
fitx1 = linspace(frameperpol+1, 1000);
disp(fit1);
fity1 = polyval(fit1, fitx1, fo);
plot(fitx1, fity1, 'r');

greendegree = str2double(get(handles.greendegree, 'String'));
fit2 = polyfit(timearrayxgreen,timearrayygreen, greendegree);
fitx2 = linspace(0, 2000);
fity2 = polyval(fit2, fitx1);
plot(fitx2, fity2, 'g');



hold off
handles.xgreen = xarraygreen;
handles.ygreen = yarraygreen;
handles.xred = xarrayred;
handles.yred = yarrayred;
handles.timered = timered;
handles.timegreen = timegreen;
handles.ImportantData = shadedcolor;
handles.ImportantData = shadedcolor;
%ImportantData = shadedcolor;
guidata(hObject, handles);

% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in radiobright.
function radiobright_Callback(hObject, eventdata, handles)
% hObject    handle to radiobright (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(hObject,'Value') ==1
    handles.polar1 = 1;

end
% Hint: get(hObject,'Value') returns toggle state of radiobright
guidata(hObject, handles);


% --- Executes on button press in radiodim.
function radiodim_Callback(hObject, eventdata, handles)
% hObject    handle to radiodim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(hObject,'Value') ==1
    handles.polar1 = 2;
    
end
% Hint: get(hObject,'Value') returns toggle state of radiodim
guidata(hObject, handles);


% --- Executes on button press in radionone.
function radionone_Callback(hObject, eventdata, handles)
% hObject    handle to radionone (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(hObject,'Value') ==1
    handles.polar1 = 3;
     
end
% Hint: get(hObject,'Value') returns toggle state of radionone
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function text10_CreateFcn(hObject, eventdata, handles)


% hObject    handle to text10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



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


% --------------------------------------------------------------------
function uitoggletool1_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function uipushtool1_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function text24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function pixel_Callback(hObject, eventdata, handles)
% hObject    handle to pixel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pixel as text
%        str2double(get(hObject,'String')) returns contents of pixel as a double


% --- Executes during object creation, after setting all properties.
function pixel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pixel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xpixel_Callback(hObject, eventdata, handles)
% hObject    handle to xpixel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xpixel as text
%        str2double(get(hObject,'String')) returns contents of xpixel as a double


% --- Executes during object creation, after setting all properties.
function xpixel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xpixel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ypixel_Callback(hObject, eventdata, handles)
% hObject    handle to ypixel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ypixel as text
%        str2double(get(hObject,'String')) returns contents of ypixel as a double


% --- Executes during object creation, after setting all properties.
function ypixel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ypixel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function greenblink_CreateFcn(hObject, eventdata, handles)
% hObject    handle to greenblink (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function redblink_CreateFcn(hObject, eventdata, handles)
% hObject    handle to redblink (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function redi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to redi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object deletion, before destroying properties.
function greeni_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to greeni (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function greeni_CreateFcn(hObject, eventdata, handles)
% hObject    handle to greeni (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text42_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function avegreeni_CreateFcn(hObject, eventdata, handles)
% hObject    handle to avegreeni (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function averedi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to averedi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function allavegreeni_CreateFcn(hObject, eventdata, handles)
% hObject    handle to allavegreeni (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function allaveredi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to allaveredi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function allgi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to allgi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function allri_CreateFcn(hObject, eventdata, handles)
% hObject    handle to allri (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function suggestedscale_CreateFcn(hObject, eventdata, handles)
% hObject    handle to suggestedscale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in updatefile.
function updatefile_Callback(hObject, eventdata, handles)
% hObject    handle to updatefile (see GCBO)
if (getappdata(GuiforIntensity3,'Yup'))
    rmappdata(GuiforIntensity3,'Yup');
end


[name,path] = uigetfile('*.*');

handles.name = name;
handles.path = path;
handles.C = 0;
% handles.fileinfo = [name,path];
set(handles.filename, 'String', name);
guidata(hObject, handles);

% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function radius_Callback(hObject, eventdata, handles)
% hObject    handle to radius (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of radius as text
%        str2double(get(hObject,'String')) returns contents of radius as a double


% --- Executes during object creation, after setting all properties.
function radius_CreateFcn(hObject, eventdata, handles)
% hObject    handle to radius (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function filename_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in calibrate.
function calibrate_Callback(hObject, eventdata, handles)


%val = [path, name];
setappdata(CalibrationGui,'timegreen',handles.timegreen);
setappdata(CalibrationGui,'xgreen',handles.xgreen);
setappdata(CalibrationGui,'ygreen',handles.ygreen);
setappdata(CalibrationGui,'timered',handles.timered);
setappdata(CalibrationGui,'xred',handles.xred);
setappdata(CalibrationGui,'yred',handles.yred);
setappdata(CalibrationGui,'name',handles.name);
setappdata(CalibrationGui,'path',handles.path);
handles.C = 1;
CalibrationGui
guidata(hObject, handles);

% hObject    handle to calibrate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in export.
function export_Callback(hObject, eventdata, handles)
disp(get(handles.ExportName, 'String'));
disp((handles.ImportantData));
disp(class(get(handles.ExportName, 'String')));
filename =[(get(handles.ExportName, 'String')), '.mat'];
disp(class(filename));
ImportantData = handles.ImportantData;
%eval(['save ',filename, ' ImportantData']);
save([filename, '.mat'], 'ImportantData');
disp(['Saved As ', filename]);
guidata(hObject, handles);

% hObject    handle to export (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


function ExportName_Callback(hObject, eventdata, handles)
% hObject    handle to ExportName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of ExportName as text
%        str2double(get(hObject,'String')) returns contents of ExportName as a double


% --- Executes during object creation, after setting all properties.
function ExportName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ExportName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function override_Callback(hObject, eventdata, handles)
% hObject    handle to override (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of override as text
%        str2double(get(hObject,'String')) returns contents of override as a double


% --- Executes during object creation, after setting all properties.
function override_CreateFcn(hObject, eventdata, handles)
% hObject    handle to override (see GCBO)
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



function greendegree_Callback(hObject, eventdata, handles)
% hObject    handle to greendegree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of greendegree as text
%        str2double(get(hObject,'String')) returns contents of greendegree as a double


% --- Executes during object creation, after setting all properties.
function greendegree_CreateFcn(hObject, eventdata, handles)
% hObject    handle to greendegree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function reddegree_Callback(hObject, eventdata, handles)
% hObject    handle to reddegree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reddegree as text
%        str2double(get(hObject,'String')) returns contents of reddegree as a double


% --- Executes during object creation, after setting all properties.
function reddegree_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reddegree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Overlay.
function Overlay_Callback(hObject, eventdata, handles)
% hObject    handle to Overlay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[Iname,Ipath] = uigetfile('*.*');

handles.Iname = Iname;
handles.Ipath = Ipath;
% handles.fileinfo = [name,path];
set(handles.Imagefilename, 'String', Iname);
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function Imagefilename_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Imagefilename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function nmpix_Callback(hObject, eventdata, handles)
% hObject    handle to nmpix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nmpix as text
%        str2double(get(hObject,'String')) returns contents of nmpix as a double


% --- Executes during object creation, after setting all properties.
function nmpix_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nmpix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




