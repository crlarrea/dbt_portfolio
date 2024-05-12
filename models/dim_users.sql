with users as (select  anonymous_id as id,
            context_geolocation_location_city as city,
            context_geolocation_location_continent_name as continent,
            context_geolocation_time_zone_id as timezone,
            timestamp    
from {{source('rudderstack','pages')}}
)

select * from users