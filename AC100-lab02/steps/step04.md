In this step you will create a keyspace and a table.

Welcome to the KillrVideo company! KillrVideo hired you to build the latest and greatest video sharing application on the Internet. Your task is to ramp up on the domain and become acquainted with Apache Cassandra. To start, you are looking into creating a table schema and to load some data.

The video metadata is made up of:

<table class="katapod-table">
  <tr>
    <th>Column Name</th>
    <th>Date Type </th>
  </tr>
  <tr>
    <td>video_id</td>
    <td>timeuuid</td>
  <tr>  
  <tr>
    <td>added_date</td>
    <td>timestamp</td>
  <tr>
    <tr>
    <td>title</td>
    <td>text</td>
  <tr>
</table>

<br>

✅ Use `nodetool` to verify that Cassandra is running (you may need to run this multiple times):
```
nodetool status
```{{exec}}

✅ Start the command line tool `cqlsh`:
```
cqlsh
```{{exec}}

✅ Create a keyspace called *killrvideo*. Use `SimpleStrategy` for the replication class with a replication factor of one.

<details class="katapod-details">
  <summary>Solution</summary>

```
CREATE KEYSPACE killrvideo
WITH replication = {
  'class':'SimpleStrategy', 
  'replication_factor': 1
};
```{{exec}}

</details>
<br>

✅ Switch to the newly created keyspace with the *Use* command:
<details class="katapod-details">
  <summary>Solution</summary>

```
use killrvideo;
```{{exec}}
</details>
<br>

✅ Create a table called `videos` with columns `video_id` of type `TIMEUUID`, `added_date` of type `TIMESTAMP` and `title` of type `TEXT`. Designate `video_id` as the primary key.

<details class="katapod-details">
  <summary>Solution</summary>

```
CREATE TABLE videos (
  video_id TIMEUUID,
  added_date TIMESTAMP,
  title TEXT,
  PRIMARY KEY (video_id)
);
```{{exec}}
</details>