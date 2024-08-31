create table user (
    id int unsigned primary key auto_increment not null,
    email varchar(255) not null unique,
    password varchar(255) not null
);

create table item (
    id int unsigned primary key auto_increment not null,
    title varchar(255) not null,
    user_id int unsigned not null,
    foreign key (user_id) references user (id)
);

CREATE TABLE category (
    id INT UNSIGNED PRIMARY KEY auto_increment NOT NULL,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE program (
    id INT UNSIGNED PRIMARY KEY auto_increment NOT NULL,
    title VARCHAR(255) NOT NULL,
    synopsis TEXT NOT NULL,
    poster VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    year INT,
    category_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category (id)
);