
select * from popular_10000_movies_tmdb

 select 
 original_language,count(title) as movie_count
 from popular_10000_movies_tmdb
 where original_language in ('English','Hindi','Korean')
 group by  original_language


select * from (select title,
count(case when original_language='hindi' then 1  end) as hindi_lang,
count(case when original_language='english' then 1 end) as english_lang,
count(case when original_language='korean' then 1 end) as korean_lang
from popular_10000_movies_tmdb
group by title) a
order by hindi_lang desc , english_lang desc , korean_lang desc


select title, release_date , genres from popular_10000_movies_tmdb
where release_date between '1980' and '1985'


select  original_language , title
from popular_10000_movies_tmdb
where not original_language in ('english' , 'hindi' , 'korean')


select title , original_language,max(revenue) as revenue
from popular_10000_movies_tmdb
where original_language = 'english' and revenue > 2000000000
group by title , original_language


   
   