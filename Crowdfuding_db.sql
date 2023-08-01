CREATE TABLE campaign (cf_id integer, contact_id integer, company_name varchar(60),description varchar(60)
					  , goal integer, pledged integer, outcome varchar (30), backers_count integer, country varchar(30),
					  currency varchar(30), launched_date varchar(30), end_date varchar(30), category_id varchar(30),
					  subcategory_id varchar(30)) ; 
SELECT * FROM campaign;

CREATE TABLE category (category_id varchar(30), category varchar(30));
SELECT * FROM category;

CREATE TABLE new_contacts (contact_id integer, first_name varchar(30), last_name varchar(30), 
						   email varchar(30));

SELECT * FROM new_contacts; 

CREATE TABLE subcategory (subcategory_id varchar(30), subcategory varchar(30)); 
SELECT * FROM subcategory; 

ALTER TABLE campaign ALTER COLUMN goal SET DATA TYPE float;  
ALTER TABLE campaign ALTER COLUMN pledged SET DATA TYPE float;

ALTER TABLE new_contacts ALTER COLUMN contact_id SET DATA TYPE double precision;
ALTER TABLE new_contacts ALTER COLUMN contact_id SET DATA TYPE integer;

SELECT * FROM new_contacts;

ALTER TABLE new_contacts ALTER COLUMN email SET DATA TYPE varchar(250);

ALTER TABLE campaign 
ADD PRIMARY KEY (cf_id);

ALTER TABLE category
ADD PRIMARY KEY (category_id); 

ALTER TABLE new_contacts
ADD PRIMARY KEY (contact_id);

ALTER TABLE subcategory
ADD PRIMARY KEY (subcategory_id);

ALTER TABLE campaign
ADD CONSTRAINT FK_contacts
FOREIGN KEY (contact_id) REFERENCES new_contacts(contact_id);

SELECT * FROM new_contacts LIMIT 5;

INSERT INTO new_contacts (contact_id, first_name,last_name, email) 
VALUES (4661,'Cecilia','Velasco','cecilia.velasco@rodrigues.fr');

ALTER TABLE campaign
ADD CONSTRAINT FK_category
FOREIGN KEY (category_id) REFERENCES category(category_id);

ALTER TABLE campaign
ADD CONSTRAINT FK_subcat
FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id);

SELECT * FROM campaign;

					  