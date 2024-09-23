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

<h1>The Problem</h1>

<div class="content-container">
    <img class="responsive-img right" alt="Image from whitenosesyndrome.org" src="images/wns.jpg">
    <p>White-nose Syndrome is an ongoing fungal epizootic caused by epidermal infections of the fungus, <i>Pseudogymnoascus destructans</i> (<i>Pd</i>), affecting multiple bat species in North America. Emerging sometime around 2008 in New York State, White-nose Syndrome has spread via clonal reproduction through North-Eastern United States and Canada provinces.</p>
</div>

<img class="responsive-img center" alt="White-nose Syndrome Transmission Model" src="images/transmission-model.png">

<p>What remains relatively unknown is how much human activity has the potential to influence the spread of White-nose Syndrome. Our influence on the transmission of <i>Pd</i> has never been quantitatively measured at bat hibernacula.</p>

<h1>The Application of Novel Data Streams to Problems in Disease Ecology</h1>

<img class="responsive-img center" alt="Novel data streams in epidemiology" src="images/noveldatastreams.png">

<p>So called, “Novel Data Streams” are becoming more widely used in epidemiology. In particular, they have recently been applied to tracking the spread of influenza and other infectious diseases in human populations.</p>

<p><strong>What if we could use novel data streams to understand how human activity has the potential to influence the spread of White-nose Syndrome? What sources would have useful information for this purpose?</strong>
</p>

<h1>Geocaching</h1>

<div class="content-container">
    <p>Consider the activity of “Geocaching”, which, simply put, is kind of a massively social scavenger hunt. There are around 4 million active geocaches worldwide. Many of these users are extremely active, sometimes logging hundreds or thousands of “finds”. Users of <a href="geocaching.com">geocaching.com</a> can search for “caches” hidden by other users, and even hide their own caches for others to find. make posts with clues to Here we use online Geocaching records at sampling sites as a proxy for human activity in these areas.</p>
    <img class="responsive-img right small" alt="geocaching.com" src="images/geocaching.png">
</div>

<h2>Challenges</h2>
<p>The main challenge here is filtering out the sites that are probably used by roosting bats, and those that are not. Although we pre-selected sites that had the word “cave” or “mine” in the description, the vast majority of these Geocaching sites might not represent true hibernacula for bats.</p>

<p>Luckily, we can collect additional data on the descriptions of each site by the user, including pictures. We don’t necessary have to do manual confirmation for each site, we developed a filtering strategy based on the presence of key words in these descriptions.</p>

<h3>How do we know that the sites we are sampling are reliable?</h3>
<p>But this information is also fraught with issues – in english, these descriptions tend to use the word “bat” in many different contexts. So we can’t just asssume that the presence of the word “bat” is always used in the context of a site being proper hibernacula for bats. What we can do is determine a combination of keywords that can be used to determine which sites correspond with the right types of habitat for bats. We tested this on a subset of caves which are known to overlap with known bat hibernaculua. A combination of keywords “flashlight”,”cave”,”mine”,”bat”, and “ore” or “mineral” seemed to work best.</p>

<h3>Multilingual Geocachers</h3>

In Europe, there is an additional challenge to filtering: posts are written in a variety of different languages! We translated this keyword set into 8 of the most widely represented languages in Europe to solve this problem.

<h3>Additional Issues with Tracking White-Nose Syndrome</h3>

<p>There a couple of other sicky points that I don’t have time to completely address in this post. But these issues will need to be addressed before publiscation!</p>

A non-exhaustive list:

<ul>
  <li>What are occupancy rates of bats at these sites?</li>
  <li>Not all human visits are a potential risk for transmission.</li>
  <li>What factors impact the spread of the Pd fungal cells between caves?</li>
  <ul>
    <li>Incorporating the (viable) spore load, decay of viability with time, etc., for Pd spores</li>
  </ul>
</ul>

<h2>Preliminary Results</h2>
<h3>Data Collection</h3>

<p>We were able to scrape a large collection of Geocaching records from geocaching.com. We used the Geocaching API to collect this data. To avoid having to scrape all of the sites across North America and Europe, we restricted our search to only the areas where White-nose Syndrome has been recorded in North America and Europe. We also limited our search to sites that had the word “cave” or “mine” in their description.</p>

<table>
<thead><tr><th>Region</th><th>Number of Sites</th><th>Number of Unique Users</th></tr></thead><tbody><tr><td>North America</td><td>184</td><td>14 215</td></tr><tr><td>Europe</td><td>92</td><td>12 559</td></tr></tbody>
</table>

<div class="results-container">
    <img class="responsive-img left" alt="Connectivity of sites in North America" src="images/na-connectivity.png">
    <img class="responsive-img right" alt="Connectivity of sites in Europe" src="images/europe-connectivity.png">
</div>

<p>The users that visit these sites move around alot more than expected! About 15% of users visit another cave geocache within a month. And most of these visits are to sites that are relatively close by!</p>

<img class="responsive-img center" alt="User activity between sites in North America" src="images/users_year.gif">

<p>But what are the implications of users that travel long distances between different caves?</p>

<h2>What proportion of users visit caves in Europe?</h2>

<p>About 94 users (0.4%) in the total dataset have been visiting geocaching sites on different continents. This includes 2 individual users who logged at European cave...<strong>before entering a North American cave within 30 days</strong></p>

<p>Why is this length of time significant? Well, in one or my <a href="publication/2018-01-01-aem.html">previous papers</a>, we demonstrated that spores of Pd, which is a psychrophilic pathogen, can survive for 30 days at 23C. This means that spores could potentially be spread between caves, if visits happen within a relatively small time frame.</p>

<img class="responsive-img center" alt="Temperature tolerance of Pd spores" src="images/sporetemperature.png">

<p>Our results suggest that sites with a greater number of unique visitors are correlated with higher genotype diversity at these caves. Considering the impact that humans could have on the spread of White-nose Syndrome, further precautions need to be made to prevent and manage the further spread of White-nose Syndrome. Movement of users across continents</p>

<img class="responsive-img center" alt="Movement of users across continents" src="images/eu_travellers.png">
