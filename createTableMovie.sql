use movie_db;
-- create table movie(
-- `mov_id` int not null,
-- `mov_title` char(50) not null,
-- `mov_year` int not null,
-- `mov_time` int not null,
-- `mov_lang` char(50) not null,
-- `mov_dt_rel` date,
-- `mov_rel_country` char(5) not null,

-- constraint movie_pk primary key (mov_id)
-- );

-- create table director(
-- `dir_id` int not null,
-- `dir_fname` char(20) not null,
-- `dir_lname` char(20) not null,

-- constraint director_pk primary key(dir_id)
-- );

-- create table actor(
-- `act_id` int not null,
-- `act_fname` char(20) not null,
-- `act_lname` char(20) not null,
-- `gender` char(1) not null,

-- constraint actor_pk primary key (act_id)
-- );

-- create table genre(
-- `gen_id` int not null,
-- `gen_title` char(20) not null,

-- constraint genres_pk primary key (gen_id)
-- );

-- create table movie_cast(
-- `act_id` int not null,
-- `mov_id` int not null,

-- constraint foreign key (mov_id) references movie(mov_id),
-- constraint foreign key(act_id) references actor(act_id)
-- );

-- create table movie_direction(
-- `dir_id` int not null,
-- `mov_id` int not null,

-- constraint foreign key (dir_id) references director(dir_id),
-- constraint foreign key (mov_id) references movie(mov_id)
-- );

-- create table movie_genre(
-- `mov_id` int not null,
-- `gen_id` int not null,

-- constraint foreign key (mov_id) references movie (mov_id),
-- constraint foreign key (gen_id) references genre (gen_id)
-- );

-- create table reviewer(
-- `rev_id` int not null,
-- `rev_name` char(30) not null,

-- constraint reviewer_pk primary key (rev_id)
-- );
 create table rating(
`mov_id` int not null,
 `rev_id` int not null,
`rev_stars` numeric(4,2),
`num_o_ratings` int not null,

constraint foreign key (mov_id) references movie (mov_id),
constraint foreign key (rev_id) references reviewer (rev_id)
);