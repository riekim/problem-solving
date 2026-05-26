SELECT      SUBSTR(PRODUCT_CODE, 1, 2) AS CATEGORY, COUNT(*) AS PRODUCTS 
            /* 
            문자열을 원하는 길이만큼 잘라주는 SUBSTRING() 함수나 왼쪽에서부터 잘라주는 LEFT() 함수를 사용.
            SUBSTRING 혹은 SUBSTR(컬럼명, 시작위치, 가져올글자수) 형식.
            SQL에서는 인덱스가 1부터 시작.
            */
FROM        PRODUCT
GROUP BY    CATEGORY
ORDER BY    CATEGORY ASC;
