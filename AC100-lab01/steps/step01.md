In this step, you will verify that the environment is set up to install and run Cassandra. 

Cassandra 5 requires at least JDK 11 so first we will verify that  we have the right JDK installed.

✅ Check the JDK version.
```
java -version
```{{exec T1}}

Verify that the version is 11.0.23

While connected through the terminal, you should verify the user account you are logged in with.

✅ Check the account
```
whoami
```{{exec T1}}

You are currently logged in as a *root* user.

Cassandra should *never* run under a user account with *root* privileges.
Fortunately, the lab environment setup created a new user in a new group to run Cassandra.

**User** : cassandra-user<br>
**Group**: cassandra


✅ Switch to *cassandra-user*.
```
su cassandra-user
```{{exec T1}}

✅ Navigate to cassandra-user's home directory.
```
cd /home/cassandra-user
```{{exec T1}}

You are now ready to install Cassandra into `/home/cassandra-user`.