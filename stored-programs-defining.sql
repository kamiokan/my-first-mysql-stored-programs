-- https://dev.mysql.com/doc/refman/5.6/ja/stored-programs-defining.html
-- ストアドプロシージャの登録
DELIMITER //

CREATE PROCEDURE dorepeat(p1 INT)
BEGIN
  SET @x=0;
  REPEAT SET @x=@x+1; UNTIL @x > p1 END REPEAT;
END;
//

DELIMITER ;


-- ストアドプロシージャの実行
CALL dorepeat(1000);
SELECT @x;
