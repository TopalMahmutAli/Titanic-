/*
Create Table Passagers( IdPassager Int PRIMARY KEY,
			Nom Varchar(1000),
			sexe Varchar(1000), 
			age Int);


Create Table Reservation( Ticket Varchar(1000) PRIMARY KEY,
			   Cabine Varchar(1000),
			   Pclass Int, 
			   Embarked char, 
			   Prix Float,
			   IdPassager Int,
			   Foreign Key (IdPassager) references Passagers(IdPassager));


Create Table InfoSupClients( IdPassager Int,
			      Survivant Int,
			      Sibsp Int,
			      Parch Int,
			      Primary Key (IdPassager),
			      Foreign Key (IdPassager) references Passagers(IdPassager));
*/				

/*
--Question 1--
Select Pclass, count(*)
	From Reservation
		Group By Pclass;
		
		
--Question 2--
Select Pclass
	From Reservation 
		Group By Pclass;
*/		
--Question 3--
Select Sexe,count(sexe)
	From Passagers
		Inner Join Reservation
			on Passagers.IdPassager=Reservation.IdPassager
				group by Pclass, sexe;
				
/*
--Question 4--
Select Survivant, count(Survivant)
	From InfoSupClients
		Group by Survivant;
		
Select 342.0*100.0/891.0;

--Question 5--
Select Survivant,Pclass,count(Pclass)
	From Reservation
		as R
			Inner Join InfoSupClients
				as info
					on R.IdPassager=info.IdPassager
						Group By Pclass,Info,Survivant;

--Question 6--
Select sexe,Survivant,Pclass,count(Pclass)
	From Passagers
		as P
			Inner Join Reservation
				as R 
					on P.IdPassager=R.IdPassager
						Inner Join InfoSupClients
							as Info
								on R.IdPassager=Info.IdPassager
									group by sexe,Survivant,Pclass;


*/









