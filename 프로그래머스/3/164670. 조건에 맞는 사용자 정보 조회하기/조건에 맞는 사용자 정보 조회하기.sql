SELECT      B.WRITER_ID AS USER_ID, U.NICKNAME AS NUCKNAME, 
            # 문자열을 이어붙여야 하는 경우, CONCAT() 사용. 
            CONCAT(U.CITY, ' ', U.STREET_ADDRESS1, ' ', U.STREET_ADDRESS2) AS 전체주소, 
            # 전화번호 사이에 하이픈을 넣기 위해 SUBSTR과 CONCAT을 조합하여 사용.
            CONCAT(SUBSTR(TLNO, 1, 3), '-', SUBSTR(TLNO, 4, 4), '-', SUBSTR(TLNO, 8, 4)) AS TLNO
FROM        USED_GOODS_BOARD B JOIN USED_GOODS_USER U ON B.WRITER_ID = U.USER_ID
GROUP BY    B.WRITER_ID
HAVING      COUNT(*) >= 3
ORDER BY    U.USER_ID DESC;