function [ pontoMinimo, f_minimo, iteracoes, historicoDoMelhor,historicoNMelhores, historicoRecomb,historicoMutacao,historicoPop] = EstratEvol( funcao, pontoInicial, tol, maxIt, tamanhoPop, variancia, NSobreviventes, beta, alpha)
%historico do melhor = melhor de cada geracao
%historico dos sobreviventes = Nsobrevivente dos melhores
warning('off','all');
ponto=pontoInicial;
numI=0;
counter=0;
%------------- setup inicial

xyz=symvar(funcao);
dim=size(xyz);
dim=dim(1);

%------------ apenas se quisermos plotar aqui dentro
% if dim==2;
%      figure
% %     ezmesh(funcao)
%     hold on
% end
%-------------------- historicos de retorno

historicoNMelhores=[];
historicoDoMelhor = [];
historicoRecomb = [];
historicoMutacao = [];

%--------------- geramos a populacao
pop=geraPontos(pontoInicial,tamanhoPop,variancia);


%-------------- Ordenamos a poulacao
pop=evaluate(funcao,pop);
pop=sortPop(pop);
historicoPop = pop;

%----------------------- preenchendo os históricos

for kk=1:NSobreviventes
    historicoNMelhores=[historicoNMelhores pop(kk,:)]  %pega os NSobreviventes melhores pontos
end
historicoDoMelhor = [historicoDoMelhor pop(1,:)]; %pega o melhor sobrevivente

%-------------------- Setup para o Loop

tamanhoPop=size(pop);
indiceF=tamanhoPop(2);
minFAnterior=pop(1,indiceF);
% tic;
temp=(pop(1,:));


while 1
    pop=escolherNMelhores(pop,NSobreviventes);
    pop=pop(:,1:(indiceF-1));  %exclui a ultima coluna 
    pop=crossover(pop,alpha);
    %salva o historico de recombinacao
    %--------------------------------
    popRecomb = evaluate(funcao,pop);
    nComb = 2*nchoosek(NSobreviventes,2);  %quantidade de filhos
    historicoRecomb = cat(1,historicoRecomb,popRecomb(1:nComb,:))
    
    %------------------------------------------
    pop=mutacao(pop,beta);
    
    %salva o historico de mutacao
    %--------------------------
    popMutada = evaluate(funcao,pop);
    totalMutada = nComb*2;  %quantidade de recombinados
    historicoMutacao = cat(1,historicoMutacao,popMutada(1:totalMutada,:));
    %--------------------------

    if numI==maxIt
        disp('Exceeded limit of iterations')
        break
    end
    numI=numI+1
    pop=evaluate(funcao,pop);
    %evaluate eh a funcao que mais gasta tempo
    pop=sortPop(pop);
    
    %---------------- preenchemos o historico
    for kk=1:NSobreviventes
        historicoNMelhores=[historicoNMelhores pop(kk,:)];  %pega os NSobreviventes como melhores pontos
    end
    historicoDoMelhor = [historicoDoMelhor pop(1,:)];
    
    %------------------
    
    
    tamanhoPop=size(pop);
    tamanhoPop=tamanhoPop(1);
    deltaF=abs(pop(tamanhoPop,indiceF)-pop(1,indiceF));
    
    
    if deltaF<tol
        break
        disp('deltaF<tol')
    end
    if abs(pop(1,indiceF)-minFAnterior)<tol
        counter=counter+1;
        if counter==4
            break
        end
    else
        counter=0;
    end
    
    
    minFAnterior=pop(1,indiceF);    
    temp=(pop(1,:))
end

pontoMinimo = temp(1,1:2);
f_minimo = temp(1,3);
iteracoes=numI;
aux2 = size(historicoNMelhores);
sizeHist = aux2(2);
hold on



% %------------------------------ plot dos sobreviventes
% if dim==2
%     %plot3(historicoBom(1),historicoBom(2),historicoBom(3), 'r-o')
%     i=1;
%     ii = 1;
%     while i+5<=sizeHist
%         p3 = [historicoBom(i+0) historicoBom(i+1) historicoBom(i+2)];
%         %p1 = [historicoBom(i+3) historicoBom(i+4) historicoBom(i+5)];
%         %plot(p0,'r-o')
%
%         %p1 = [historicoRuim(i+0) historicoRuim(i+1) historicoRuim(i+2)];
%         pos = (i-1)/3+1
%         if mod(pos,NSobreviventes)==0
%             ii = ii+1 %avança para a proxima geracao
%         end
%
%
%
%         switch ii
%             case 1
%                 plot3(p3(1),p3(2),p3(3),'bo','LineWidth',2)
%                 %plot(p1,'b-o')
%             case 2
%                 plot3(p3(1),p3(2),p3(3),'go','LineWidth',2)
%                 %plot(p1,'g-o')
%             case 3
%                 plot3(p3(1),p3(2),p3(3),'yo','LineWidth',2)
%                 %plot(p1,'y-o')
%             case 4
%                 plot3(p3(1),p3(2),p3(3),'mo','LineWidth',2)
%                 %plot(p1,'m-o')
%             case 5
%                 plot3(p3(1),p3(2),p3(3),'co','LineWidth',2)
%                 %plot(p0,'c-o')
%             otherwise
%                 plot3(p3(1),p3(2),p3(3),'co','LineWidth',2)
%                 %plot(p0,'c-o')
%         end
%
%         %vectarrow(p0,p1)
%         hold on
%
%         disp('iteracao i')
%         i=i+3
%
%     end
% end

% aux3 = size(historicoDoMelhor)
% sizeHist = aux3(2);
%------------------------- plot dos melhores pontos
% if dim==2
%     plot3(historicoDoMelhor(1),historicoDoMelhor(2),historicoDoMelhor(3), 'r-o')
%     i=1;
%     ii = 1;
%     while i+5<=sizeHist
%         p0 = [historicoDoMelhor(i+0) historicoDoMelhor(i+1) historicoDoMelhor(i+2)];
%         p1 = [historicoDoMelhor(i+3) historicoDoMelhor(i+4) historicoDoMelhor(i+5)];
%
%
%         vectarrow(p0,p1)
%         hold on
%
%         i=i+3
%
%     end
% end
%
