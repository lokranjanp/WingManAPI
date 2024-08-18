CREATE TABLE lines (
    id SERIAL PRIMARY KEY,
    content TEXT NOT NULL,
    language VARCHAR(50) DEFAULT 'English',
    likes INT DEFAULT 0,
    dislikes INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE pick_up_line_categories (
    line_id INT REFERENCES lines(id) ON DELETE CASCADE,
    category_id INT REFERENCES categories(id) ON DELETE CASCADE,
    PRIMARY KEY (line_id, category_id)
);

