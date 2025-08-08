--DESAFIO

--1 - Buscar o nome e ano dos filmes

SELECT Nome, Ano FROM Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De volta para o Futuro'

--4 - Buscar os filmes lançados em 1997

SELECT * FROM Filmes WHERE Ano = 1997

--5 - Buscar os filmes lançados APÓS o ano 2000

SELECT * FROM Filmes WHERE Ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT ANO, COUNT(*) Quantidade FROM Filmes 
GROUP BY ANO
ORDER BY SUM(Duracao) DESC

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT * FROM Atores WHERE Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT * FROM Atores WHERE Genero = 'F'
ORDER BY "PrimeiroNome"

--10 - Buscar o nome do filme e o gênero

SELECT T0."Nome", T2."Genero" FROM "Filmes" T0
INNER JOIN "FilmesGenero" T1 ON T0."Id" = T1."IdFilme"
INNER JOIN "Generos" T2 ON T1."IdGenero" = T2."Id"

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT T0."Nome", T2."Genero" FROM "Filmes" T0
INNER JOIN "FilmesGenero" T1 ON T0."Id" = T1."IdFilme"
INNER JOIN "Generos" T2 ON T1."IdGenero" = T2."Id"
WHERE T2."Genero" = 'Mistério'
 
--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT T0."Nome", T2."PrimeiroNome", T2."UltimoNome", T1."Papel"
FROM "Filmes" T0
INNER JOIN "ElencoFilme" T1 ON T0."Id" = T1."IdFilme"
INNER JOIN "Atores" T2 ON T1."IdAtor" = T2."Id"