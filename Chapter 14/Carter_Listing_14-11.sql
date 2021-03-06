CREATE AVAILABILITY GROUP Linux_AOAG
	WITH (CLUSTER_TYPE = EXTERNAL)
    FOR REPLICA ON 'ubuntu-primary' WITH (
		   ENDPOINT_URL = N'tcp://ubuntu-primary:5022',
		   AVAILABILITY_MODE = SYNCHRONOUS_COMMIT,
		   FAILOVER_MODE = EXTERNAL,
		   SEEDING_MODE = AUTOMATIC
    ),
    'ubuntu-secondary' WITH ( 
		   ENDPOINT_URL = N'tcp://ubuntu-secondary:5022', 
		   AVAILABILITY_MODE = SYNCHRONOUS_COMMIT,
		   FAILOVER_MODE = EXTERNAL,
		   SEEDING_MODE = AUTOMATIC
    ) ;
GO
