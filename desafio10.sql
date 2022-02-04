SELECT
	c.nome,
	COUNT(h.data_reproducao) AS reproducoes
FROM
	SpotifyClone.cancao AS c
JOIN
	SpotifyClone.historico AS h
ON
	c.id = h.cancao_id
WHERE
	usuario_id IN (1, 4, 5)
GROUP BY
	cancao_id
ORDER BY
	c.nome;