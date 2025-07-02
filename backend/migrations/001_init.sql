CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255) UNIQUE NOT NULL,
  password_hash VARCHAR(255) NOT NULL,
  name VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE gear (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  name VARCHAR(255) NOT NULL,
  category VARCHAR(100),
  brand VARCHAR(100),
  model VARCHAR(100),
  serial_number VARCHAR(100),
  purchase_date DATE,
  condition VARCHAR(100),
  description TEXT,
  photo_url TEXT,
  receipt_url TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE maintenance_logs (
  id SERIAL PRIMARY KEY,
  gear_id INT REFERENCES gear(id),
  date DATE NOT NULL,
  description TEXT,
  type VARCHAR(100),
  reminder_date DATE,
  completed BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE teams (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE team_members (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  team_id INT REFERENCES teams(id),
  role VARCHAR(50)
);
