CREATE TABLE `ssb`.`Meetups`.`finnhubstonks` (
  `uuid` VARCHAR(2147483647),
  `symbol` VARCHAR(2147483647),
  `ts` DOUBLE,
  `currentts` DOUBLE,
  `volume` DOUBLE,
  `price` DOUBLE,
  `tradeconditions` VARCHAR(2147483647),
  `eventTimeStamp` TIMESTAMP(3) WITH LOCAL TIME ZONE METADATA FROM 'timestamp',
  WATERMARK FOR `eventTimeStamp` AS `eventTimeStamp` - INTERVAL '3' SECOND
) WITH (
  'scan.startup.mode' = 'group-offsets',
  'deserialization.failure.policy' = 'ignore_and_log',
  'properties.request.timeout.ms' = '120000',
  'properties.auto.offset.reset' = 'earliest',
  'format' = 'json',
  'properties.bootstrap.servers' = 'kafka:9092',
  'connector' = 'kafka',
  'properties.transaction.timeout.ms' = '900000',
  'topic' = 'finnhubstocks',
  'properties.group.id' = 'finnhubstonksflink'
)
