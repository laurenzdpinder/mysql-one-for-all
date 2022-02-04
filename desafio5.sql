SELECT
	c.nome AS cancao,
    COUNT(h.cancao_id) AS reproducoes
FROM
	SpotifyClone.cancao AS c
JOIN
	SpotifyClone.historico AS h
ON
	c.id = h.cancao_id
GROUP BY
	c.id
ORDER BY
	reproducoes DESC,
    cancao
LIMIT
	2;