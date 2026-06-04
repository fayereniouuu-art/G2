create table Users (
    id integer primary key autoincrement,
    username text not null,
    email text
);

create table  Reservations (
    booking_id integer primary key autoincrement,
    user_id integer not null,
    booking_time text not null,
    status text default "Comfirmed",
    foreign key (user_id) references Users(id)
);