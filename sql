SELECT id
FROM your_table
WHERE id = ?
  AND NOT (
    A COLLATE utf8mb4_bin
    <=>
    B COLLATE utf8mb4_bin
  );
