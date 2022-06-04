---
title: "Does Human Activity Contribute to the Spread of White-Nose Syndrome?"
date: 2020-01-01
permalink: /posts/2020/01/DoesHumanActivityContributetotheSpreadofWhiteNoseSyndrome/
tags:
  - phd research
  - epidemic
  - disease
  - web scraping
---

## The Problem

<img align="right" style="width:300px;" alt="Image from whitenosesyndrome.org" src="images/wns.jpg">
White-nose Syndrome (WNS) is an ongoing fungal epizootic caused by epidermal infections of the fungus, _Pseudogymnoascus destructans_ (Pd), affecting multiple bat species in North America. Emerging sometime around 2008 in New York State, WNS has spread via clonal reproduction through North-Eastern United States and Canada provinces.

<img align="right" style="width:300px;" alt="WNS Transmission Model" src="images/transmission-model.png">
What remains relatively unknown is how much human activity has the potential to influence the spread of WNS. Our influence on the transmission of Pd has never been quantitatively measured at bat hibernacula.

So how can we get our hands on the visitation rates for humans visiting caves in North America and Europe? It's not like there is a single place where these numbers are recorded. Only caves that serve as tourist destinations might have these numbers, and this represents a very small proportion of the bats impacted by WNS in North America. Since most natural roosts likely exist on private land (not government owned/operated), it seems like this information would be impossible to obtain, right?

## The Application of Novel Data Streams to Problems in Disease Ecology

<img align="right" style="width:300px;" alt="Novel data streams in epidemiology" src="images/noveldatastreams.png">
So called, "Novel Data Streams" are becoming more widely used in epidemiology. In particular, they have recently been applied to tracking the spread of influenza and other infectious diseases in human populations.

**What if we could use novel data streams to understand how human activity has the potential to influence the spread of WNS? What sources would have useful information for this purpose?**

### Geocaching

<img align="right" style="width:300px;" alt="geocaching.com" src="images/geocaching.png">
Consider the activity of "Geocaching", which, simply put, is kind of a massively social scavenger hunt. There are around 4 million active geocaches worldwide. Many of these users are extremely active, sometimes logging hundreds or thousands of "finds". Users of [geocaching.com](geocaching.com) can search for "caches" hidden by other users, and even hide their own caches for others to find. make posts with clues to Here we use online Geocaching records at sampling sites as a proxy for human activity in these areas.

This is an extremely exciting data source to use for our purpose here, there are several pieces of information tied to each cache:

- All “finds” of a cache are logged
  - location
  - time
  - user ID
- We can link a user's activity across different sites
  - allows us to create a network of human traffic between different caves

**These records can be used as a proxy for human activity at natural sites!**

## Challenges

The main challenge here is filtering out the sites that are probably used by roosting bats, and those that are not. Although we pre-selected sites that had the word "cave" or "mine" in the description, the vast majority of these Geocaching sites might not represent true hibernacula for bats.

### How do we know that the sites we are sampling are reliable?

Luckily, we can collect additional data on the descriptions of each site by the user, including pictures. We don't necessary have to do manual confirmation for each site, we developed a filtering strategy based on the presence of key words in these descriptions.

But this information is also fraught with issues -- in english, these descriptions tend to use the word “bat” in many different contexts. So we can't just asssume that the presence of the word “bat” is always used in the context of a site being proper hibernacula for bats. What we can do is determine a combination of keywords that can be used to determine which sites correspond with the right types of habitat for bats. We tested this on a subset of caves which are known to overlap with known bat hibernaculua. A combination of keywords "flashlight","cave","mine","bat", and "ore" or "mineral" seemed to work best.

### Multilingual Geocachers

In Europe, there is an additional challenge to filtering: posts are written in a variety of different languages! We translated this keyword set into 8 of the most widely represented languages in Europe to solve this problem.

### Additional Issues with Tracking White-Nose Syndrome

There a couple of other sicky points that I don't have time to completely address in this post. But these issues will need to be addressed before publiscation!

A non-exhaustive list:

- What are occupancy rates of bats at these sites?
- Not all human visits are a potential risk for transmission.
- What factors impact the spread of the Pd fungal cells between caves?
  - Incorporating the (viable) spore load, decay of viability with time, etc., for Pd spores

## Some Preliminary Results

### Data Collection

We were able to scrape a large collection of Geocaching records from [geocaching.com](geocaching.com). We used the [Geocaching API](https://www.geocaching.com/developers/documentation/api) to collect this data. To avoid having to scrape all of the sites across North America and Europe, we restricted our search to only the areas where WNS has been recorded in North America and Europe. We also limited our search to sites that had the word "cave" or "mine" in their description.

| Region        | Number of Sites | Number of Unique Users |
| ------------- | --------------- | ---------------------- |
| North America | 184             | 14 215                 |
| Europe        | 92              | 12 559                 |

<img align="left" style="width:300px;" alt="Connectivity of sites in North America" src="images/na-connectivity.png">
<img align="right" style="width:300px;" alt="Connectivity of sites in Europe" src="images/europe-connectivity.png">

<img align="center" style="width:300px;" alt="User activity between sites in Europe" src="images/users_year.gif">

### What proportion of users visit caves in Europe?

0.4% (~94 users)
2 individual users logged at European cave...**before entering a North American cave within 30 days**

<img align="right" style="width:300px;" alt="European users at caves" src="images/europe_users.png">
Our results suggest that sites with a greater number of unique visitors are correlated with higher genotype diversity at these caves. Considering the impact that humans could have on the spread of WNS, further precautions need to be made to prevent and manage the further spread of WNS.
