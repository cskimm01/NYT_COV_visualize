UPDATE public.dimCounty 
SET base2020 = (SELECT SUM(base2020) FROM dimCounty WHERE state = 'New York' AND county IN ('Bronx','Kings','New York','Queens','Richmond');)
WHERE county = 'New York City';

UPDATE public.dimCounty 
SET base2020 = (SELECT SUM(base2020) FROM dimCounty WHERE state = 'Alaska' AND county IN ('Yakutat City and Borough','Hoonah-Angoon Census Area');)
WHERE county = 'Yakutat plus Hoonah-Angoon';

UPDATE public.dimCounty 
SET base2020 = (SELECT SUM(base2020) FROM dimCounty WHERE state = 'Missouri' AND county IN ('Jasper','Newton');)
WHERE county = 'Joplin Area';

UPDATE public.dimCounty 
SET base2020 = (SELECT SUM(base2020) FROM dimCounty WHERE state = 'Missouri' AND county IN ('Clay','Cass','Jackson','Platte');)
WHERE county = 'Kansas City Area';

UPDATE public.dimCounty 
SET base2020 = (SELECT SUM(base2020) FROM dimCounty WHERE state = 'Alaska' AND county IN ('Bristol Bay Borough','Lake and Peninsula Borough');)
WHERE county = 'Bristol Bay plus Lake and Peninusla';

