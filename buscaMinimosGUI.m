function varargout = buscaMinimosGUI(varargin)
% BUSCAMINIMOSGUI MATLAB code for buscaMinimosGUI.fig
%      BUSCAMINIMOSGUI, by itself, creates a new BUSCAMINIMOSGUI or raises the existing
%      singleton*.
%
%      H = BUSCAMINIMOSGUI returns the handle to a new BUSCAMINIMOSGUI or the handle to
%      the existing singleton*.
%
%      BUSCAMINIMOSGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BUSCAMINIMOSGUI.M with the given input arguments.
%
%      BUSCAMINIMOSGUI('Property','Value',...) creates a new BUSCAMINIMOSGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before buscaMinimosGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to buscaMinimosGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help buscaMinimosGUI

% Last Modified by GUIDE v2.5 21-Mar-2016 20:48:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @buscaMinimosGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @buscaMinimosGUI_OutputFcn, ...
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



% --- Executes just before buscaMinimosGUI is made visible.
function buscaMinimosGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to buscaMinimosGUI (see VARARGIN)




% Choose default command line output for buscaMinimosGUI
handles.output = hObject;



% Update handles structure
guidata(hObject, handles);

% UIWAIT makes buscaMinimosGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = buscaMinimosGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




function enterTolTxt_Callback(hObject, eventdata, handles)
% hObject    handle to enterTolTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of enterTolTxt as text
%        str2double(get(hObject,'String')) returns contents of enterTolTxt as a double
handles.tolerancia = str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function enterTolTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enterTolTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
handles.tolerancia = str2double(get(hObject,'String'));
guidata(hObject,handles);



function enterMaxIntTxt_Callback(hObject, eventdata, handles)
% hObject    handle to enterMaxIntTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of enterMaxIntTxt as text
%        str2double(get(hObject,'String')) returns contents of enterMaxIntTxt as a double


% --- Executes during object creation, after setting all properties.
handles.maxinteracao = str2double(get(hObject,'String'));
guidata(hObject,handles);

function enterMaxIntTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enterMaxIntTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
handles.maxinteracao = str2double(get(hObject,'String'));
guidata(hObject,handles);



function vetorInicial_Callback(hObject, eventdata, handles)
% hObject    handle to vetorInicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vetorInicial as text
%        str2double(get(hObject,'String')) returns contents of vetorInicial as a double


% --- Executes during object creation, after setting all properties.
display('current vetor inicial')
handles.pontoInicial = str2num(get(hObject,'String'));
display(handles.pontoInicial)
guidata(hObject,handles);



function vetorInicial_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vetorInicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%handles.pontoInicial = [-3 3];
handles.pontoInicial = str2num(get(hObject,'String'));
guidata(hObject,handles);



% --- Executes on button press in histGraphBool.
function histGraphBool_Callback(hObject, eventdata, handles)
% hObject    handle to histGraphBool (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of histGraphBool

handles.graphHistBool = get(hObject,'Value');
guidata(hObject,handles);

% --- Executes on selection change in metodosPopup.
function metodosPopup_Callback(hObject, eventdata, handles)
% hObject    handle to metodosPopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns metodosPopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from metodosPopup

contents = cellstr(get(hObject,'String'));
handles.metodos = contents{get(hObject,'Value')};
guidata(hObject,handles);


    




% --- Executes during object creation, after setting all properties.
function metodosPopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to metodosPopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%listaMetodos = strvcat('Aurea', 'Fibonacci', 'Interpolacao')
%set(hObject,'String', listaMetodos);

handles.contents = cellstr(get(hObject,'String'));
handles.metodos = handles.contents{get(hObject,'Value')};
guidata(hObject,handles);





function enterMaxIntervalTxt_Callback(hObject, eventdata, handles)
% hObject    handle to enterMaxIntervalTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of enterMaxIntervalTxt as text
%        str2double(get(hObject,'String')) returns contents of enterMaxIntervalTxt as a double
handles.maxinterval = str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function enterMaxIntervalTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enterMaxIntervalTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

handles.maxinterval = str2double(get(hObject,'String'));

guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function graph_CreateFcn(hObject, eventdata, handles)
% hObject    handle to graph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate graph
% 
%  t = linspace(-10,10,1000);
% %  handles.y = nan(1,1000);
% 
%  yy = sin(t);
%  handles.graph1 = plot(handles.t,yy);

 %set(handles.graph1, 'xdata',linspace(-10,10,1000),'ydata', handles.yy);
%  drawnow;
 guidata(hObject,handles);



% --- Executes on button press in goButton.
function goButton_Callback(hObject, eventdata, handles)
% hObject    handle to goButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%--------------------------------------------------------------
handles.intervalo = handles.vetorIntervalo;
pontoInicialDimension = size(handles.pontoInicial);

%Verificar se a funcao tem dimensao 1. Se sim, não precisa se preocupar com
%ponto inicial. Caso contrário, verifica se a dimensão da funcao está
%consistente com a dimensão do vetor ponto inicial.
%--------------------------------------------------------------
if handles.functionDimension(1)~=1&&handles.functionDimension(1)~=pontoInicialDimension(2)
    disp('---')
    disp(handles.functionDimension(1))
    disp(pontoInicialDimension(2))
    msgbox('O vetor inical está com a dimensão incorreta')
end
%--------------------------------------------------------------    

tic
hold off
%---------------- funcao

[xMin, fMin, k, historico,historicoNMelhores,historicoRecomb,historicoMutacao, historicoPop] = EstratEvol(handles.funcao, handles.pontoInicial,handles.tolerancia, handles.maxinteracao, handles.popInicial, handles.variancia, handles.numeroDeSobreviventes, handles.coeficienteDeMutacao, handles.coeficienteDeExploracao);
xMin = transpose(xMin);


%---------------- 

elapsedTime = toc;


switch handles.functionDimension(1)
    
    case 2;
        %---------------------------------------------
        %Se tem intervalo suficiente = plota no intervalo. Se não, plota
        %default.
        hold off
        plotdefault = size(handles.vetorIntervalo)
        
        if plotdefault(2) == 4 
            ezmesh(handles.funcao,handles.vetorIntervalo);
        else
            ezmesh(handles.funcao);
        end
        %---------------------------------------------
        %Plot dos vetores
        %---------------------------------------------
        %Setup Inicial e plot de primeiro e ultimo ponto
        hold on
        aux2 = size(historico);
        sizeHist = aux2(2);
        
        plot3(historico(1),historico(2),historico(3), 'r-o'); %ponto inicial
        hold on
        plot3(historico(sizeHist-2), historico(sizeHist-1),historico(sizeHist),'b-o','LineWidth',2); %ponto final
       %---------------------------------------------
       %plota os vetores caso HistBool ==1.
        
        i=1;
        
        while i+5<=(sizeHist)
            p0 = [historico(i+0) historico(i+1) historico(i+2)];
            p1 = [historico(i+3) historico(i+4) historico(i+5)];
            i=i+3;
            
            
            vectarrow(p0,p1)
            
            hold on
            
        end
        
        
        if handles.plotSobrev==1
            aux2 = size(historicoNMelhores);
            sizeHist = aux2(2);
            hold on
            %------------------------------ plot dos sobreviventes
            
                %plot3(historicoBom(1),historicoBom(2),historicoBom(3), 'r-o')
                i=1
                ii = 1;
                while i+5<=sizeHist
                    p3 = [historicoNMelhores(i+0) historicoNMelhores(i+1) historicoNMelhores(i+2)];
                    %p1 = [historicoBom(i+3) historicoBom(i+4) historicoBom(i+5)];
                    %plot(p0,'r-o')
                    
                    %p1 = [historicoRuim(i+0) historicoRuim(i+1) historicoRuim(i+2)];
                    pos = (i-1)/3+1
                    if mod(pos,handles.numeroDeSobreviventes)==0
                        ii = ii+1 %avança para a proxima geracao
                    end
                    
                    
                    
                    switch ii
                        case 1
                            plot3(p3(1),p3(2),p3(3),'--gs',...
                                'LineWidth',2,...
                                'MarkerSize',10,...
                                'MarkerEdgeColor','b',...
                                'MarkerFaceColor',[0.5,0.5,0.5])
                            %plot(p1,'b-o')
                        case 2
                            plot3(p3(1),p3(2),p3(3),'--gs',...
                                'LineWidth',2,...
                                'MarkerSize',10,...
                                'MarkerEdgeColor','c',...
                                'MarkerFaceColor',[0.5,0.5,0.5])
                            %plot(p1,'g-o')
                        case 3
                            plot3(p3(1),p3(2),p3(3),'--gs',...
                                'LineWidth',2,...
                                'MarkerSize',10,...
                                'MarkerEdgeColor','y',...
                                'MarkerFaceColor',[0.5,0.5,0.5])
                        case 4
                            plot3(p3(1),p3(2),p3(3),'--gs',...
                                'LineWidth',2,...
                                'MarkerSize',10,...
                                'MarkerEdgeColor','y',...
                                'MarkerFaceColor',[0.5,0.5,0.5])
                        case 5
                            plot3(p3(1),p3(2),p3(3),'--gs',...
                                'LineWidth',2,...
                                'MarkerSize',10,...
                                'MarkerEdgeColor','g',...
                                'MarkerFaceColor',[0.5,0.5,0.5])
                            %plot(p0,'c-o')
                        otherwise
                            plot3(p3(1),p3(2),p3(3),'--gs',...
                                'LineWidth',2,...
                                'MarkerSize',10,...
                                'MarkerEdgeColor','g',...
                                'MarkerFaceColor',[0.5,0.5,0.5])
                            %plot(p0,'c-o')
                    end
                    
                    %vectarrow(p0,p1)
                    hold on
                    i=i+3
                    
                    
                
           
                end
                
        end      
        %-------------------------------------------- plots adicionais
        %plot da populacao
        if handles.plotPop==1
            dimPop = size(historicoPop);
            for kk=1:dimPop(1)
                plot3(historicoPop(kk,1),historicoPop(kk,2),historicoPop(kk,3),'ko','LineWidth',2)
            end
        end
        
        
        %plot dos Recombinados
        if handles.plotCrossover==1
            disp('dimensao Recomb')
            dimMutados = size(historicoRecomb)
            
            
            i=1
            ii = 1;
            iii = 1;
            nComb = 2*nchoosek(handles.numeroDeSobreviventes,2);
            hold on
            for i=1:dimMutados(1)
                p3 = [historicoRecomb(i,ii) historicoRecomb(i,ii+1) historicoRecomb(i,ii+2)];
                
                
                if mod(i,nComb)==0
                    iii = iii+1 %avança para a proxima geracao
                end
                
                
                
                switch iii
                    case 1
                        plot3(p3(1),p3(2),p3(3),'bo','LineWidth',2)
                        disp('plotando recombinados')
                        %plot(p1,'b-o')
                    case 2
                        plot3(p3(1),p3(2),p3(3),'co','LineWidth',2)
                        %plot(p1,'g-o')
                    case 3
                        plot3(p3(1),p3(2),p3(3),'yo','LineWidth',2)
                        %plot(p1,'y-o')
                    case 4
                        plot3(p3(1),p3(2),p3(3),'yo','LineWidth',2)
                        %plot(p1,'m-o')
                    case 5
                        plot3(p3(1),p3(2),p3(3),'go','LineWidth',2)
                        %plot(p0,'c-o')
                    otherwise
                        plot3(p3(1),p3(2),p3(3),'go','LineWidth',2)
                        %plot(p0,'c-o')
                end
                
                %vectarrow(p0,p1)
                hold on
                i=i+1
            end
            
        end
        %plot dos mutados
        
        disp('dimensao mutados')
        if handles.plotMutacao==1
            dimMutados = size(historicoMutacao)
            
            
            i=1
            ii = 1;
            iii = 1;
            nComb = 2*nchoosek(handles.numeroDeSobreviventes,2);
            hold on
            totalMutado = (nComb)*2
            
            for i=1:dimMutados(1)
                p3 = [historicoMutacao(i,ii) historicoMutacao(i,ii+1) historicoMutacao(i,ii+2)];
                
                
                if mod(i,totalMutado)==0
                    iii = iii+1 %avança para a proxima geracao
                end
                
                
                
                switch iii
                    case 1
                        plot3(p3(1),p3(2),p3(3),'bv','LineWidth',2)
                        %plot(p1,'b-o')
                    case 2
                        plot3(p3(1),p3(2),p3(3),'cv','LineWidth',2)
                        %plot(p1,'g-o')
                    case 3
                        plot3(p3(1),p3(2),p3(3),'yv','LineWidth',2)
                        %plot(p1,'y-o')
                    case 4
                        plot3(p3(1),p3(2),p3(3),'yv','LineWidth',2)
                        %plot(p1,'m-o')
                    case 5
                        plot3(p3(1),p3(2),p3(3),'gv','LineWidth',2)
                        %plot(p0,'c-o')
                    otherwise
                        plot3(p3(1),p3(2),p3(3),'gv','LineWidth',2)
                        %plot(p0,'c-o')
                end
                
                %vectarrow(p0,p1)
                hold on
                i=i+1
            end
        end
        %---------------------------------------------
        %plot dos resultados em forma de texto
        
        %string00 = '-----------------------------'
        string0 = strcat('Função:', {' '}, handles.funcao);
        string1 = strcat('Pop. Inicial e Variancia:',{' '}, num2str(handles.popInicial),{' '},num2str(handles.variancia));
        %string11 = strcat('Variancia:',{' '}, num2str(handles.variancia));
        string111 = strcat('Num. Sobreviventes:',{' '}, num2str(handles.numeroDeSobreviventes));
        string1111 = strcat('Coef. Exploracao e Mutacao:',{' '}, num2str(handles.coeficienteDeExploracao),{' '},num2str(handles.coeficienteDeMutacao));
        %string11111 = strcat('Coef. Mutacao:',{' '}, num2str(handles.coeficienteDeMutacao));
        string2 = strcat('O Mínimo é:',{' '}, strcat('[',num2str(transpose(xMin)),']'))
        string3 = strcat('F(mínimo):', {' '}, num2str(double(fMin)));
        string4 = strcat('Iterações:', {' '}, num2str(k));
        string5 = strcat('Tempo de Proc (s):', {' '}, num2str(elapsedTime));
        string6 = strcat('Vetor Inicial:', {' '}, strcat('[',num2str(handles.pontoInicial),']'))
        string7 = strcat('Tolerância', {' '}, num2str(handles.tolerancia));
        string8 = '-----------------------------'
        
        stringFinal = [string0 string1 string111 string1111 string2 string3 string4 string5 string6 string7 string8]';
        %textoAtual = get(handles.resultadosTxt,'String')
        
%         textoNovo = [stringFinal;textoAtual]
        textoNovo = stringFinal
        set(handles.resultadosTxt,'String',textoNovo);
        
       
        %---------------------------------------------
        
        
        
        
    
end



function resultadosTxt_Callback(hObject, eventdata, handles)
% hObject    handle to resultadosTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of resultadosTxt as text
%        str2double(get(hObject,'String')) returns contents of resultadosTxt as a double


% --- Executes during object creation, after setting all properties.
function resultadosTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resultadosTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function funcaoTxt_Callback(hObject, eventdata, handles)
% hObject    handle to funcaoTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of funcaoTxt as text
%        str2double(get(hObject,'String')) returns contents of funcaoTxt as a double
handles.funcao = get(hObject,'String')
handles.functionDimension = size(symvar(handles.funcao))
% display(handles.functionDimension)

% if handles.functionDimension(1)>1
%     listaMetodos = strvcat('Gradiente', 'Gradiente Conjugado-PR', 'Gradiente Conjugado-FR','Newton', 'Newton Modificado', 'Quase Newton-DFP', 'HookeAndJeeves', 'Genetico')
%     set(handles.metodosPopup, 'value', 1);
%     set(handles.metodosPopup,'String', listaMetodos);
%     %Primeiro método selecionado por default
%     handles.metodos = 'Gradiente'
    
   
    
% else
%     listaMetodos = strvcat('Aurea', 'Fibonacci', 'Interpolacao')
%     set(handles.metodosPopup, 'value', 1);
%     set(handles.metodosPopup,'String', listaMetodos);
%     
%     %Primeiro método selecionado por default
%     handles.metodos = 'Aurea'
% end


guidata(hObject,handles);





% --- Executes during object creation, after setting all properties.
function funcaoTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to funcaoTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

handles.funcao=get(hObject,'String');
handles.functionDimension = size(symvar(handles.funcao));
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function histGraphBool_CreateFcn(hObject, eventdata, handles)
% hObject    handle to histGraphBool (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

handles.graphHistBool = get(hObject,'Value');
guidata(hObject,handles);


% --- Executes on button press in clearButton.
function clearButton_Callback(hObject, eventdata, handles)
% hObject    handle to clearButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.resultadosTxt,'String','');


% --- Executes on button press in botaoPlot.
function botaoPlot_Callback(hObject, eventdata, handles)
% hObject    handle to botaoPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hold off
if handles.functionDimension(1)==1
    plotdefault = size(handles.vetorIntervalo)
    if plotdefault(2) == 2
        k = handles.vetorIntervalo(1):0.1:handles.vetorIntervalo(2);
        x = symvar(handles.funcao);
        funcao = subs(handles.funcao,x,k);
        plot(k,funcao)
    else
        k = -10:0.1:10;
        x = symvar(handles.funcao);
        funcao = subs(handles.funcao,x,k);
        plot(k,funcao)
    end
        
    
elseif handles.functionDimension(1)==2
    plotdefault = size(handles.vetorIntervalo)
    if plotdefault(2) == 4
        ezmesh(handles.funcao,handles.vetorIntervalo);
    else
        ezmesh(handles.funcao);
    end
    
else
    msgbox(strvcat('ERRO:42','Impossível plotar: dimensão >3'));    
end
guidata(hObject,handles);


%[xMin,fMin,k] = intpol_henrique(handles.funcao,handles.tolerancia,handles.intervalo,handles.maxinteracao,handles.graphHistBool)

% --- Executes on selection change in popupDimensao.
function popupDimensao_Callback(hObject, eventdata, handles)
% hObject    handle to popupDimensao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupDimensao contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupDimensao
contents = cellstr(get(hObject,'String'))
handles.dimensao = contents{get(hObject,'Value')}

% --- Executes during object creation, after setting all properties.
function popupDimensao_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupDimensao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
contents = cellstr(get(hObject,'String'));
handles.dimensao = contents{get(hObject,'Value')}
guidata(hObject,handles);



function intervalo_Callback(hObject, eventdata, handles)
% hObject    handle to intervalo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of intervalo as text
%        str2double(get(hObject,'String')) returns contents of intervalo as a double
handles.vetorIntervalo = str2num(get(hObject,'String'))
display(handles.vetorIntervalo)
display('to no intervalo')
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function intervalo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to intervalo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
handles.vetorIntervalo = str2num(get(hObject,'String'));
guidata(hObject,handles);



function numeroSobreviventes_Callback(hObject, eventdata, handles)
% hObject    handle to numeroSobreviventes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numeroSobreviventes as text
%        str2double(get(hObject,'String')) returns contents of numeroSobreviventes as a double
handles.numeroDeSobreviventes = str2double(get(hObject,'String'))
disp(handles.numeroDeSobreviventes)
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function numeroSobreviventes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numeroSobreviventes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
handles.numeroDeSobreviventes = str2double(get(hObject,'String'))
guidata(hObject,handles);

function coeficienteDeExploracao_Callback(hObject, eventdata, handles)
% hObject    handle to coeficienteDeExploracao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of coeficienteDeExploracao as text
%        str2double(get(hObject,'String')) returns contents of coeficienteDeExploracao as a double
handles.coeficienteDeExploracao = str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function coeficienteDeExploracao_CreateFcn(hObject, eventdata, handles)
% hObject    handle to coeficienteDeExploracao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
handles.coeficienteDeExploracao = str2double(get(hObject,'String'));
guidata(hObject,handles);

function populacaoInicial_Callback(hObject, eventdata, handles)
% hObject    handle to populacaoInicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of populacaoInicial as text
%        str2double(get(hObject,'String')) returns contents of populacaoInicial as a double
handles.popInicial = str2double(get(hObject,'String'));
disp('populacao')
disp(handles.popInicial)
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function populacaoInicial_CreateFcn(hObject, eventdata, handles)
% hObject    handle to populacaoInicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
handles.popInicial = str2double(get(hObject,'String'));
guidata(hObject,handles);


function coeficienteDeMutacao_Callback(hObject, eventdata, handles)
% hObject    handle to coeficienteDeMutacao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of coeficienteDeMutacao as text
%        str2double(get(hObject,'String')) returns contents of coeficienteDeMutacao as a double
handles.coeficienteDeMutacao = str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function coeficienteDeMutacao_CreateFcn(hObject, eventdata, handles)
% hObject    handle to coeficienteDeMutacao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
handles.coeficienteDeMutacao = str2double(get(hObject,'String'));
guidata(hObject,handles.coeficienteDeMutacao);

% --- Executes on button press in continueButton.
function continueButton_Callback(hObject, eventdata, handles)
% hObject    handle to continueButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0,'Continue',1)



function Variancia_Callback(hObject, eventdata, handles)
% hObject    handle to Variancia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Variancia as text
%        str2double(get(hObject,'String')) returns contents of Variancia as a double
handles.variancia = str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function Variancia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Variancia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
handles.variancia = str2double(get(hObject,'String'));
guidata(hObject,handles);


% --- Executes on button press in plotPopInicial.
function plotPopInicial_Callback(hObject, eventdata, handles)
% hObject    handle to plotPopInicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of plotPopInicial
handles.plotPop = get(hObject,'Value');
guidata(hObject,handles)

% --- Executes on button press in plotCrossover.
function plotCrossover_Callback(hObject, eventdata, handles)
% hObject    handle to plotCrossover (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of plotCrossover
handles.plotCrossover = get(hObject,'Value');
guidata(hObject,handles)

% --- Executes on button press in plotMutacao.
function plotMutacao_Callback(hObject, eventdata, handles)
% hObject    handle to plotMutacao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of plotMutacao
handles.plotMutacao = get(hObject,'Value');
guidata(hObject,handles)

% --- Executes on button press in plotSobrev.
function plotSobrev_Callback(hObject, eventdata, handles)
% hObject    handle to plotSobrev (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of plotSobrev
handles.plotSobrev = get(hObject,'Value');
guidata(hObject,handles)
