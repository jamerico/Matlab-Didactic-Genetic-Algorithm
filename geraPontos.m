function [pop] = geraPontos(pontoInicial, tamanho,variancia)
%ponto inicial = [x,y]
dimensao = size(pontoInicial);
pop = [];
for k=1:dimensao(2)
    
    x1 = random('Normal',pontoInicial(k),variancia,tamanho,1); %para a determinada dimens�o, gera "tamanho" pontos aleat�rios com m�dia na dimens�o e varian�a 5                                                                                                     %5.
                                                       
    pop = cat(2,pop,x1);
end
