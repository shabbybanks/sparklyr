% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kubernetes_config.R
\name{spark_config_kubernetes}
\alias{spark_config_kubernetes}
\title{Kubernetes Configuration}
\usage{
spark_config_kubernetes(master, image = "spark:sparklyr",
  driver = random_string("sparklyr-"), account = "spark",
  jar = "local:///opt/sparklyr/sparklyr-2.3-2.11.jar", forward = TRUE, ...)
}
\arguments{
\item{master}{Kubernetes url to connect to, found by running \code{kubectl cluster-info}.}

\item{image}{Container image to use to launch Spark and sparklyr. Also known
as \code{spark.kubernetes.container.image}.}

\item{driver}{Name of the driver pod. If not set, the driver pod name is set
to "sparklyr" suffixed by id to avoid name conflicts. Also known as
\code{spark.kubernetes.driver.pod.name}.}

\item{account}{Service account that is used when running the driver pod. The driver
pod uses this service account when requesting executor pods from the API
server. Also known as \code{spark.kubernetes.authenticate.driver.serviceAccountName}.}

\item{jar}{Path to the sparklyr jars; either, a local path inside the container
image with the sparklyr jars copied when the image was created or, a path
accesible by the container where the sparklyr jars were copied. You can find
a path to the sparklyr jars by running \code{system.file("java/", package = "sparklyr")}.}

\item{forward}{Should ports used in sparklyr be forwarded automatically through Kubernetes?
Default to \code{TRUE} which runs \code{kubectl port-forward}.}

\item{...}{Additional parameters, currently not in use.}
}
\description{
Convenience function to initialize a Kubernetes configuration instead
of \code{spark_config()}, exposes common properties to set in Kubernetes
clusters.
}
