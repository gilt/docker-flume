Flume Docker Image
==================

Define a base docker image to deploy a Flume Agent into a Docker Instance

To start the agent the user has to ADD their flume agent configuration
to /opt/flume/conf/flume.conf and set the FLUME_AGENT env variable to
declare what agent to run
