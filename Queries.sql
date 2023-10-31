Select *
From CustomerReviews$

Select Title, Review, Cons_rating, Cloth_class
From CustomerReviews$
Where Cloth_class = NULL;

-- Data used for exploration

Select Title, Review, Cons_rating, Cloth_class
From CustomerReviews$

-- Highest Rating Cloth Class and Lower Rating Cloth Class

Select Title, Review, Cons_rating, Cloth_class 
From CustomerReviews$
Where Cons_rating > 3 

Select Title, Review, Cons_rating, Cloth_class 
From CustomerReviews$
Where Cons_rating <= 3 


-- Products recommended by customer

Select Title, Review, Cons_rating, Cloth_class 
From CustomerReviews$
Where Title like '%recommend%' and Cons_rating > 3

-- Cloth class with good sales and possible higher sales in future

Select Title, Review, Cons_rating, Cloth_class 
From CustomerReviews$
Where Title like '%recommend%' and Cons_rating = 5


-- Products that need development and considerations

Select Title, Review, Cons_rating, Cloth_class 
From CustomerReviews$
Where Cons_rating = 1 and Title like '%recommend'

Select Title, Review, Cons_rating, Cloth_class 
From CustomerReviews$
Where Cons_rating = 1 and Title like '%worst'

Select Title, Review, Cons_rating, Cloth_class 
From CustomerReviews$
Where Cons_rating = 1 and Title like '%poor'

Select Title, Review, Cons_rating, Cloth_class 
From CustomerReviews$
Where Cons_rating >= 1 and Title like '%disappointed'

Select Title, Review, Cons_rating, Cloth_class 
From CustomerReviews$
Where Cons_rating >=1 and Cons_rating < = 3

-- Cloth class with max highest rating and lower rating using Group By

Select Cloth_Class, max(Cons_rating) as HighestRating, min(Cons_rating) as LowRating
From CustomerReviews$
Group by Cloth_class

