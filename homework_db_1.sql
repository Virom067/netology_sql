CREATE DATABASE netology_homework_1;

CREATE TABLE IF NOT EXISTS musicians (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255) NOT NULL);

CREATE TABLE musical_genres (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255) NOT NULL);

CREATE TABLE musicians_to_musical_genres (
    id INTEGER PRIMARY KEY,
    musicians_id INTEGER NOT NULL REFERENCES musicians(id),
    musical_genres INTEGER NOT NULL REFERENCES musical_genres(id));

CREATE TABLE albums (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    release_year DATE);

CREATE TABLE albums_to_musicians (
    id INTEGER PRIMARY KEY,
    albums_id INTEGER NOT NULL REFERENCES albums(id),
    musicians_id INTEGER NOT NULL REFERENCES musicians(id));

CREATE TABLE track (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    duration INTEGER,
    albums_id INTEGER NOT NULL REFERENCES albums(id));

CREATE TABLE mix_tape (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    release_year DATE);

CREATE TABLE mix_tape_to_track (
    id INTEGER PRIMARY KEY,
    mix_tape_id INTEGER NOT NULL REFERENCES mix_tape(id),
    track_id INTEGER NOT NULL REFERENCES track(id));

