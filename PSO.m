%Universidade Federal do Ceara - Campus Sobral
%Inteligencia Computacional - 2018.1
%Prof. Jarbas Joaci
%374874 - Francisco Igor Felicio Linhares
%Algoritmo baseado em Particle Swarm Optimization (PSO)


%Limpa o ambiente de trabalho
clc;
clear;
close all;


%Estabelecendo o range de abrangencia de valores x e y
IntervaloX = ones (1,2);
IntervaloY = ones (1,2);

IntervaloX(1) = input ('Digite o primeiro limite da variavel x das solucoes: ');
IntervaloX(2) = input ('Digite o segundo limite da variavel x das solucoes: ');
IntervaloY(1) = input ('Digite o primeiro limite da variavel y das solucoes: ');
IntervaloY(2) = input ('Digite o segundo limite da variavel y das solucoes: ');

%Estabelecendo o numero maximo de particulas desejado

nPop = input ('digite o tamanho do enxame desejado: ');

%Inicializando os dados
[Pop , maxGlobal, Gt] = InicializaDados(IntervaloX, IntervaloY, nPop);

%Estabelecendo o numero maximo de iteracoes do algoritmo:
%imax = input ('digite o numero maximo de iteracoes do algoritmo: ');

