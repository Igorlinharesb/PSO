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
    
    
%Estabelecendo o numero maximo de iteracoes do algoritmo:
%imax = input ('digite o numero maximo de iteracoes do algoritmo: ');

