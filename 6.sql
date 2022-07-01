SELECT avg(SALARY)
from DEVELOPER
where DEVELOPERID in (SELECT DEVELOPERID
                      from DEVELOPER
                      where DEVELOPERID in (SELECT DEVELOPER_ID
                                            from DEVELOPER_PROJECT
                                            where PROJECT_ID in (SELECT PROJECTID
                                                                 from PROJECT
                                                                 where COST in (SELECT min(COST) from PROJECT)))
    )


