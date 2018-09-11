---- this is the script Amanda used for the Budget Process.
--- Amanda's email address is currently in the success notification. 
--- you will need to swap it out if you want to get an email or email someone the file. 
select distinct a.id, c.id, p.name AS parentname, a.type, A.Giving_Vehicle__c,
case when a.recordtypeid like '012A0000000vUzD%' then 'household' else 'organization' end as accountrecordtype,
a.name, a.address_preferred_city__c, a.address_preferred_state__c,
 a.Relationship_Manager__c, a.staff_contact__c, a.portfolio__c, f.name as portfolioname, a.ranking__c, a.prospect_ranking__c, c.CVC_Member__c, 	c.CVC_Member_Status__c, cv__Deceased__c, a.Do_Not_Solicit__c, a.Lead_From__c, First_Combined_Amount_Nat__c, First_Combined_Date_Nat__c,
Last_Combined_Amount_Nat__c, Last_Combined_Date_Nat__c, Largest_Combined_Amount_Nat__c, Largest_Combined_Date_Nat__c,
 
 sum (case when 2012= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'C4 LCV' then amount else 0 end) as C4_2012,
  sum (case when 2012= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'LCV Action Fund (PAC)' then amount else 0 end) as PAC_2012,
   sum (case when 2012= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'Victory Fund' then amount else 0 end) as VF_2012,
    sum (case when 2012= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'C3 LCV Education Fund' then amount else 0 end) as C3_2012,
        sum (case when 2012= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c in ('Bundling', 'GGitS') then amount else 0 end) as Bundling2012,
    sum (case when 2012= DATE_PART_YEAR(closedate) and fund_type2__c = 'LCV 527' and StageName = 'Received' then amount else 0 end) as PEF_2012,
    ------------- 2013
  sum (case when 2013= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'C4 LCV' then amount else 0 end) as C4_2013,
  sum (case when 2013= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'LCV Action Fund (PAC)' then amount else 0 end) as PAC_2013,
   sum (case when 2013= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'Victory Fund' then amount else 0 end) as VF_2013,
    sum (case when 2013= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'C3 LCV Education Fund' then amount else 0 end) as C3_2013,
         sum (case when 2013= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c in ('Bundling', 'GGitS') then amount else 0 end) as Bundling2013,
    sum (case when 2013= DATE_PART_YEAR(closedate) and fund_type2__c = 'LCV 527' and StageName = 'Received' then amount else 0 end) as PEF_2013,
    --------------2014
  sum (case when 2014= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'C4 LCV' then amount else 0 end) as C4_2014,
  sum (case when 2014= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'LCV Action Fund (PAC)'  then amount else 0 end) as PAC_2014,
    sum (case when 2014= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'Victory Fund' then amount else 0 end) as VF_2014,
     sum (case when 2014= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'C3 LCV Education Fund' then amount else 0 end) as C3_2014,
      sum (case when 2014= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c in ('Bundling', 'GGitS') then amount else 0 end) as Bundling2014,
    sum (case when 2014= DATE_PART_YEAR(closedate) and fund_type2__c = 'LCV 527' and StageName = 'Received' then amount else 0 end) as PEF_2014,
    ---2015
   sum (case when 2015= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'C4 LCV' then amount else 0 end) as C4_2015,
  sum (case when 2015= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'LCV Action Fund (PAC)'  then amount else 0 end) as PAC_2015,
    sum (case when 2015= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'Victory Fund' then amount else 0 end) as VF_2015,
    sum (case when 2015= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'C3 LCV Education Fund' then amount else 0 end) as C3_2015,
      sum (case when 2015= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c in ('Bundling', 'GGitS') then amount else 0 end) as Bundling2015,
    sum (case when 2015= DATE_PART_YEAR(closedate) and fund_type2__c = 'LCV 527' and StageName = 'Received' then amount else 0 end) as PEF_2015,
                sum (case when 2015= DATE_PART_YEAR(closedate) and fund_type2__c = 'NAJF' and StageName = 'Received' then amount else 0 end) as NAJF_2015,
    --- 2016
  sum (case when 2016= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'C4 LCV' then amount else 0 end) as C4_2016,
  sum (case when 2016= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'LCV Action Fund (PAC)' then amount else 0 end) as PAC_2016,
   sum (case when 2016= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'Victory Fund' then amount else 0 end) as VF_2016,
    sum (case when 2016= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'C3 LCV Education Fund' then amount else 0 end) as C3_2016,
     sum (case when 2016= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c in ('Bundling', 'GGitS') then amount else 0 end) as Bundling2016,
    sum (case when 2016= DATE_PART_YEAR(closedate) and fund_type2__c = 'LCV 527' and StageName = 'Received' then amount else 0 end) as PEF_2016,
            sum (case when 2016= DATE_PART_YEAR(closedate) and fund_type2__c = 'NAJF' and StageName = 'Received' then amount else 0 end) as NAJF_2016,
    ------ 2017
      sum (case when 2017= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'C4 LCV' then amount else 0 end) as C4_2017,
  sum (case when 2017= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'LCV Action Fund (PAC)' then amount else 0 end) as PAC_2017,
   sum (case when 2017= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'Victory Fund' then amount else 0 end) as VF_2017,
    sum (case when 2017= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'C3 LCV Education Fund' then amount else 0 end) as C3_2017,
               sum (case when 2017= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c in ('Bundling', 'GGitS') then amount else 0 end) as Bundling2017,
    sum (case when 2017= DATE_PART_YEAR(closedate) and fund_type2__c = 'LCV 527' and StageName = 'Received' then amount else 0 end) as PEF_2017,
        sum (case when 2017= DATE_PART_YEAR(closedate) and fund_type2__c = 'NAJF' and StageName = 'Received' then amount else 0 end) as NAJF_2017,

------ 2018
      sum (case when 2018= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'C4 LCV' then amount else 0 end) as C4_2018,
  sum (case when 2018= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'LCV Action Fund (PAC)' then amount else 0 end) as PAC_2018,
   sum (case when 2018= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'Victory Fund' then amount else 0 end) as VF_2018,
    sum (case when 2018= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c = 'C3 LCV Education Fund' then amount else 0 end) as C3_2018,
               sum (case when 2018= DATE_PART_YEAR(closedate) and StageName = 'Received' and Fund_Type2__c in ('Bundling', 'GGitS') then amount else 0 end) as Bundling2018,
    sum (case when 2018= DATE_PART_YEAR(closedate) and fund_type2__c = 'LCV 527' and StageName = 'Received' then amount else 0 end) as PEF_2018,
        sum (case when 2018= DATE_PART_YEAR(closedate) and fund_type2__c = 'NAJF' and StageName = 'Received' then amount else 0 end) as NAJF_2018,


sum (case when 2018= DATE_PART_YEAR(closedate) and stagename = 'Hard Pledge' then amount else 0 end) as HardPledgedonor,
 sum (case when 2018= DATE_PART_YEAR(closedate) then Original_Budget__c else 0 end) as OriginalProjectedRev,
sum (case when 2018= DATE_PART_YEAR(closedate) then Projection__c else 0 end) as MGO_Projection
from salesforce.opportunitycontactrole r
join salesforce.contacts c on c.id=r.contactid 

left join salesforce.opportunities o on o.id=r.opportunityid 
join salesforce.accounts a on a.id=c.accountid 
left join salesforce.portfolios f on f.id=a.portfolio__c
left join salesforce.accounts p on p.id=a.parentid
----left join devo.parentremainders p on p.accountid=a.parentid ~removed becuase it was filtering out folks that didn't have a RM or were a state league
WHERE 
---fund_type2__c <> 'Bundling' 
---and a.Major_Donor_Flag__c = 't'
 cvmc__center__c = 'a1mA0000000ETXtIAO' --- national center
and a.portfolio__c is not null


and (c.cv__Head_of_Household__c = 't' or C.recordtypeid like '012A0000000vUys%') --- HOHs or organizations
group by a.id, c.id, a.type, accountrecordtype, A.Giving_Vehicle__c, p.name, a.name, a.address_preferred_city__c, a.address_preferred_state__c, a.Relationship_Manager__c, a.staff_contact__c,a.portfolio__c, f.name, a.ranking__c, a.prospect_ranking__c, c.CVC_Member__c, 	c.CVC_Member_Status__c, cv__Deceased__c, a.Do_Not_Solicit__c, a.Lead_From__c, First_Combined_Amount_Nat__c, First_Combined_Date_Nat__c,
Last_Combined_Amount_Nat__c, Last_Combined_Date_Nat__c, Largest_Combined_Amount_Nat__c, Largest_Combined_Date_Nat__c
order by a.name