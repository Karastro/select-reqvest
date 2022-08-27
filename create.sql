create table if not exists genres (
    id SERIAL primary key,
    name VARCHAR(60) not NULL
);

create table if not exists executor (
      id SERIAL primary key,
      name_executor VARCHAR(60) not NULL
);

create table if not exists compilation (
      id SERIAL primary key,
      name VARCHAR(60) not null,
      year_of_issue DATE
);

create table if not exists album (
      id SERIAL primary key,
      title VARCHAR(60) not null,
      year_of_issue DATE
);

create table if not exists track (
      id SERIAL primary key,
      title VARCHAR(60) not null,
      duration integer,
      album_id INTEGER references album(id)
);

create table if not exists genres_executor (
      executor_id INTEGER references executor(id),
      genres_id INTEGER references genres(id)
);

create table if not exists compilation_track (
      compilation_id INTEGER references compilation(id),
      track_id INTEGER references track(id)
);

create table if not exists album_executor (
      executor_id INTEGER references executor(id),
      album_id INTEGER references album(id)
);
