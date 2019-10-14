
create view explorer_infomation1 as
select servent_id, region_name, origin_name, prototype_name, r.region_id, o.origin_id, p.prototype_id
from servent_and_prototype
         inner join prototype p on servent_and_prototype.prototype_id = p.prototype_id
         inner join prototype_and_region par on p.prototype_id = par.prototype_id
         inner join region r on par.region_id = r.region_id
         inner join prototype_and_origin pao on p.prototype_id = pao.prototype_id
         inner join origin o on pao.origin_id = o.origin_id;
