# Course Management System

Sistema de gerenciamento de cursos educacionais desenvolvido com Spring Boot. Esta API permite gerenciar cursos, ofertas, recursos, seções, lições, matrículas e interações entre usuários.

## 📋 Descrição

API REST para plataforma de ensino que permite:
- Gerenciamento de cursos e ofertas
- Sistema de matrículas e entregas
- Fórum de discussão (tópicos e respostas)
- Recursos educacionais (lições, tarefas, links externos)
- Notificações para usuários
- Sistema de roles e permissões

## 🛠️ Tecnologias

- **Java 21**
- **Spring Boot 3.5.8**
- **Spring Data JPA**
- **H2 Database** (banco de dados em memória)
- **Maven**

## 📊 Diagrama UML

![Diagrama UML do Projeto](public/Uml-Course.png)

## 🏗️ Estrutura do Projeto

### Entidades Principais

- **User**: Usuários do sistema com roles e permissões
- **Course**: Cursos oferecidos na plataforma
- **Offer**: Ofertas/edições de cursos com datas de início e fim
- **Section**: Seções que compõem um curso
- **Lesson**: Lições abstratas que podem ser **Task** (tarefas) ou **Content** (conteúdo)
- **Resource**: Recursos educacionais vinculados a ofertas
- **Enrollment**: Matrículas de usuários em ofertas
- **Deliver**: Entregas de tarefas pelos alunos
- **Topic**: Tópicos do fórum
- **Reply**: Respostas aos tópicos
- **Notification**: Notificações para usuários

### Enumerations

- **ResourceType**: Tipos de recursos (LESSON_ONLY, LESSON_TASK, FORUM, EXTERNAL_LINK)
- **DeliverStatus**: Status das entregas (PENDING, ACCEPTED, REJECTED)
- **Role**: Papéis dos usuários no sistema

## 🚀 Como Executar

### Pré-requisitos

- Java 21 ou superior
- Maven 3.6+ (ou use o wrapper incluído: `mvnw`)

### Executando a aplicação

```bash
# Usando Maven wrapper (Linux/Mac)
./mvnw spring-boot:run

# Usando Maven wrapper (Windows)
mvnw.cmd spring-boot:run

# Ou usando Maven instalado
mvn spring-boot:run
```

A aplicação estará disponível em `http://localhost:8080`

## 📁 Estrutura de Diretórios

```
course/
├── src/
│   ├── main/
│   │   ├── java/com/gtech/course/
│   │   │   ├── CourseApplication.java
│   │   │   ├── entities/          # Entidades JPA
│   │   │   └── repositories/      # Repositórios Spring Data
│   │   └── resources/
│   │       ├── application.properties
│   │       ├── application-dev.properties
│   │       ├── application-prod.properties
│   │       ├── application-test.properties
│   │       └── import.sql          # Script de inicialização
│   └── test/
└── public/
    └── Uml-Course.png             # Diagrama UML
```

## 🔧 Configuração

O projeto possui diferentes perfis de configuração:
- **dev**: Ambiente de desenvolvimento
- **test**: Ambiente de testes
- **prod**: Ambiente de produção

Configure as propriedades em `src/main/resources/application-{profile}.properties`

## 📝 Notas

- O banco de dados H2 é usado por padrão (em memória)
- Dados iniciais podem ser carregados através do arquivo `import.sql`
- O projeto segue o padrão de arquitetura Spring Boot com camadas de entidades e repositórios

## 👥 Autor

Desenvolvido como parte do projeto de cursos educacionais.

