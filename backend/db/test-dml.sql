-- =========================
-- ADMINISTRADORES
-- =========================
INSERT INTO administrador (nome, email, senha_hash, role)
VALUES
('João Silva', 'joao.silva@forcas.mil.ao', '$2y$10$exemploHash123', 'admin'),
('Maria Santos', 'maria.santos@forcas.mil.ao', '$2y$10$exemploHash456', 'gestor'),
('Carlos Pereira', 'carlos.pereira@forcas.mil.ao', '$2y$10$exemploHash789', 'avaliador');

-- =========================
-- CANDIDATOS
-- ========================= 
INSERT INTO candidato (nome, email, senha_hash, telefone, data_nascimento, genero)
VALUES
('Anderson Neto', 'anderson.neto@email.com', '$2y$10$hashAnderson', '924000001', '2005-03-15', 'M'),
('Ana Costa', 'ana.costa@email.com', '$2y$10$hashAna', '924000002', '2004-07-22', 'F'),
('Bruno Almeida', 'bruno.almeida@email.com', '$2y$10$hashBruno', '924000003', '2003-11-05', 'M');

-- =========================
-- CATEGORIAS MILITARES
-- =========================
INSERT INTO categoria_militar (nome, descricao)
VALUES
('Infantaria', 'Categoria de soldados de combate terrestre.'),
('Engenharia Militar', 'Responsável por construção e manutenção de infraestruturas.'),
('Comunicações', 'Especialistas em telecomunicações e informação.');

-- =========================
-- PROCESSOS DE RECRUTAMENTO
-- =========================
INSERT INTO processo_recrutamento (titulo, descricao, categoria_id, data_inicio, data_fim)
VALUES
('Recrutamento 2026 - Infantaria', 'Processo seletivo para a categoria de Infantaria.', 1, '2026-03-01', '2026-06-30'),
('Recrutamento 2026 - Engenharia', 'Seleção de candidatos para Engenharia Militar.', 2, '2026-04-01', '2026-07-31');

-- =========================
-- FASES DO PROCESSO
-- =========================
INSERT INTO fase_processo (processo_id, nome, descricao, ordem)
VALUES
(1, 'Inscrição', 'Envio de documentos e informações básicas', 1),
(1, 'Triagem Documental', 'Verificação de documentos do candidato', 2),
(1, 'Teste Físico', 'Avaliação física dos candidatos', 3),
(1, 'Exame Médico', 'Verificação de saúde e aptidão', 4),
(1, 'Resultado Final', 'Resultado aprovado ou rejeitado', 5),
(2, 'Inscrição', 'Envio de documentos para Engenharia', 1),
(2, 'Prova Teórica', 'Avaliação de conhecimentos técnicos', 2),
(2, 'Exame Médico', 'Avaliação médica dos candidatos', 3),
(2, 'Resultado Final', 'Resultado aprovado ou rejeitado', 4);

-- =========================
-- NOTÍCIAS
-- =========================
INSERT INTO noticia (titulo, conteudo, autor_id)
VALUES
('Início do Recrutamento 2026', 'O processo de recrutamento 2026 começou oficialmente.', 1),
('Regras para envio de documentos', 'Todos os candidatos devem enviar cópias autenticadas do BI e certificado escolar.', 2);

-- =========================
-- CANDIDATURAS
-- =========================
INSERT INTO candidatura (candidato_id, processo_id, status, nota)
VALUES
(1, 1, 'pendente', NULL),
(2, 1, 'pendente', NULL),
(3, 2, 'pendente', NULL);

-- =========================
-- DOCUMENTOS
-- =========================
INSERT INTO documento (candidato_id, tipo, caminho_arquivo)
VALUES
(1, 'bi', '/uploads/anderson_bi.pdf'),
(1, 'certificado', '/uploads/anderson_certificado.pdf'),
(1, 'foto', '/uploads/anderson_foto.jpg'),
(2, 'bi', '/uploads/ana_bi.pdf'),
(2, 'certificado', '/uploads/ana_certificado.pdf');

-- =========================
-- HABILITAÇÕES
-- =========================
INSERT INTO habilitacao (candidato_id, nivel, instituicao, curso, ano_conclusao)
VALUES
(1, 'II Ciclo', 'Escola Secundária de Luanda', 'Ciências Sociais', 2023),
(2, 'Técnico Médio', 'Escola Técnica de Engenharia', 'Informática', 2022),
(3, 'Licenciatura', 'Universidade Agostinho Neto', 'Engenharia Civil', 2021);

-- =========================
-- PROGRESSO DAS CANDIDATURAS
-- =========================
INSERT INTO progresso_candidatura (candidatura_id, fase_id, status, observacao)
VALUES
(1, 1, 'concluida', 'Inscrição enviada com sucesso'),
(1, 2, 'pendente', ''),
(2, 1, 'concluida', 'Inscrição enviada'),
(2, 2, 'pendente', ''),
(3, 1, 'concluida', 'Inscrição enviada'),
(3, 2, 'pendente', '');