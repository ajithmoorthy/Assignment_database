-----------------------Query for hands on given by madhu-----------------------------------------------------------------------
select [dbo].[Author].Name,[dbo].[Book].Title,[dbo].[Book].Publish_year
from [dbo].[Author]  inner join [dbo].[Book] on Author.Id=Book.Author_id where Publish_year > 2005
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
select Book.Title as book_title,Adaptation.Title as adaptation_title,
[dbo].[Adaptation].Release_year,[dbo].[Book].Publish_year 
from Book inner join Adaptation 
on Book.Id = Adaptation.Book_Id 
where Adaptation.Release_year - Book.Publish_year <=4  AND 
Book.Rating < Adaptation.Rating
--------------------------------------------------------------------------------------------------