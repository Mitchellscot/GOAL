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
VALUES ('Newborn!', 'The year I was born', 1984, 'https://i.ibb.co/zG46gRF/1984.jpg', 0)
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Eating Yogurt!', 'Mom said I loved vanilla yogurt!', 1985, 'https://i.ibb.co/hR33nMy/1985.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Family photo!', 'Matchy-Matchy!', 1986, 'https://i.ibb.co/9vNkDxt/1986.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Easter!', 'Found the eggs mom!', 1987, 'https://i.ibb.co/h9XyxNF/1987.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Feeding Ducks!', 'Check out the medieval times hat!', 1988, 'https://i.ibb.co/w6Z52YF/1988.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Preschool!', 'Mischievous!', 1989, 'https://i.ibb.co/9rfKj3F/1989.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('New teeth!', 'No I did not keep it!', 1990, 'https://i.ibb.co/1KLDNNw/1990.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Learning to swim!', 'I loved swimming (still do!)', 1991, 'https://i.ibb.co/56HmKBd/1991.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Caught a crab!', 'Traumatic experience!', 1992, 'https://i.ibb.co/PxNqzNT/1992.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Caught a fish!', 'Fishing in the Sierras, we went here every year!', 1993, 'https://i.ibb.co/9YHr1Qq/1993.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Fourth grade photo!', 'Wish I still had that shirt!', 1994, 'https://i.ibb.co/m65Bxsx/1994.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Soccer!', 'Maybe I should rescan this image...', 1995, 'https://i.ibb.co/RHZmxcT/1995.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Swimming!', 'In the ocean with my bro in Catalina!', 1996, 'https://i.ibb.co/GTThnhT/1996.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Christmas!', 'Not many good photos from this year!', 1997, 'https://i.ibb.co/2k9z2Kc/1997.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Started playing guitar!', 'First of many instruments', 1998, 'https://i.ibb.co/8rc4vbs/1998.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Fishing in Mexico!', 'Such a cool dude!', 1999, 'https://i.ibb.co/yN6J6tc/1999.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('High School!', 'Braces and bleeched hair!', 2000, 'https://i.ibb.co/7rkh9cF/2000.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Skating!', 'Pretending that i am surfing!', 2001, 'https://i.ibb.co/QmNtkkD/2001.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('High School Grad!', 'Graduation party!', 2002, 'https://i.ibb.co/TPshhkT/2002.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('ATV On The Beach!', 'In Mexico!', 2003, 'https://i.ibb.co/njB77p7/2003.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('College!', 'Not many good photos this year!', 2004, 'https://i.ibb.co/fX9kKSC/MINOLTA-DIGITAL-CAMERA.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('College buddies!', 'We were room mates and had a band!', 2005, 'https://i.ibb.co/2NZ2Zt2/OLYMPUS-DIGITAL-CAMERA.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Playing in my band!', 'I love playing the drums!', 2006, 'https://i.ibb.co/wyx77gp/2006.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Golf with the family!', 'Tube socks!', 2007, 'https://i.ibb.co/3W3b25y/2007.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Snowboarding!', 'Ripping!', 2008, 'https://i.ibb.co/cFtGYBF/2008.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('South Africa!', 'On a mission in SA!', 2009, 'https://i.ibb.co/vk5jQc2/2009.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Zip Lining!', 'Started my zip-lining career!', 2010, 'https://i.ibb.co/BngQKmW/2010.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Met my wife!', 'Met and married in the same year!', 2011, 'https://i.ibb.co/hCkcPnr/2011.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('First year of marriage!', 'It was awesome!', 2012, 'https://i.ibb.co/D70FQmX/2012.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Vacation in Tahoe!', 'Life before kids!', 2013, 'https://i.ibb.co/1ZRLM7w/2013.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Had a child!', 'And ran a marathon!', 2014, 'https://i.ibb.co/pb19R5v/2014.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Fishing with my boy!', 'Lots of vacations this year!', 2015, 'https://i.ibb.co/1Tj4PHS/2015.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Bought a house!', 'And moved to Minnesota!', 2016, 'https://i.ibb.co/Yt5rsWm/2016.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Fun with work friends!', 'I love hanging with these guys!', 2017, 'https://i.ibb.co/9y8Cjsk/2017.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Look at those kids!', 'Where did they come from?', 2018, 'https://i.ibb.co/mTMcsxp/2018.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Family bike ride!', 'Love to bike - better with family!', 2019, 'https://i.ibb.co/kD3zKsf/2019.jpg', 0);
INSERT INTO "images" ("title", "description", "year", "path", "likes")
VALUES('Family is complete!', 'No more kids please!', 2020, 'https://i.ibb.co/LZ3m2sv/2020.jpg', 0);
