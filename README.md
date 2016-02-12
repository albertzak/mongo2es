# Mongo2ES

Dead simple containerized and dumbed down [compose.io Transporter](https://github.com/compose/transporter), configured via env vars.

## Usage

  $ docker pull quay.io/rosalind/mongo2es
  $ docker run \
     -e M2E_SOURCE='mongodb://mongodb' \
     -e M2E_DESTINATION='http://elasticsearch:9200' \
     -e M2E_NAMESPACE='database.collection' \
     quay.io/rosalind/mongo2es

## License

Transporter and Mongo2ES are licensed under the New BSD License.
