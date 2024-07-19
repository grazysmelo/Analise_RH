# Análise RH - Absenteísmo
<img src="https://github.com/grazysmelo/Analise_RH/blob/main/Absenteismo.png?raw=true">

### Contexto:
- O diretor do RH de uma empresa, nos contatou com para sanar algumas dúvidas sobre os possíveis motivos das faltas entre os funcionários estarem aumentando
a cada período que se passa. Foram liberados a tabela com as informações necessárias para a análise e alguns insights de pesquisa para ajudar na performace do trabalho.

### Objetivos:
- Vizualização clara dos maiores motivos para os absentismos
- Análise diagnóstica dos dados e comportamento dos funcionários
- Explicação dos possíveis motivos do acúmulo de faltas

### Consulta e testes
[clique aqui para vizualizar](https://github.com/grazysmelo/Analise_RH/blob/main/consultas.sql)
- Foram feitas consultas e funções para responder as perguntas do cliente, uilizando o SQLServer.
<img src="https://github.com/grazysmelo/Analise_RH/blob/main/sql.png?raw=true">

### ETL (Transformação, Extração e Carregamento)
- Após as análises finalizadas, os dados foram extraidos para o Power BI, e iniciei a criação do Dashboard.
- Foi necessário a utilização do Power Query para a criação de uma nova coluna, que com a ajuda de uma função DAX (IFS), reduzimos
a quantidade de filtros que continham as informações da distância de casa até o trabalho. Essa mudança foi feita para uma melhor vizualização
em gráficos e um entendimento mais fácil.

### Dashboard
<img src="https://github.com/grazysmelo/Analise_RH/blob/main/capa%20dashboard.png?raw=true">
<img src="https://github.com/grazysmelo/Analise_RH/blob/main/Dashboard.png?raw=true">

### Recomendações de melhorias
- Oferecer melhores condições no ambiente de trabalho, aumenta a satisfação dos funcionários e assim os motiva a trabalhar com uma melhor performance.
- Incentivar a qualidade de vida e alertar sobre a importância da saúde mental e física, irá trazer bons resultados na equipe. Incluir o home office como um formato de trabalho também pode ser atrativo.
- Garantir que as lideranças da empresa estejam bem preparadas e sempre deixar um canal de comunicação aberto entre os líderes e liderados da empresa.
