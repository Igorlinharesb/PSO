function [ Populacao, MelhorGlobal, Gt ] = InicializaDados(RangeX, RangeY, nparticulas)

    %Inicializando os parametros
    Posicao = zeros(nparticulas, 2);
    Velocidade = zeros (nparticulas, 2);
    Valor = zeros (nparticulas, 1);
    MelhorPosicao = zeros(nparticulas, 2);
    MelhorValor = zeros (nparticulas, 1);
    MelhorGlobal = 0; %O melhor global começa com o pior valor possível, no caso 0.
    Gt = zeros(1,2);

    for i=1:nparticulas
        %Povoando o enxame
        Posicao(i,1)= unifrnd(min(RangeX),max(RangeX));
        Posicao(i,2)= unifrnd(min(RangeY),max(RangeY));
    
        %Calculando os valores iniciais
        Valor(i,1)= func(Posicao(i,1),Posicao(i,2));
    
        %Atribuindo os valores iniciais aos melhores valores
        MelhorPosicao(i,1) = Posicao(i,1);
        MelhorPosicao(i,2) = Posicao(i,2);
        MelhorValor(i,1) = Valor(i,1);
    
        if (MelhorValor(i,1)>MelhorGlobal)
            MelhorGlobal = MelhorValor(i,1); 
            Gt = [MelhorPosicao(i,1) MelhorPosicao(i,2)];
        end
    end

    Populacao = [Posicao Velocidade Valor MelhorPosicao MelhorValor];
end

