In this step, you will start Cassandra and verify that it is running.

**Note: ** Cassandra is a *distributed* database, which means it operates across multiple nodes. For production deployments, it is essential to run multiple Cassandra instances to ensure reliability and performance. In this introductory lab you will start a single Cassandra instance.

✅ Change to the `cassandra` directory
```
cd cassandra
```{{exec T1}}

✅ View to the `cassandra` directory
```
ls -al
```{{exec T1}}

You should see `bin`, `conf`, `doc`, `lib`, `pylib`, and `tools` directories.

The Cassandra executable is in the `bin` directory and the configuration files are in the `conf` directory.

✅ Change to the `bin` directory
```
cd bin
```{{exec T1}}


✅ Start Cassandra in the background and send the console output to `/dev/null`.
```
./cassandra > /dev/null 2>&1 &
```{{exec T1}}