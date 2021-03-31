CREATE TABLE "images" ( 
    "id" serial primary key,  
    "title" varchar(50) not null,  
    "description" varchar(50) not null, 
    "year" integer, 
    "path" text,
	"likes" integer
);

SELECT * FROM "images";
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES ('Newborn!', 'The year I was born', 1984, 'https://i.ibb.co/k6r17K9/1984.jpg', 0)
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Eating Yogurt!', 'Mom said I loved vanilla yogurt!', 1985, 'https://i.ibb.co/GTykPT6/1985.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Family photo!', 'Matchy-Matchy!', 1986, 'https://i.ibb.co/8jwXxMR/1986.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Easter!', 'Found the eggs mom!', 1987, 'https://i.ibb.co/nMTtHky/1987.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Feeding Ducks!', 'Check out the medieval times hat!', 1988, 'https://i.ibb.co/KKCZHrX/1988.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Preschool!', 'Mischievous!', 1989, 'https://i.ibb.co/fnzjQqW/1989.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('New teeth!', 'No I did not keep it!', 1990, 'https://i.ibb.co/2sL6QTK/1990.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Learning to swim!', 'I loved swimming (still do!)', 1991, 'https://i.ibb.co/dGCqCdk/1991.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Caught a crab!', 'Traumatic experience!', 1992, 'https://i.ibb.co/5KHsTD0/1992.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Caught a fish!', 'Fishing in the Sierras, we went here every year!', 1993, 'https://i.ibb.co/WsJB5Ps/1993.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Fourth grade photo!', 'Wish I still had that shirt!', 1994, 'https://i.ibb.co/Q8Y7PV4/1994.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Soccer!', 'Maybe I should rescan this image...', 1995, 'https://i.ibb.co/phknG76/1995.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Swimming!', 'In the ocean with my bro in Catalina!', 1996, 'https://i.ibb.co/jL0pBM1/1996.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Christmas!', 'Not many good photos from this year!', 1997, 'https://i.ibb.co/txRB4rg/1997.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Started playing guitar!', 'First of many instruments', 1998, 'https://i.ibb.co/d5y00c0/1998.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Fishing in Mexico!', 'Such a cool dude!', 1999, 'https://i.ibb.co/RYzkcMv/1999.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('High School!', 'Braces and bleeched hair!', 2000, 'https://i.ibb.co/LR1ZfV4/2000.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Skating!', 'Pretending that i am surfing!', 2001, 'https://i.ibb.co/YWJdF8V/2001.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('High School Grad!', 'Graduation party!', 2002, 'https://i.ibb.co/XpNMdm5/2002.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('ATV On The Beach!', 'In Mexico!', 2003, 'https://i.ibb.co/M2LDFBN/2003.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('College!', 'Not many good photos this year!', 2004, 'https://i.ibb.co/1XFRFVZ/MINOLTA-DIGITAL-CAMERA.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('College buddies!', 'We were room mates and had a band!', 2005, 'https://i.ibb.co/x7L1ZZc/OLYMPUS-DIGITAL-CAMERA.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Playing in my band!', 'I love playing the drums!', 2006, 'https://i.ibb.co/TqzbhX6/2006.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Golf with the family!', 'Tube socks!', 2007, 'https://i.ibb.co/PtRKjTF/2007.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Snowboarding!', 'Ripping!', 2008, 'https://i.ibb.co/Q6sH9b1/2008.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('South Africa!', 'On a mission in SA!', 2009, 'https://i.ibb.co/BzxLJPK/2009.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Zip Lining!', 'Started my zip-lining career!', 2010, 'https://i.ibb.co/ZWjyMk3/2010.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Met my wife!', 'Met and married in the same year!', 2011, 'https://i.ibb.co/jwgHh6x/2011.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('First year of marriage!', 'It was awesome!', 2012, 'https://i.ibb.co/7YftBPh/2012.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Vacation in Tahoe!', 'Life before kids!', 2013, 'https://i.ibb.co/X8wS7nZ/2013.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Had a child!', 'And ran a marathon!', 2014, 'https://i.ibb.co/H4ftLsc/2014.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Fishing with my boy!', 'Lots of vacations this year!', 2015, 'https://i.ibb.co/NZwp5gy/2015.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Bought a house!', 'And moved to Minnesota!', 2016, 'https://i.ibb.co/3f5kdDj/2016.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Fun with work friends!', 'I love hanging with these guys!', 2017, 'https://i.ibb.co/9y8Cjsk/2017.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Look at those kids!', 'Where did they come from?', 2018, 'https://i.ibb.co/c304ztD/2017.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Family bike ride!', 'Love to bike - better with family!', 2019, 'https://i.ibb.co/9s5mH6j/2019.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Family is complete!', 'No more kids please!', 2020, 'https://i.ibb.co/kxrz3CF/2020.jpg', 0);
