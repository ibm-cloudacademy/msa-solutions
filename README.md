# msa-solutions
Local Test 3 Microservices and Solutions on docker

## Start Solutions : 
* postgres 
* kafka 
* redis 
* microservices

```
docker-compouse up -d
```

## Stop Solutions 

이전데이터를 모두 삭제하고 종료
```
docker-compouse down
```

## 필수사항
order/stock/payment 시작되었는지 logs를 확인후 테스트

```
docker logs -f 컨테이너ID

[tomcat 시작확인]
Tomcat started on port(s)
```
