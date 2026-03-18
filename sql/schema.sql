CREATE TABLE categories(
    category_id integer PRIMARY KEY auto_increment,
    category_name text NOT NULL,
    catergory_type TEXT CHEKC(category_type IN ('income', 'expense')
);

CREATE TABLE transactions (
    transaction_id INTEGER PRIMARY KEY AUTOINCREMENT,
    date DATE NOT NULL,
    description TEXT,
    amount REAL NOT NULL,
    type TEXT CHECK(type IN ('income', 'expense')),
    category_id INTEGER,
    account TEXT,
    payment_method TEXT,
    
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE TABLE budgets (
    budget_id INTEGER PRIMARY KEY AUTOINCREMENT,
    category_id INTEGER,
    month TEXT, -- format: YYYY-MM
    amount_limit REAL,
    
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

