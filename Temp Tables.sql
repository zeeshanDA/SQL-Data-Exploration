/* ==========================================	Creating Temp Tables	==================================================================*/

Create Table #temp_GoodRating 
(
Title nvarchar (255), 
Review nvarchar(4000), 
Cons_rating float, 
Cloth_class nvarchar(255)
)

INSERT into #temp_GoodRating  
Select Title, Review, Cons_rating, Cloth_class 
From PortfolioProject1..CustomerReviews$
Where Cons_rating > 3 

-- BAD RATING TABLES

Create Table #temp_BadRating 
(
Title nvarchar (255), 
Review nvarchar(4000), 
Cons_rating float, 
Cloth_class nvarchar(255)
)
Insert into #temp_BadRating 
Select Title, Review, Cons_rating, Cloth_class 
From CustomerReviews$
Where Cons_rating <= 3 

-- Recommended Products 

Create Table #temp_Recommended 
(
Title nvarchar (255), 
Review nvarchar(4000), 
Cons_rating float, 
Cloth_class nvarchar(255)
)

Insert into #temp_Recommended
Select Title, Review, Cons_rating, Cloth_class 
From CustomerReviews$
Where Title like '%recommend%' and Cons_rating > 3


/* ==================================================================================================================================================================*/


-- Tables


Select *
From #temp_GoodRating

Select *
From #temp_BadRating

Select * 
From #temp_Recommended