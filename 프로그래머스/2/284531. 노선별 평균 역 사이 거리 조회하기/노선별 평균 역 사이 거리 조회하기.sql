SELECT      ROUTE, 
            # 총 누계거리는 역 사이 거리(D_BETWEEN_DIST)의 총합이므로 SUM(D_BETWEEN_DIST).
            CONCAT(ROUND(SUM(D_BETWEEN_DIST), 1), 'km') AS TOTAL_DISTANCE, 
            CONCAT(ROUND(AVG(D_BETWEEN_DIST), 2), 'km') AS AVERAGE_DISTANCE 
FROM        SUBWAY_DISTANCE
GROUP BY    ROUTE
ORDER BY    SUM(D_BETWEEN_DIST) DESC; 
/* 
SELECT 절에서 CONCAT을 수행하면서, TOTAL_DISTANCE의 타입이 String으로 변환. 
따라서 TOTAL_DISTANCE로 정렬 시 문자열 순으로 정렬되는 오류 발생. 
이러한 오류를 방지하기 위해 가공된 문자열이 아닌, 실제 숫자의 총합을 기준으로 내림차순 정렬하는 것이 안전하고 정확! 
*/