INSERT INTO CADASTRO(nome, email, senha,idade) VALUES('Aluno', 'aluno@email.com',  '$2a$10$/fsWl8haLXoqrD96WQbilO6RtDX1KUrUG5tt2mwnsSM4hmTW1zXqe',22);
INSERT INTO CADASTRO(nome, email, senha,idade) VALUES('Aluno1','aluno1@email.com', '$2a$10$/fsWl8haLXoqrD96WQbilO6RtDX1KUrUG5tt2mwnsSM4hmTW1zXqe',22);
INSERT INTO CADASTRO(nome, email, senha,idade) VALUES('Aluno2','aluno2@email.com', '$2a$10$/fsWl8haLXoqrD96WQbilO6RtDX1KUrUG5tt2mwnsSM4hmTW1zXqe',22);
INSERT INTO CADASTRO(nome, email, senha,idade) VALUES('Aluno3','aluno3@email.com', '$2a$10$/fsWl8haLXoqrD96WQbilO6RtDX1KUrUG5tt2mwnsSM4hmTW1zXqe',22);
INSERT INTO CADASTRO(nome, email, senha,idade) VALUES('Aluno4','aluno4@email.com', '$2a$10$/fsWl8haLXoqrD96WQbilO6RtDX1KUrUG5tt2mwnsSM4hmTW1zXqe',22);
INSERT INTO CADASTRO(nome, email, senha,idade) VALUES('Aluno5','aluno5@email.com', '$2a$10$/fsWl8haLXoqrD96WQbilO6RtDX1KUrUG5tt2mwnsSM4hmTW1zXqe',22);
INSERT INTO CADASTRO(nome, email, senha,idade) VALUES('Aluno6','aluno6@email.com', '$2a$10$/fsWl8haLXoqrD96WQbilO6RtDX1KUrUG5tt2mwnsSM4hmTW1zXqe',22);
INSERT INTO CADASTRO(nome, email, senha,idade) VALUES('Luis','luis@gmail.com', '$2a$10$g.jEbQuFjmt9DVU4Sey6eexmjQ4U01OsXVx82k/TZTzeyS.PkZ8QC',22);

INSERT INTO PERFIL(id,nome) VALUES(1,'ROLE_ALUNO');
INSERT INTO PERFIL(id,nome) VALUES(2,'ROLE_MENTOR');

INSERT INTO CADASTRO_PERFIS(cadastro_id,perfis_id) VALUES(1,1);
INSERT INTO CADASTRO_PERFIS(cadastro_id,perfis_id) VALUES(2,2);
INSERT INTO CADASTRO_PERFIS(cadastro_id,perfis_id) VALUES(8,2);