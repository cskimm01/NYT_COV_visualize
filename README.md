# NYT_COV_visualize

This project has been updated:

The star_schema_build file was used to create the dataset for this tableau viz:

https://public.tableau.com/app/profile/chris.kimmons/viz/NYTCovidDataAnalysis/ClicktoDrillDownMap

A full blog on it's creation is coming soon!

---------

With this project, I wanted to look at some covid statistics in a way that no one had presented them (that I had seen yet). My family is spead across the country, so I was curious about what case statistics looked like in each of our regions.  Also, while I included the 7 day average in my dataframe, I was more curious about how many people were portentially infectious at any given time.  I used a very large measure, two weeks, to make sure that any sign of the infection would have passed.  I then applied that to the rolling sum of new cases to see how many 'potentially contagious' cases were in the region.  

Also, since it is diffucult to compare California to West Virginia because of sheer difference of size, per capita had to be the best way to compare the case rates.  I pulled population data from the census bureau, but I also designed a web scraper to scrape wikipedia tables for each states population. (the next step would be to apply the years estimated population to the data from the corresponding year, to increase accuracy.)

This is the USA total over the full 3 years of covid, and then the three years stacked to compare:
<img width="1166" alt="Screenshot 2023-02-23 at 12 15 22 PM" src="https://user-images.githubusercontent.com/91866163/221000032-b42c25e3-186e-49a4-9da6-aab09279f358.png">

Same process, but for California:
<img width="1177" alt="Screenshot 2023-02-23 at 12 15 46 PM" src="https://user-images.githubusercontent.com/91866163/221000053-11de5cbb-ae92-4377-bb36-aa35c2e9dda3.png">

A regional comparison of the contagion rate per capita for Cook Co IL, Kanawha Co WV, and Alameda Co CA, against the same figure for USA:
<img width="1174" alt="Screenshot 2023-02-23 at 12 20 16 PM" src="https://user-images.githubusercontent.com/91866163/221000113-5ae50f81-bd0a-4bfa-9ea1-106965fe7e7d.png">

Case reports for each region compared to population size:
<img width="1172" alt="Screenshot 2023-02-23 at 12 20 27 PM" src="https://user-images.githubusercontent.com/91866163/220996232-caa8e392-1b80-4052-870b-6a694abc3b0f.png">
