create database beer;
use beer;
SELECT `alcohol`.`year`,
    `alcohol`.`region`,
    `alcohol`.`wine`,
    `alcohol`.`beer`,
    `alcohol`.`vodka`,
    `alcohol`.`champagne`,
    `alcohol`.`brandy`
FROM `beer`.`alcohol`;



-- Top 10 Regions with high consumption of wine

select region, sum(wine) as Amount from
alcohol
group by region 
order by sum(wine) desc
limit 10;

-- Top 10 Regions with high consumption of beer
select region, sum(beer) as Amount from
alcohol
group by region 
order by sum(beer) desc
limit 10;

-- Top 10 Regions with high consumption of Vodka
select region, sum(vodka) as Amount from
alcohol
group by region 
order by sum(vodka) desc
limit 10;

-- Top 10 Regions with high consumption of champagne
select region, sum(champagne) as Amount from
alcohol
group by region 
order by sum(champagne) desc
limit 10;

-- Top 10 Regions with high consumption of brandy
select region, sum(brandy) as Amount_consumed from
alcohol
group by region 
order by sum(brandy) desc
limit 10;

-- total amount of alcohol consumed

select 
round(sum(wine),2)as Total_amount_of_Wine,
round(sum(beer),2)as Total_amount_of_beer, 
round(sum(vodka),2)as Total_amount_of_Vodka,
round(sum(champagne),2)as Total_amount_of_champagne, 
round(sum(brandy),2)as Total_amount_of_brandy from
alcohol 
;

-- total amount of alcohol consumed by region
select region as Region,
round(sum(wine),2)as Total_amount_of_Wine,
round(sum(beer),2)as Total_amount_of_beer, 
round(sum(vodka),2)as Total_amount_of_Vodka,
round(sum(champagne),2)as Total_amount_of_champagne, 
round(sum(brandy),2)as Total_amount_of_brandy from
alcohol 
group by region
;

-- yearly distribution of alcohol consumption
select year,
round(sum(wine),2)as Total_amount_of_Wine,
round(sum(beer),2)as Total_amount_of_beer, 
round(sum(vodka),2)as Total_amount_of_Vodka,
round(sum(champagne),2)as Total_amount_of_champagne, 
round(sum(brandy),2)as Total_amount_of_brandy from
alcohol 
group by year
;






