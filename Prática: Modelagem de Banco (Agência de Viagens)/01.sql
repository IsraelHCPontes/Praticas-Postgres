CREATE TABLE "companies" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL UNIQUE,
	"acronym" TEXT NOT NULL UNIQUE,
	CONSTRAINT "companies_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "airports" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL UNIQUE,
	"acronym" TEXT NOT NULL UNIQUE,
	CONSTRAINT "airports_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "flights" (
	"id" serial NOT NULL,
	"acronym" TEXT NOT NULL UNIQUE,
	"departureId" integer NOT NULL,
	"destinationId" integer NOT NULL,
	"departureTime" DATE NOT NULL DEFAULT 'NOW()',
	"destinationTime" DATE NOT NULL DEFAULT 'NOW()',
	"companyId" integer NOT NULL,
	CONSTRAINT "flights_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);





ALTER TABLE "flights" ADD CONSTRAINT "flights_fk0" FOREIGN KEY ("departureId") REFERENCES "airports"("id");
ALTER TABLE "flights" ADD CONSTRAINT "flights_fk1" FOREIGN KEY ("destinationId") REFERENCES "airports"("id");
ALTER TABLE "flights" ADD CONSTRAINT "flights_fk2" FOREIGN KEY ("companyId") REFERENCES "companies"("id");



