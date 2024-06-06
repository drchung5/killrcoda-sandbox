<!-- TOP -->
<div class="top">
  <img class="scenario-academy-logo" src="https://datastax-academy.github.io/katapod-shared-assets/images/ds-academy-2023.svg" />
  <div class="scenario-title-section">
    <span class="scenario-title">Install and Start<br>Apache Cassandra™</span>
    <span class="scenario-subtitle">ℹ️ For technical support, please contact us via <a href="mailto:academy@datastax.com">email</a>.</span>
  </div>
</div>

In this scenario you will learn how to upgrade an Apache Cassandra™ cluster from 3.x to 4.x. To keep the scenario from becoming too complex, in the hands on exercises of this senario you will perform a migration of a *single-node* cluster. 

Production Cassandra clusters always have multiple nodes. Therefore, steps have notes describing the *extra* work necessary to upgrade *multi-node* clusters.

In this scenarion, you will:
- Configure a single node Cassandra 3.x cluster
- Populate this cluster with data
- Prepare the cluster for upgrade
- Install Cassandra 4.x
- Start Cassandra 4.x cluster
- Verify that the data has upgraded to the Cassandra 4.x cluster

## Let's get started