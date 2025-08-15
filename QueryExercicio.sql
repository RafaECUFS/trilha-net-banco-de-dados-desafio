SELECT Nome, Ano 
FROM dbo.Filmes

SELECT Nome, Ano, Duracao  
FROM dbo.Filmes
ORDER BY Ano

SELECT Nome, Ano, Duracao  
FROM dbo.Filmes
WHERE Nome = 'De Volta para o Futuro'

SELECT Nome, Ano, Duracao  
FROM dbo.Filmes
WHERE Ano = 1997

SELECT Nome, Ano, Duracao  
FROM dbo.Filmes
WHERE Ano > 2000

SELECT Nome, Ano, Duracao  
FROM dbo.Filmes
WHERE Duracao > 100
ORDER BY Duracao

SELECT Ano, Count(Ano) Quantidade
From dbo.Filmes
GROUP BY Ano
ORDER BY Quantidade desc

SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M'

SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

SELECT Filmes.Nome, Generos.Genero
FROM Filmes, Generos
INNER JOIN FilmesGenero FG ON Generos.Id = FG.IdGenero
WHERE Filmes.Id = FG.IdFilme

SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero FG ON Filmes.Id = FG.IdFilme
INNER JOIN Generos ON Generos.Id = FG.IdGenero
WHERE Filmes.Id = FG.IdFilme AND Generos.Genero = 'Mistério'

SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, Ef.Papel
FROM ElencoFilme EF
INNER JOIN Atores A ON A.Id = EF.IdAtor
INNER JOIN Filmes F ON F.Id = EF.IdFilme







