#Desafio
Neste desafio, você deverá desenvolver dois projetos no playground usando o Xcode. 
Em ambos você deverá implementar o Paradigma de Programação Orientada a Objetos e 
explorar conceitos de Controle de Fluxos, Coleções, Funções, Closures, Enuns, Structs e Concorrência.

*******************************************************

#Importante destacar os conceitos aplicado no desenvolvimento do script do desafio do projeto 1 :

Enumerações: A enumeração GameState define os estados possíveis do jogo: started, won e lost. Isso fornece uma maneira clara e estruturada de representar o progresso do jogo.

Estruturas: A estrutura Letter encapsula informações sobre uma única letra da palavra, incluindo seu caractere e se ela foi adivinhada. As estruturas são úteis para agrupar dados relacionados em uma única unidade.

Classes: A classe HangmanGame representa o núcleo do jogo, gerenciando a palavra a ser adivinhada, rastreando letras adivinhadas e determinando o estado do jogo. As classes são essenciais para criar objetos com propriedades e comportamentos bem definidos.

Inicialização: O inicializador da classe HangmanGame aceita a palavra a ser adivinhada como entrada, configurando o estado inicial do jogo. A inicialização permite a construção de objetos com valores personalizados.

Métodos: A classe HangmanGame define vários métodos, incluindo didGuessLetter(), markLetterAsGuessed(), didWin(), didLose(), getState() e display(). Os métodos encapsulam ações e funcionalidades específicas dentro do jogo.

Controle de fluxo: O loop while na função main() verifica repetidamente o estado do jogo até que seja won ou lost. As declarações de controle de fluxo permitem a execução condicional com base em condições específicas.

Programação funcional: A função didWin() usa uma função de ordem superior allSatisfy() para verificar se todas as letras da palavra foram adivinhadas. As técnicas de programação funcional permitem código conciso e expressivo.

Entrada/saída: A função readLine() lê um único caractere do usuário, fornecendo entrada para o jogo. As operações de entrada/saída permitem a interação com o usuário.

Manipulação de strings: A função display() itera sobre a palavra, imprimindo as letras adivinhadas e sublinhados para letras não adivinhadas. As técnicas de manipulação de strings permitem modificar e acessar dados de string.

Gerenciamento de estado: A propriedade state da classe HangmanGame rastreia o estado atual do jogo, transitando entre started, won e lost. O gerenciamento de estado é crucial para manter o progresso do 