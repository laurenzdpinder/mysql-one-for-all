SELECT
  u.nome AS usuario,
  COUNT(h.usuario_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(c.duracao) / 60, 2) AS total_minutos
FROM
  SpotifyClone.usuario AS u
JOIN
  SpotifyClone.historico AS h
ON
  u.id = h.usuario_id
JOIN
  SpotifyClone.cancao AS c
ON
  c.id = h.cancao_id
GROUP BY
  h.usuario_id
ORDER BY
  u.nome;