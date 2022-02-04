SELECT
    ar.nome AS artista,
    al.nome AS album,
    COUNT(*) AS seguidores
FROM
	SpotifyClone.artista AS ar
JOIN
	SpotifyClone.album AS al
ON
	ar.id = al.artista_id
JOIN
	SpotifyClone.artista_usuario AS au
ON
	al.artista_id = au.artista_id
GROUP BY
	album,
    artista
ORDER BY
	seguidores DESC,
    artista,
    album;