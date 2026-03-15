# Configuração do Banco de Dados (MySQL / XAMPP)

Este documento explica como criar o banco de dados do **AlistaNet** no **XAMPP (MySQL)** e testar a conexão localmente.

## 1) Crie o banco de dados no MySQL

1. Abra o **XAMPP Control Panel** e inicie o **MySQL**.
2. Abra o **phpMyAdmin** (normalmente em http://localhost/phpmyadmin).
3. Na aba **SQL**, execute o comando abaixo:

```sql
CREATE DATABASE alistanet CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

## 2) Crie as tabelas básicas (schema)

1. Ainda no phpMyAdmin, selecione o banco `alistanet`.
2. Abra a aba **SQL** e cole o conteúdo de `backend/db/schema.sql`.
3. Execute o script (ele criará todas as tabelas necessárias para a versão inicial do projeto).

> 💡 Dica: se preferir executar via terminal, pode usar (Windows PowerShell):
>
> ```powershell
> mysql -u root -p alistanet < "c:\caminho\para\alisnet\backend\db\schema.sql"
> ```

## 3) Teste a conexão usando PHP (XAMPP)

1. Abra um terminal (cmd / PowerShell).
2. Navegue até o diretório do projeto:

```powershell
cd "c:\Users\Anderson Mário Neto\Downloads\Projectos\alistanet\backend\utils"
```

3. Execute:

```powershell
php test-db.php
```

Se estiver tudo certo, você verá uma lista de tabelas criadas no banco.

## 4) Próximos passos sugeridos

- Criar scripts para inserir dados iniciais (seed).
- Implementar a camada de autenticação usando JWT (como descrito no README).
- Criar endpoints REST em `backend/routes` (quando o backend estiver disponível).

---

📌 **Importante:** este repositório atualmente contém apenas documentação inicial. O código-fonte do backend e frontend será adicionado em etapas seguintes.
