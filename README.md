# AlistaNet

**AlistaNet** é um sistema online de alistamento para as Forças Armadas Angolanas, desenvolvido para permitir que candidatos submetam suas candidaturas digitalmente, enquanto administradores podem gerenciar e avaliar cada processo de forma segura e eficiente.  

O projeto é modular, escalável e contextualizado à realidade angolana, construído com **Angular no frontend**, **PHP com PDO no backend** e **MySQL** como banco de dados.

---

## 🚀 Funcionalidades

### Para Candidatos
- Registro e login seguro
- Preenchimento de perfil pessoal
- Upload de documentos exigidos (BI, certificado escolar, foto, atestado médico)
- Submissão de candidatura
- Acompanhamento do status da candidatura

### Para Administradores
- Criação e gestão de processos de recrutamento
- Avaliação e alteração do estado das candidaturas
- Publicação de notícias relacionadas
- Monitoramento do progresso dos candidatos

---

## 🗂 Estrutura do Projeto

### Frontend (Angular)

src/
├── app/
│ ├── modules/
│ │ ├── auth/
│ │ ├── candidato/
│ │ ├── candidatura/
│ │ ├── noticias/
│ │ └── admin/
│ ├── services/
│ ├── guards/
│ └── models/

### Backend (PHP)

backend/
├── config/ # Conexão com banco de dados
├── models/ # Modelos de dados
├── controllers/ # Lógica de negócio
├── routes/ # Rotas da API REST
└── utils/ # Funções auxiliares


---

## 🛠 Tecnologias Utilizadas
- **Frontend:** Angular  
- **Backend:** PHP + PDO  
- **Banco de Dados:** MySQL  
- **Autenticação:** JWT (JSON Web Token)  
- **Segurança:** Senhas com `password_hash` e prepared statements  

---

## 💾 Banco de Dados
O projeto possui um modelo completo, incluindo tabelas de:  
- Candidato, Documentos, Habilitação  
- Administrador, Notícias  
- Categoria Militar, Processo de Recrutamento, Fases do Processo  
- Candidatura e Progresso da Candidatura  

Todos os relacionamentos usam **chaves estrangeiras** para manter a integridade dos dados.

---

## 📌 Como Rodar o Projeto

1. Cria o repositório:

https://github.com/andersonmarioneto/alisnet.git