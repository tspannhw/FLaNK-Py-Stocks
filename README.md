# FLaNK-Py-Stocks

finnhub stocks

### Python App

Python application receives websocket stream of JSON arrays and sends individual JSON messages with a JSON schema.

![image](https://raw.githubusercontent.com/tspannhw/FLaNK-Py-Stocks/main/finnhubkafkacloduera.png)


### Raw Data
````

{"data":[{"c":["1","8","24","12"],"p":122.1,"s":"TSLA","t":1672348887195,"v":1},{"c":["1","8","24","12"],"p":122.09,"s":"TSLA","t":1672348887196,"v":4},{"c":["1","8","24","12"],"p":122.09,"s":"TSLA","t":1672348887196,"v":10},{"c":["1","8","24","12"],"p":122.1,"s":"TSLA","t":1672348887196,"v":1},{"c":["1","8","24","12"],"p":122.1,"s":"TSLA","t":1672348887196,"v":2},{"c":["1","8","24","12"],"p":122.1,"s":"TSLA","t":1672348887196,"v":10},{"c":["1","8","24","12"],"p":122.1,"s":"TSLA","t":1672348887198,"v":79},{"c":["1","24","12"],"p":129.58,"s":"AAPL","t":1672348887666,"v":1},{"c":["1","24","12"],"p":129.575,"s":"AAPL","t":1672348887785,"v":1}],"type":"trade"}

{"c":["1","8","24","12"],"p":122.1,"s":"TSLA","t":1672348887195,"v":1}

````


### Data Description

````
data
List of trades or price updates.

s
Symbol.

p
Last price.

t
UNIX milliseconds timestamp.

v
Volume.

c
List of trade conditions. A comprehensive list of trade conditions code can be found here
````

### Connect to pandas

https://jrott.com/posts/kafka-to-pandas/

https://docs.kanaries.net/pygwalker/use-pygwalker-with-streamlit.en

https://towardsdatascience.com/how-to-read-kafka-clickstream-event-data-in-pandas-96f50e88f7eb





### References

* https://finnhub.io/docs/api/authentication
* https://finnhub.io/docs/api/websocket-trades
* https://finnhub.io/
* https://github.com/Finnhub-Stock-API/finnhub-python
* https://medium.com/@augustin.goudet/introduction-to-finnhub-97c2117dd9a9
* https://medium.com/@tspann/lets-check-our-stocks-from-finnhub-and-do-some-real-time-analytics-1b7963008e19
