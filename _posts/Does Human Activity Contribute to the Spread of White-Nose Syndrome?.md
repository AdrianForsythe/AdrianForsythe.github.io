---
title: "Does Human Activity Contribute to the Spread of White-Nose Syndrome?"
date:
permalink: /posts/2020/09/human-activity-wns/
tags:
  - phd research
  - epidemic
  - disease
  - web scraping
---

## The Problem

White-nose Syndrome (WNS) is an ongoing fungal epizootic caused by epidermal infections of the fungus, Pseudogymnoascus destructans (Pd), affecting multiple bat species in North America. Emerging sometime around 2008 in New York State, WNS has spread via clonal reproduction through North-Eastern United States and Canada provinces.

Using molecular and genomic markers, we have investigated isolates from the Canadian Maritimes to understand the population dynamics of Pd at the local and regional scales. Our analyses revealed high genotype diversity and a lack of local population structuring; both are consistent with frequent transfers of Pd between caves.

Human activity has the potential to influence the spread potential of WNS. Our influence on the transmission of Pd has never been quantitatively measured at bat hibernacula.

## Challenges

How do we know these sites are reliable?

- Collection of additional descriptional data
  - Additional metadata
    - (pictures, user descriptions)
- Manual confirmation on subsampled data

North American
The (mis)use of “bat” as a keyword

European
Translations of keywords in 8 major languages

Not all sites represent true hibernacula

- Host occupancy rates?
  Not all visits are a potential risk for transmission
- (viable) spore load, decay with time, etc.

### Issues with Tracking White-Nose Syndrome

- Number of visitors are not always recorded
- Can not be easily collected
- Most natural roosts exist on private land (not government owned/operated)

## Applying Novel Data Streams to the Problem

### Novel Data Streams for Epidemiology

- Web search results
  - Flu symptoms
- Social media data
  - Twitter hashtags
    - i.e. #stayinghome, #fluseason

### Geocaching -- a massively social scavenger hunt

**These records can be used as a proxy for human activity at natural sites!**
Here we use online Geocaching records at sampling sites as a proxy for human activity in these areas.

- Users hide their own caches
- Seek caches hid by others
- All “finds” are logged
- More than 3 million active geocaches worldwide
- 3-4 million active users

**These records can be used as a proxy for human activity at natural sites!**

## Results

### Data Collection

Scraping of user-submitted online records:

- Timestamped
- Geotagged
- Unique user IDs
- User comments

| Region        | Number of Sites | Number of Unique Users |
| ------------- | --------------- | ---------------------- |
| North America | 1,627           | 12,354                 |
| Europe        |                 | 24,123                 |

[[images/na-connectivity.png]]
[[images/europe-connectivity.png]]

Our results suggest that sites with a greater number of unique visitors are correlated with higher genotype diversity at these caves. Considering the impact that humans could have on the spread of WNS, further precautions need to be made to prevent and manage the further spread of WNS.

![[images/users_year.gif]]

### What proportion of users visit caves in Europe?

0.4% (~94 users)
2 individual users logged at European cave
...before entering a North American cave within 30 days

![[images/europe_users.png]]
