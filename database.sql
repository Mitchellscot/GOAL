CREATE TABLE "images" ( 
    "id" serial primary key,  
    "title" varchar(50) not null,  
    "description" decimal, 
    "year" integer, 
    "path" text,
	"likes" integer
);

SELECT * FROM "images";
