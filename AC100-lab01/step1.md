In this step, you will verify that the appropriate version of Java is installed, then you iwll download Cassandra and extraxt it into a directory. 

✅ Check the JDK version.
```
java -version
```{{exec T1}}

Verify that the version is 11.0.23

✅ Clear the screen.
```
clear
```{{exec T1}}

There are multiple ways to install Cassandra:

- Linux package managers
- Docker
- Tarball


**Note:** You could even skip the install altogether and use [Datastax AstraDB](https://www.datastax.com/products/datastax-astra) - *Cassandra-as-a-service* in the cloud! 

In this lab we will install Cassandra from a Tarball.

✅ Download the Cassandra tarball from an Apache CDN:
```
curl https://dlcdn.apache.org/cassandra/5.0-beta1/apache-cassandra-5.0-beta1-bin.tar.gz \
        --output apache-cassandra-5.0-beta1-bin.tar.gz
```{{exec T1}}

✅ View the downloaded tarball:
```
ls -l
```{{exec T1}}

✅ Extract tarball:
```
tar xf apache-cassandra-5.0-beta1-bin.tar.gz
```{{exec T1}}

The directory should now contain the tarball and the `apache-cassandra-4.1.3` directory

✅ View the directory:
```
ls -l
```{{exec T1}}