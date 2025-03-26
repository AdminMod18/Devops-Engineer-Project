-- Crear la base de datos si no existe
CREATE DATABASE my_database;

-- Conectar a la base de datos (esto se hace desde el cliente SQL, no en este script)

-- Crear la tabla de usuarios
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password TEXT NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertar usuario admin si no existe
INSERT INTO users (username, password, email)
VALUES ('admin', 'admin123', 'admin@example.com')
ON CONFLICT (username) DO NOTHING;
