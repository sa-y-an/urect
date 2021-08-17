function varargout = Logo(varargin)
% LOGO MATLAB code for Logo.fig
%      LOGO, by itself, creates a new LOGO or raises the existing
%      singleton*.
%
%      H = LOGO returns the handle to a new LOGO or the handle to
%      the existing singleton*.
%
%      LOGO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LOGO.M with the given input arguments.
%
%      LOGO('Property','Value',...) creates a new LOGO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Logo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Logo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Logo

% Last Modified by GUIDE v2.5 08-Nov-2017 00:19:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Logo_OpeningFcn, ...
                   'gui_OutputFcn',  @Logo_OutputFcn, ...
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


% --- Executes just before Logo is made visible.
function Logo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Logo (see VARARGIN)

% Choose default command line output for Logo
handles.output = hObject;
axes(handles.axes1)
imshow('Logo.JPG')
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Logo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Logo_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
