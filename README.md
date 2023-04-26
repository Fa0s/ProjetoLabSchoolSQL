<h1 align="center">🚀 Projeto LabSchool SQL</h1>
<div align='center'>
    <img src="https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white"></img>
</div>
<br></br>

# 📰 Índice

- [Sobre](#-Sobre)
- [Requisitos do Projeto](#-Requisitos-do-Projeto)
- [Plano de Projeto](#-Plano-de-projeto)



 # 📃 Sobre 
 
 " *A escola de programação Lab School está com uma equipe de desenvolvedores focada na criação de uma aplicação para automatizar o armazenamento de informações referente aos alunos, pedagogos e professores no seu sistema. Para que o sistema funcione adequadamente, será necessário criar a modelagem e os scripts de banco de dados.* "

 # ✅ Requisitos do Projeto
 Tabelas:

- Aluno:
    * Campos:
        - Identificador: Único, obrigatório e auto-incremental
        - Identificador de endereço: Obrigatório
        - Nome completo: Obrigatório
        - CPF: Único e obrigatório
        - Data de Nascimento: Obrigatório
        - Telefone: Opcional
        - Estado da matrícula: Obrigatório
        - Nota do processo seletivo: Obrigatório
- Professor:
    - Campos:
        - Identificador: Único, obrigatório e auto-incremental
        - Identificador de endereço: Obrigatório
        - Nome completo: Obrigatório
        - CPF: Único e obrigatório
        - Data de Nascimento: Obrigatório
        - Telefone: Opcional
        - Formação: Obrigatório
        - Experiência: Obrigatório
        - Ativo no sistema (estado): Obrigatório
- Pedagogo:
    - Campos:
        - Identificador: Único, obrigatório e auto-incremental
        - Identificador de endereço: Obrigatório
        - Nome completo: Obrigatório
        - CPF: Único e obrigatório
        - Data de Nascimento: Obrigatório
        - Telefone: Opcional
        - Ativo no sistema (estado): Obrigatório
- Endereço:
    - Campos:
        - Identificador: Único, obrigatório e auto-incremental
        - CEP: Obrigatório
        - Logradouro: Obrigatório
        - Número: Obrigatório
        - Complemento: Opcional
        - Bairro: Obrigatório
        - Cidade: Obrigatório
        - UF: Obrigatório
- Atendimento Pedagógico:
    - Campos:
        - Identificador: Único, obrigatório e auto-incremental
        - Identificador do pedagogo: Obrigatório
        - Identificador do aluno: Obrigatório
        - Título do atendimento: Obrigatório
        - Descrição do atendimento: Obrigatório
        - Categoria do atendimento: Obrigatório
        - Estado do atendimento (ativo ou não): Obrigatório
- Relacionamentos:
    - As tabelas devem possuir os relacionamentos adequados através das chaves primárias e estrangeiras.
    <br></br>
    <img src='https://ik.imagekit.io/faos/exemplo_de_modelo_relacional.png?updatedAt=1681604394946'></img>
    
# 💭 Plano de projeto

Ao construir a aplicação proposta, o aluno estará colocando em prática os aprendizados em:
- **Programação Orientada a Objetos:** Conceitos de POO, Classes, Objetos, Métodos de Classes e Métodos Estáticos, Encapsulamento, Herança, Polimorfismo.
- **Modelagem:** Criação de Classes e Abstração
- **JAVA:** Ambiente virtual, Variáveis, Operadores lógicos, aritméticos e de comparação, Métodos, Listas, Condicionais, Strings, Loops e Funções.

<br></br>
### Desenvolvido por Filipe Oliveira 
<div align="center">
<a href='https://www.linkedin.com/in/faosoliveira/'>
    <img src='https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white'></img></a></div>

       
    
 
