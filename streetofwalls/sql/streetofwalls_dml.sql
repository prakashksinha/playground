USE streetofwalls;
CREATE TABLE IF NOT EXISTS streetofwalls_user (
  id    INT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'a primary key',
  fname VARCHAR(255)                            COMMENT 'the first name',
  lname VARCHAR(255)                            COMMENT 'the last name',
  email VARCHAR(255)                            COMMENT 'the email id'
) ENGINE = INNODB;
