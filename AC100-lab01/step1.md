In this step, you will verify that the appropriate version of Java is installed, then you iwll download Cassandra and extraxt it into a directory. 

✅ Check the JDK version.
```
java -version
```{{execute T1}}

✅ After verifying that the version is 11.0.23, clear the screen and continue to the next step.
```
clear
```{{execute T1}}

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
```

✅ View the downloaded tarball:
```
ls -l
```

✅ Extract tarball:
```
tar xf apache-cassandra-5.0-beta1-bin.tar.gz
```

The directory should now contain the tarball and the `apache-cassandra-4.1.3` directory

✅ View the directory:
```
ls -l
```