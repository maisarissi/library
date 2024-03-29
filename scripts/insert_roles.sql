INSERT INTO ROLE(ID_ROLE, ROLE) VALUES(1, 'ADMIN');
INSERT INTO ROLE(ID_ROLE, ROLE) VALUES(2, 'USER');
INSERT INTO ROLE(ID_ROLE, ROLE) VALUES(3, 'DONOR');

INSERT INTO BOOK_STATUS(ID, STATUS) VALUES(1, 'PENDING');
INSERT INTO BOOK_STATUS(ID, STATUS) VALUES(2, 'AVAILABLE');
INSERT INTO BOOK_STATUS(ID, STATUS) VALUES(3, 'DELETED');
INSERT INTO BOOK_STATUS(ID, STATUS) VALUES(4, 'RESERVED');
INSERT INTO BOOK_STATUS(ID, STATUS) VALUES(5, 'BORROWED');

INSERT INTO BOOK 	(ISBN, CODE, TITLE, AUTHOR, PUBLISHER, DESCRIPTION, STATUS_ID) 
	   VALUES 		(1, 1, 'O oceano no fim do caminho', 'Neil Gaiman', 'publisher', 'description', 2);
	   
INSERT INTO BOOK 	(ISBN, CODE, TITLE, AUTHOR, PUBLISHER, DESCRIPTION, STATUS_ID) 
	   VALUES 		(2, 1, 'Sandman', 'Neil Gaiman', 'publisher', 'description', 2);
	   
INSERT INTO BOOK 	(ISBN, CODE, TITLE, AUTHOR, PUBLISHER, DESCRIPTION, STATUS_ID) 
	   VALUES 		(3, 1, 'Deuses Americanos', 'Neil Gaiman', 'publisher', 'description', 2);
	   
INSERT INTO BOOK 	(ISBN, CODE, TITLE, AUTHOR, PUBLISHER, DESCRIPTION, STATUS_ID) 
	   VALUES 		(4, 1, 'Sonho de uma noite de verão', 'Shakspeare', 'publisher', 'description', 2);
	 
INSERT INTO BOOK 	(ISBN, CODE, TITLE, AUTHOR, PUBLISHER, DESCRIPTION, STATUS_ID) 
	   VALUES 		(5, 1, 'A batalha do apocalipse', 'Eduardo Spohr', 'publisher', 'description', 2);
	   
INSERT INTO BOOK 	(ISBN, CODE, TITLE, AUTHOR, PUBLISHER, DESCRIPTION, STATUS_ID) 
	   VALUES 		(6, 1, 'O oceano no fim do caminho', 'Neil Gaiman', 'publisher', 'description', 2);
	   
INSERT INTO BOOK 	(ISBN, CODE, TITLE, AUTHOR, PUBLISHER, DESCRIPTION, STATUS_ID) 
	   VALUES 		(7, 1, 'Sandman', 'Neil Gaiman', 'publisher', 'description', 2);
	   
INSERT INTO BOOK 	(ISBN, CODE, TITLE, AUTHOR, PUBLISHER, DESCRIPTION, STATUS_ID) 
	   VALUES 		(8, 1, 'Deuses Americanos', 'Neil Gaiman', 'publisher', 'description', 2);
	   
INSERT INTO BOOK 	(ISBN, CODE, TITLE, AUTHOR, PUBLISHER, DESCRIPTION, STATUS_ID) 
	   VALUES 		(9, 1, 'Sonho de uma noite de verão', 'Shakspeare', 'publisher', 'description', 2);
	 
INSERT INTO BOOK 	(ISBN, CODE, TITLE, AUTHOR, PUBLISHER, DESCRIPTION, STATUS_ID) 
	   VALUES 		(10, 1, 'A batalha do apocalipse', 'Eduardo Spohr', 'publisher', 'description', 2);
	   