%Universidade Federal do Ceara - Campus Sobral
%Inteligencia Computacional - 2018.1
%Prof. Jarbas Joaci
%374874 - Francisco Igor Felicio Linhares
%Algoritmo baseado em Particle Swarm Optimization (PSO)


%Limpa o ambiente de trabalho
clc;
clear;
close all;


%Estabelecendo o numero maximo de particulas desejado

nPop = input ('digite o tamanho do enxame desejado: ');

%Inicializando os dados
[Pop , maxGlobal, Gt] = InicializaDados(nPop);
   
%Estabelecendo o numero maximo de iteracoes do algoritmo:
imax = input ('digite o numero maximo de iteracoes do algoritmo: ');

%Declarando os coeficientes randômicos
    r1 = rand(1,2);
    r2 = rand(1,2);

%Temos que:
    %Pop (:,1) = Valor da variavel X
    %Pop (:,2) = Valor da variavel Y
    %Pop (:,3) = Valor da velocidade na direcao X
    %Pop (:,4) = Valor da velocidade na direcao Y
    %Pop (:,5) = Valor da Funcao no ponto (x, y)
    %Pop (:,6) = Valor da coordenada X de Pi(t)
    %Pop (:,7) = Valor da coordenada Y de Pi(t) 
    %Pop (:,8) = Valor do máximo pessoal de cada particula
    %maxGlobal = O melhor valor da Funcao
    %Gt = Valores de X e Y para o melhor valor da funcao.
    
%Loop principal do algoritmo
 for i=1:imax
     for part=1:nPop
         Pop (part, 5) = func(Pop(part,1),Pop(part,2));
         
         if(Pop(part,5)>Pop(part,8))
             Pop(part,8) = Pop(part,5);
             Pop(part,6) = Pop(part,1);
             Pop(part,7) = Pop(part,2);        
         end
         
         if(Pop(part,5)>maxGlobal)
             maxGlobal = Pop(part,5);
             Gt = [Pop(part,1) Pop(part,2)];
         end
         
         Xatual = [Pop(part,1) Pop(part,2)];
         Vatual = [Pop(part,3) Pop(part,4)];         
         Ptatual = [Pop(part,6) Pop(part,7)];
         
         [NewX, NewV] = AtualizaValores(r1,r2,Xatual,Vatual,Ptatual,Gt);
         
         if(NewX(1)<=20 & NewX(2)<=20)
             Pop(part,1) = NewX(1);
             Pop(part,2) = NewX(2);
             Pop(part,3) = NewV(1);
             Pop(part,4) = NewV(2); 
             
             if(mod(part,10)==1)
                 plot(Pop(:,1),Pop(:,2),'*');
                 pause(1);
             end
         end
     end
 end
 
 Gt