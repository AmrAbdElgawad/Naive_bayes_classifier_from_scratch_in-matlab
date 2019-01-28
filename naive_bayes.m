function varargout = naive_bayes(varargin)
% NAIVE_BAYES MATLAB code for naive_bayes.fig
%      NAIVE_BAYES, by itself, creates a new NAIVE_BAYES or raises the existing
%      singleton*.
%
%      H = NAIVE_BAYES returns the handle to a new NAIVE_BAYES or the handle to
%      the existing singleton*.
%
%      NAIVE_BAYES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NAIVE_BAYES.M with the given input arguments.
%
%      NAIVE_BAYES('Property','Value',...) creates a new NAIVE_BAYES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before naive_bayes_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to naive_bayes_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help naive_bayes

% Last Modified by GUIDE v2.5 24-Nov-2018 21:02:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @naive_bayes_OpeningFcn, ...
                   'gui_OutputFcn',  @naive_bayes_OutputFcn, ...
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


% --- Executes just before naive_bayes is made visible.
function naive_bayes_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to naive_bayes (see VARARGIN)

% Choose default command line output for naive_bayes
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes naive_bayes wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = naive_bayes_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.radiobutton1,'Value') == 1
set(handles.uibuttongroup1,'visible','off');
set(handles.pushbutton1,'visible','off');
set(handles.pushbutton3,'visible','on');
set(handles.edit10,'visible','on');
set(handles.text6,'visible','on');
set(handles.edit6,'visible','on');
set(handles.edit7,'visible','on');
set(handles.edit8,'visible','on');

end
if get(handles.radiobutton2,'Value') == 1
set (handles.text2,'visible','on');
set (handles.text3,'visible','on');
set(handles.edit3,'visible','on');
set(handles.edit2,'visible','on');
set(handles.pushbutton2,'visible','on');
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


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uibuttongroup1,'visible','off');
set(handles.pushbutton1,'visible','off');
set(handles.edit3,'visible','off');
set(handles.edit2,'visible','off');
set(handles.pushbutton3,'visible','off');
set(handles.text6,'visible','on');
set(handles.edit10,'visible','on');
set(handles.edit6,'visible','on');
set(handles.edit7,'visible','on');
set(handles.edit8,'visible','on');
set (handles.text2,'visible','off');
set (handles.text3,'visible','off');


path=get(handles.edit3,'string');
no_feature=str2num(get(handles.edit2,'string'));
train_data = importdata(path,' ');

classes = train_data(:,no_feature+1);
prob_class_one = sum(classes)/size(classes,no_feature+1); %sum(classes ) return # of ones 
prob_class_zero = (abs(size(classes,no_feature+1) -sum(classes)))/size(classes,no_feature+1); %P(zeros)

for i=1:no_feature
prob_A = [0 0 0; 0 0 0];
prob_A(1,1,i) = conditional_prob(0, 0, i);%p(A1=0 | 0)
prob_A(1,2,i) = conditional_prob(1, 0, i);%p(A1=1 | 0)
prob_A(2,1,i) = conditional_prob(0, 1, i);%p(A1=0 | 1)
prob_A(2,2,i) = conditional_prob(1, 1, i);%p(A1=1 | 1)

end

features=zeros(size(no_feature));
features(1)=str2num(get(handles.edit10,'string'));
features(2)=str2num(get(handles.edit6,'string'));
features(3)=str2num(get(handles.edit7,'string'));


for i=1:no_feature
if features(i)==1
    prob_A1(2,1)=1;
    prob_A1(1,1)=1;
elseif features(i)==0
    prob_A1(2,2)=1;
    prob_A1(1,2)=1;
end
end

final_prob1=1;
final_prob1=0;
for i=1:no_feature
final_prob1=prob_A(2,1,i)*prob_A(2,2,i);
final_prob0=prob_A(1,2,i)*prob_A(1,1,i);
end
  
    final_prob1 = final_prob1 * prob_class_one ;
   
    final_prob0 = final_prob0 *  prob_class_zero ;
    %find the class
    if(final_prob0 > final_prob1)
        set(handles.edit8,'string','not go to movies');
        disp(final_prob0);
        disp(final_prob1);
    elseif final_prob1 >= final_prob0
        disp(final_prob0);
        disp(final_prob1);
        set(handles.edit8,'string','yes goes to movies');
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

  function prob = conditional_prob(Ai,C, i) %p(Ai | C)
train_data = importdata('data.txt',' ');

numc =0;
numAi =0;
for j=1:size(train_data,1)
   if(train_data(j,4)==C) % to get the intersection for class
       numc = numc+1;  %increase variable if intersection detected
       if(train_data(j,i)==Ai) % to get the intersection with feature
           numAi = numAi+1;
       end
   end
end

prob = numAi / numc; %p(a/\c/p(C))


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%create if condition to decide which feature to select by making this
%values 1 and others put the real value of 
train_data = importdata('data.txt',' ');

classes = train_data(:,4);

prob_class_one = sum(classes)/size(classes,4); %sum(classes ) return # of ones 
prob_class_zero = (abs(size(classes,4) -sum(classes)))/size(classes,4); %P(zeros)

prob_A1 = [0 0; 0 0];
prob_A1(1,1) = conditional_prob(0, 0, 1);%p(A1=0 | 0)
prob_A1(1,2) = conditional_prob(1, 0, 1);%p(A1=1 | 0)
prob_A1(2,1) = conditional_prob(0, 1, 1);%p(A1=0 | 1)
prob_A1(2,2) = conditional_prob(1, 1, 1);%p(A1=1 | 1)

prob_A2 = [0 0; 0 0];
prob_A2(1,1) = conditional_prob(0, 0, 2);
prob_A2(1,2) = conditional_prob(1, 0, 2);
prob_A2(2,1) = conditional_prob(0, 1, 2);
prob_A2(2,2) = conditional_prob(1, 1, 2);

prob_A3 = [0 0; 0 0; 0 0];
prob_A3(1,1) = conditional_prob(1, 0, 3);
prob_A3(1,2) = conditional_prob(1, 1, 3);
prob_A3(2,1) = conditional_prob(2, 0, 3);
prob_A3(2,2) = conditional_prob(2, 1, 3);
prob_A3(3,1) = conditional_prob(3, 0, 3);
prob_A3(3,2) = conditional_prob(3, 1, 3);


feature1=str2num(get(handles.edit10,'string'));
feature2=str2num(get(handles.edit6,'string'));
feature3=str2num(get(handles.edit7,'string'));
if feature1==1
    prob_A1(2,1)=1;
    prob_A1(1,1)=1;
elseif feature1==0
    prob_A1(2,2)=1;
    prob_A1(1,2)=1;
end
if feature2==1
    prob_A2(1,1)=1;
    prob_A2(2,1)=1;
elseif feature2==0
    prob_A2(2,2)=1;
    prob_A2(1,2)=1;

end
 switch(feature3)
    case 1
     prob_A3(2,2)=1;
     prob_A3(3,2)=1;
    case 2
       prob_A3(1,2)=1;
     prob_A3(3,2)=1;
    case 3
        prob_A3(1,2)=1;
     prob_A3(2,2)=1;
 end



    %calculate prob for class 1
   
    final_prob1 =prob_A3(1,2)*prob_A3(2,2)*prob_A3(3,2) * prob_A2(2,1)*prob_A2(2,2)* prob_A1(2,1)* prob_A1(2,2) * prob_class_one ;
    
    %calculate prob for class 0
  
    final_prob0 = prob_A1(1,2)*prob_A1(1,1) * prob_A2(1,2)*prob_A2(1,1)*  prob_A3(1,1)*prob_A3(2,1)*prob_A3(3,1) * prob_class_zero ;
    %find the class
    if(final_prob0 > final_prob1)
        set(handles.edit8,'string','not go to movies');
        disp(final_prob0);
        disp(final_prob1);
    elseif final_prob1 >= final_prob0
        disp(final_prob0);
        disp(final_prob1);
        set(handles.edit8,'string','yes goes to movies');
    end
    



% threshld =[];
% for i=1:len
%     if(num(i)<=125)
%     threshld(i)=0;
%     else
%         threshld(i)=1;
%     end       
% end

% yes=find(threshld(:)==1);
% no=find(threshld(:)==0);
% money_yes=size(yes);
% money_no=size(no);
% p_m_y=money_yes/(len);
% p_n_y=money_no/(len);
% GTM_yes=size(find(num(:,4)==1));
% GTM_no=size(find(num(:,4)==0));
% p_GTM_yes=size(GTM_yes)/len;
% p_GTM_no=size(GTM_no)/len;
% p_M_GTM_yes=GTM_yes/money_yes;
% p_M_GTM_no=GTM_no/money_no;
% HAS_ex_yes=size(find(num(:,2)==1));
% HAS_ex_no=size(find(num(:,2)==0));
% P_EX_GTM_yes=GTM_yes/HAS_ex_yes;
% P_EX_GTM_no=GTM_no/HAS_ex_no;
% wthr_fine=size(find(num(:,3)==1));
% wthr_hot=size(find(num(:,3)==2));
% wthr_rainy=size(find(num(:,3)==3));
% 
% 
% P_wthr_GTM_fine=GTM_yes/wthr_fine;
% P_wthr_GTM_hot=GTM_yes/wthr_hot;
% P_wthr_GTM_rainy=GTM_yes/wthr_rainy;
% 
% P_wthr_GTM_fine_n=GTM_no/wthr_fine;
% P_wthr_GTM_hot_n=GTM_no/wthr_hot;
% P_wthr_GTM_rainy_n=GTM_no/wthr_rainy;
% xc=get(handles.edit6,'value');
% disp (xc);
% % switch 
% f3=str2num(get(handles.edit7,'string'));
% disp(f3);
% switch(f3)
%     case 1
%       P_wthr_GTM_hot = 1;
% P_wthr_GTM_rainy=1;
%   P_wthr_GTM_hot_n = 1;
% P_wthr_GTM_rainy_n=1;
%     case 2
%         P_wthr_GTM_fine=1;
%         P_wthr_GTM_rainy=1;
%         P_wthr_GTM_fine_n=1;
%         P_wthr_GTM_rainy_n=1;
%     case 3
%         P_wthr_GTM_fine=1;
%         P_wthr_GTM_hot=1;
%         P_wthr_GTM_fine_n=1;
%         P_wthr_GTM_hot_n=1;
% end
% p_GTM_yes_input=(p_M_GTM_yes*P_EX_GTM_yes*P_wthr_GTM_fine*P_wthr_GTM_rainy*P_wthr_GTM_hot*p_GTM_yes);
% p_GTM_no_input=(p_M_GTM_no*P_EX_GTM_no*P_wthr_GTM_fine_n*P_wthr_GTM_rainy_n*P_wthr_GTM_hot_n*p_GTM_no);
% if p_GTM_yes_input>=p_GTM_no_input
% disp('yes goes to movies');
% end
% if p_GTM_yes_input<p_GTM_no_input
%     disp('not go to movies');
% 
% end

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



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
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


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uibuttongroup1,'visible','off');
set(handles.edit3,'visible','off');
set(handles.edit2,'visible','off');
set(handles.pushbutton3,'visible','off');
set(handles.pushbutton2,'visible','off');
set(handles.edit10,'visible','off');
set(handles.text6,'visible','off');
set(handles.edit6,'visible','off');
set(handles.edit7,'visible','off');
set(handles.edit8,'visible','off');
set(handles.text2,'visible','off');
set(handles.text3,'visible','off');
set(handles.uibuttongroup1,'visible','on');
set(handles.pushbutton1,'visible','on');
