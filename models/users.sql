with users as (
    select  anonymous_id as id,
            context_ip as ip,
            context_geolocation_location_continent_name as continent,
            context_geolocation_time_zone_id as timezone
            
    from {{source('rudderstack','pages')}}
    limit 1
)

select * from users