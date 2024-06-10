In this step you will insert some data into the table and retrieve it.

✅ Manually insert a single row into the table using an `INSERT` statement:

<table class="katapod-table">
  <tr>
    <th>video_id</th>
    <th>added_date</th>
    <th>title</th>
  </tr>
  <tr>
    <td>36b8bac0-6260-11ea-ac4c-87a8af4b7ed0</td>
    <td>2020-03-09</td>
    <td>Foundations of DataStax Enterprise</td>
  <tr>  
  
</table>

<details class="katapod-details">
  <summary>Solution</summary>

```
INSERT INTO videos (video_id, added_date, title)
VALUES (36b8bac0-6260-11ea-ac4c-87a8af4b7ed0, '2020-03-09', 'Foundations of DataStax Enterprise');
```{{exec}}

</details>
<br>

✅ Use a `SELECT` statement to retrieve your row from the table:

<details class="katapod-details">
  <summary>Solution</summary>

```
SELECT * from videos;
```{{exec}}

</details>
<br>


✅ Insert another row into the table:

<table class="katapod-table">
  <tr>
    <th>video_id</th>
    <th>added_date</th>
    <th>title</th>
  </tr>
  <tr>
    <td>95fe9800-2c2f-11b2-8080-808080808080</td>
    <td>2020-01-20</td>
    <td>Cassandra Data Modeling</td>
  <tr>  
  
</table>

<details class="katapod-details">
  <summary>Solution</summary>


```
INSERT INTO videos (video_id, added_date, title) 
VALUES (95fe9800-2c2f-11b2-8080-808080808080, '2020-01-20', 'Cassandra Data Modeling');

```{{exec}}

</details>
<br>


✅ Retrieve all rows from the table:
```
SELECT * from videos;
```{{exec}}

✅ Delete all previously inserted rows from the table using the `TRUNCATE` statement and verify that the table is empty:

<details class="katapod-details">
  <summary>Solution</summary>

```
TRUNCATE videos;
SELECT * from videos;
```{{exec}}

</details>
<br>

✅ Use the `COPY` command to import data into your `videos` table:
```
COPY videos(video_id, added_date, title)
FROM '/var/lib/cassandra-user/data-files/videos.csv'
WITH HEADER=TRUE;
```{{exec}}

✅ Retrieve all rows from the table to verify that the table loaded correctly:
```
SELECT * from videos;
```{{exec}}