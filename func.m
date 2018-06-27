%Universidade Federal do Ceara - Campus Sobral
%Inteligencia Computacional - 2018.1
%Prof. Jarbas Joaci
%374874 - Francisco Igor Felicio Linhares
%Funcao matematica para encontrar o máximo:

function valor = func (x,y)
    valor = abs( (x*(sin(y*pi/4))    +   y*(sin(x*pi/4))) );
end