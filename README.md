# Estrutura da Atividade

## Etapa 1 — Leitura guiada e diagrama

Tarefa: Em duplas, os alunos fazem um mapa das transformações executadas do Sol → Planeta → Lua.
Produto: Um diagrama simples (papel ou quadro digital) com caixas “Sol”, “Planeta i”, “Lua de i” e setas apontando as transformações.

> Feito no arquivo 'Diagrama Etapa 1.png'

## Etapa 2 — Explanação do fluxo de atualização

Tarefa: Identificar onde theta é incrementado, como orbitspeed influencia o movimento, e porque as velocidades das luas podem ser positivas ou negativas (órbita horária/anti-horária).
Produto: 3–5 bullet points que expliquem update() de Planet e Moon.

> * O update() de Planet é chamado pelo Sistema Solar na etapa draw(), ou seja, a cada frame gerado.
> * O update() de Planet chama internamente o update() de Moon.
> * Ambos os update() de Planet e de Moon incrementam seus valores internos de theta com seu valor interno de velocidade de órbita (orbitspeed).
> * O valor da velocidade de órbita é definido na inicialização da Classe, e é um valor fixo aleatório. A velocidade das luas pode ser positiva ou negativa dado que o valor aleatório fica entre 0,1 negativo e 0,1 positivo.
> * Como o valor de theta é usado para definir a rotação dos objetos em relação a quem o instanciou, o valor de velocidade de órbita impacta diretamente no movimento de rotação.
>
> Adicionados os desenhos/diagramas 'Definição de Classes.png' e 'Fluxo de Execução.png' para auxiliar no entendimento.

## Etapa 3 — Extensão

Cada dupla implementa as seguintes modificações preservando a arquitetura:

Planeta com duas luas
Duplicar a composição de Moon em um dos planetas e fazer cada uma ter orbitspeed e distance diferentes. (Extensão direta do padrão proposto no código original.)
Parâmetros visuais
Atribuir cores diferentes aos planetas e tamanhos diferenciados às luas. Manter a coerência com os campos diameter, distance e orbitspeed já presentes nas classes.
Etapa 4 — Relatório

Tarefa: Entregar um README (5–10 linhas) respondendo:
Onde você aplicou pushMatrix()/popMatrix() e por quê?
O que mudaria se invertêssemos rotate() e translate() no planeta ou na lua?
Como garantiu que cada órbita é independente das demais? (composição/atualização separada em update() e uso de matrizes aninhadas)
