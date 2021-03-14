CREATE TABLE artists (
 name VARCHAR(20),
 birthplace VARCHAR(20),
 style VARCHAR(20),
 dateofbirth DATE,
 country varchar(100),
 PRIMARY KEY (name)
);

CREATE TABLE customers (
 id INTEGER,
 name VARCHAR(20),
 address VARCHAR(20),
 amount numeric(8,2),
 rating INTEGER,
 PRIMARY KEY (id)
);

CREATE TABLE artworks (
 title VARCHAR(20),
 year INTEGER,
 type VARCHAR(20),
 price numeric(8,2),
 artist_name VARCHAR(20),
 PRIMARY KEY (title),
 FOREIGN KEY(artist_name) REFERENCES artists(name)
);

CREATE TABLE likeartists (
 customer_id INTEGER,
 artist_name VARCHAR(20),
 PRIMARY KEY(artist_name, customer_id),
 FOREIGN KEY (artist_name) REFERENCES artists(name),
 FOREIGN KEY (customer_id) REFERENCES customers(id)
);