In this step, you will install Cassandra. There are several methods to achieve this, including:

- Linux package managers
- Docker
- Tarball

**Note:** You could even skip the install altogether and use [Datastax AstraDB](https://www.datastax.com/products/datastax-astra) - *Cassandra-as-a-service* in the cloud! 

In this lab we will install Cassandra from a Tarball.

✅ Download the Cassandra tarball from an Apache CDN:
```
curl https://dlcdn.apache.org/cassandra/5.0-beta1/apache-cassandra-5.0-beta1-bin.tar.gz 
```{{exec}}

✅ View the downloaded tarball:
```
ls -l
```{{exec}}

<details class="katapod-details">
  <summary>Optional step - validation</summary>

✅ Download the Cassandra *keys* file from an Apache CDN:
```
curl https://dlcdn.apache.org/cassandra/5.0-beta1/apache-cassandra-5.0-beta1-bin.tar.gz.asc \
   --output keys.asc
```{{exec}}

✅ Download the Cassandra *signature* file from an Apache CDN:
```
curl https://dlcdn.apache.org/cassandra/5.0-beta1/apache-cassandra-5.0-beta1-bin.tar.gz.sha512 \
   --output signatues.sha512
```{{exec}}

✅ Validate the download with the keys and signatures:
```
gpg --import keys,asc
gpg --verify keys.asc apache-cassandra-5.0-beta1-bin.tar.gz
```{{exec}}

</details>



✅ Extract the tarball:
```
tar xf apache-cassandra-5.0-beta1-bin.tar.gz
```{{exec}}

✅ Delete the tarball:
```
rm apache-cassandra-5.0-beta1-bin.tar.gz
```{{exec}}

✅ Rename the directory:
```
mv apache-cassandra-5.0-beta1 cassandra
```{{exec}}

✅ View the directory:
```
ls -l
```{{exec}}

You should see the `cassandra` directory.