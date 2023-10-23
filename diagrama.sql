//CODIGO EM MYSQL DO DIAGRAMA 

CREATE TABLE Hospital (
  id INT PRIMARY KEY
);

CREATE TABLE Internacoes (
  id INT PRIMARY KEY,
  hospital_id INT,
  FOREIGN KEY (hospital_id) REFERENCES Hospital(id)
);

CREATE TABLE Quartos (
  id INT PRIMARY KEY
);

CREATE TABLE Numeração (
  id INT PRIMARY KEY,
  quarto_id INT,
  FOREIGN KEY (quarto_id) REFERENCES Quartos(id)
);

CREATE TABLE Tipo_de_Quarto (
  id INT PRIMARY KEY,
  quarto_id INT,
  FOREIGN KEY (quarto_id) REFERENCES Quartos(id)
);

CREATE TABLE Descrição (
  id INT PRIMARY KEY,
  tipo_de_quarto_id INT,
  FOREIGN KEY (tipo_de_quarto_id) REFERENCES Tipo_de_Quarto(id)
);

CREATE TABLE Valor_Diário (
  id INT PRIMARY KEY,
  tipo_de_quarto_id INT,
  FOREIGN KEY (tipo_de_quarto_id) REFERENCES Tipo_de_Quarto(id)
);

CREATE TABLE Profissionais_de_Enfermagem (
  id INT PRIMARY KEY,
  internacao_id INT,
  FOREIGN KEY (internacao_id) REFERENCES Internacoes(id)
);

CREATE TABLE Nome (
  id INT PRIMARY KEY,
  profissionais_de_enfermagem_id INT,
  FOREIGN KEY (profissionais_de_enfermagem_id) REFERENCES Profissionais_de_Enfermagem(id)
);

CREATE TABLE CPF (
  id INT PRIMARY KEY,
  profissionais_de_enfermagem_id INT,
  FOREIGN KEY (profissionais_de_enfermagem_id) REFERENCES Profissionais_de_Enfermagem(id)
);

CREATE TABLE Registro_no_Conselho_de_Enfermagem (
  id INT PRIMARY KEY,
  profissionais_de_enfermagem_id INT,
  FOREIGN KEY (profissionais_de_enfermagem_id) REFERENCES Profissionais_de_Enfermagem(id)
);

CREATE TABLE Paciente (
  id INT PRIMARY KEY
);

CREATE TABLE Médico_Responsável (
  id INT PRIMARY KEY
);

CREATE TABLE Sistema_Clinico (
  id INT PRIMARY KEY
);

CREATE TABLE Consultas (
  id INT PRIMARY KEY,
  sistema_clinico_id INT,
  FOREIGN KEY (sistema_clinico_id) REFERENCES Sistema_Clinico(id)
);

CREATE TABLE Dados_Pessoais (
  id INT PRIMARY KEY,
  sistema_clinico_id INT,
  FOREIGN KEY (sistema_clinico_id) REFERENCES Sistema_Clinico(id)
);

CREATE TABLE Especialidades (
  id INT PRIMARY KEY,
  dados_pessoais_id INT,
  FOREIGN KEY (dados_pessoais_id) REFERENCES Dados_Pessoais(id)
);

CREATE TABLE Data_e_Hora (
  id INT PRIMARY KEY,
  consultas_id INT,
  FOREIGN KEY (consultas_id) REFERENCES Consultas(id)
);

CREATE TABLE Médico (
  id INT PRIMARY KEY,
  consultas_id INT,
  FOREIGN KEY (consultas_id) REFERENCES Consultas(id)
);

CREATE TABLE Paciente_1 (
  id INT PRIMARY KEY,
  consultas_id INT,
  FOREIGN KEY (consultas_id) REFERENCES Consultas(id)
);

CREATE TABLE Valor_da_Consulta (
  id INT PRIMARY KEY,
  consultas_id INT,
  FOREIGN KEY (consultas_id) REFERENCES Consultas(id)
);

CREATE TABLE Nome_do_Convênio_e_Número_da_Carteira (
  id INT PRIMARY KEY,
  consultas_id INT,
  FOREIGN KEY (consultas_id) REFERENCES Consultas(id)
);

CREATE TABLE Especialidade_Buscada (
  id INT PRIMARY KEY,
  consultas_id INT,
  FOREIGN KEY (consultas_id) REFERENCES Consultas(id)
);

CREATE TABLE Dados_Pessoais_1 (
  id INT PRIMARY KEY
);

CREATE TABLE Documentos (
  id INT PRIMARY KEY,
  dados_pessoais_id INT,
  FOREIGN KEY (dados_pessoais_id) REFERENCES Dados_Pessoais_1(id)
);

CREATE TABLE Convênio (
  id INT PRIMARY KEY,
  dados_pessoais_id INT,
  FOREIGN KEY (dados_pessoais_id) REFERENCES Dados_Pessoais_1(id)
);

CREATE TABLE Receita_Médica (
  id INT PRIMARY KEY,
  sistema_clinico_id INT,
  FOREIGN KEY (sistema_clinico_id) REFERENCES Sistema_Clinico(id)
);

CREATE TABLE Medicamentos (
  id INT PRIMARY KEY,
  receita_medica_id INT,
  FOREIGN KEY (receita_medica_id) REFERENCES Receita_Médica(id)
);

CREATE TABLE Quantidade (
  id INT PRIMARY KEY,
  medicamentos_id INT,
  FOREIGN KEY (medicamentos_id) REFERENCES Medicamentos(id)
);

CREATE TABLE Instruções_de_Uso (
  id INT PRIMARY KEY,
  medicamentos_id INT,
  FOREIGN KEY (medicamentos_id) REFERENCES Medicamentos(id)
);

CREATE TABLE Relatório_de_Receita (
  id INT PRIMARY KEY,
  receita_medica_id INT,
  FOREIGN KEY (receita_medica_id) REFERENCES Receita_Médica(id)
);