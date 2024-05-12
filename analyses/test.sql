select  timestamp, context_geolocation_location_city, referrer
from {{source('rudderstack','pages')}}
where timestamp >  NOW()  - INTERVAL '30 days'

-- select distinct(context_geolocation_location_city)
-- from {{source('rudderstack','pages')}}
-- where context_geolocation_location_country = 'UK'



