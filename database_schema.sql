create table Users (
    id integer primary key autoincrement,
    username text not null,
    email text not null
);

create table Reservations (
    booking_id integer primary key autoincrement,
    user_id integer not null,
    booking_time text not null,
    status text default 'Confirmed',
    foreign key (user_id) references Users(id)
);