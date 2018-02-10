# Wordpress on Azure Container Services (AKS)

This lao is to provide a demo on how to build Wordpress in a Kubernetes Distributed Compute Cluster.

## Goals

1. Decoupling of the ```wp-uploads``` folder from the container image
  - We will want to have a shared network drive mounted ot this folder within each container
  - This will allow us to add additional wordpress container nodes without having to replicate the files in ```wp-uploads``` which are usually images
  - We will want to leverage some form of CDN to serve up static content (images and other larger binaries/blobs)
  - Use Persistent Volumes potentially with GlusterFS
2. Running the Database Service as either one of:
  - Database as a Service (DBaaS) using Azure Databases for MySQL (in Preview as of this lab)
  - MariaDB in a Galera Cluster on AKS with Persistent Volume Stores
3. Develop a new workflow for Developers and Administrators for upgrading Wordpress-core, plugins and themes
  - Suggest a new CI/CD process for updating Wordpress, Plugins and Themes
    - Stop the following in a **production** environment:
      - in-place/live upgrades of Wordpress directly
      - installing plugins via the Wordpress admin interface
      - installing/updating Wordpress themes live via the WP-Admin interface
    - Start the following in **dev** or **test** environments
      - use source control to update Wordpress-core, plugins and themes
      - use different target environments
      - automate the building/test/release of each new update
      - leverage containers for scalability and imdempotent deploys