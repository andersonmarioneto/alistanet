<?php
// Teste de conexão com MySQL via PDO (XAMPP)
// Execute via: php test-db.php

$host = '127.0.0.1';
$port = 3306;
$db   = 'alistanet';
$user = 'root';
$pass = '';
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;port=$port;dbname=$db;charset=$charset";
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];

try {
    $pdo = new PDO($dsn, $user, $pass, $options);
    echo "Conectado ao MySQL com sucesso!\n";

    $stmt = $pdo->query('SHOW TABLES');
    $tables = $stmt->fetchAll(PDO::FETCH_COLUMN);

    if (empty($tables)) {
        echo "Nenhuma tabela encontrada no banco de dados '$db'.\n";
    } else {
        echo "Tabelas existentes em '$db':\n";
        foreach ($tables as $table) {
            echo " - $table\n";
        }
    }
} catch (PDOException $e) {
    echo "Erro ao conectar: " . $e->getMessage() . "\n";
    exit(1);
}
