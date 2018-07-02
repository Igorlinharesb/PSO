%Universidade Federal do Ceara - Campus Sobral
%Inteligencia Computacional - 2018.1
%Prof. Jarbas Joaci
%374874 - Francisco Igor Felicio Linhares
%Funcao que Calcula a nova velocidade

function [NewX, NewVelocidade] = AtualizaValores(r1, r2, XAtual,...
                                 VelAtual, MelhorPessoal, MelhorGlobal)
    
    w = 0.9   ; c1 = 2; c2 = 2;
    
    NewVelocidade = w*VelAtual + c1*r1.*(MelhorPessoal - XAtual) ...
        +c2*r2.*(MelhorGlobal - XAtual);
    NewX = XAtual + NewVelocidade;   

end