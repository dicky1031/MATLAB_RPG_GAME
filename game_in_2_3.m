function varargout = game_in_2_3(varargin)
% GAME_IN_2_3 MATLAB code for game_in_2_3.fig
%      GAME_IN_2_3, by itself, creates a new GAME_IN_2_3 or raises the existing
%      singleton*.
%
%      H = GAME_IN_2_3 returns the handle to a new GAME_IN_2_3 or the handle to
%      the existing singleton*.
%
%      GAME_IN_2_3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GAME_IN_2_3.M with the given input arguments.
%
%      GAME_IN_2_3('Property','Value',...) creates a new GAME_IN_2_3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before game_in_2_3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to game_in_2_3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help game_in_2_3

% Last Modified by GUIDE v2.5 04-Jun-2019 23:10:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @game_in_2_3_OpeningFcn, ...
                   'gui_OutputFcn',  @game_in_2_3_OutputFcn, ...
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


% --- Executes just before game_in_2_3 is made visible.
function game_in_2_3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to game_in_2_3 (see VARARGIN)

% Choose default command line output for game_in_2_3
handles.output = hObject;

a=imread('�P�P����2.png');
image(a);
global counter;
counter = 0;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes game_in_2_3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = game_in_2_3_OutputFcn(hObject, eventdata, handles) 
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
global counter;
counter = counter+1;
if counter==1
    close
    ball1_2
end
