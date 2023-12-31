USE playground;

CREATE TABLE IF NOT EXISTS items (
  id            BIGINT AUTO_INCREMENT PRIMARY KEY,
  name          VARCHAR(50) NOT NULL,
  registered_at DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3),
  updated_at    DATETIME(3) DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3)
);
