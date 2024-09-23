---
permalink: /
title: "Adrian Forsythe"
excerpt: "About me"
author_profile: true
redirect_from:
  - /about/
  - /about.html
---

<div style="display: flex; align-items: stretch; margin-bottom: 20px; flex-wrap: wrap;">
    <div style="flex: 1; padding-right: 20px;">
        <h2>I am a...</h2>
        <ul>
          <li>microbiologist</li>
          <li>bioinformatician</li>
          <li>ecologist</li>
        </ul>
    </div>
    <div style="flex: 2; padding-left: 20px;">
        <h2>I am also a...</h2>
        <ul>
          <li>data scientist</li>
          <li>front and back end developer</li>
          <li>data engineer</li>
        </ul>
    </div>

</div>

## What I am currently working on?

<div style="display: flex; align-items: stretch; margin-bottom: 20px; flex-wrap: wrap;">
    <div style="flex: 1;">
      <p>I am a Researcher at Uppsala University in the Department of Systematics, where my research focuses on identifying and annotating large repetitive elements in fungal pathogen genomes. I'm a member of the <a href="https://fungage.github.io/">FungAGE Lab</a>, where our research is focused on better understanding the incredible plasticity in fungal genomes. Right now, I am working on identifying genes that are involved with the movement and function of some extremely large transposable elements, the <a href="https://doi.org/10.1093/molbev/msac109">Starships</a>.</p>
    </div>
</div>

<!-- <img src="images/labwork.jpeg" alt="Getting my hands dirty" style="display:block; margin-left:auto; margin-right:auto; width:100%; max-width:800px;"> -->

## Why should you consider hiring me?

I have a strong background in various bioinformatic analyses of whole-genome, transcriptomic, and metagenomic datasets.

I am skilled in extracting meaningful insights from complex biological datasets in the context of microbial ecology, evolution, and infectious disease control.

I have a passion for data-driven visualization and effective science communication

My academic work has result in a wealth of experience:

<!-- <img src="images/skills.png" alt="" style="display:block; margin-left:auto; margin-right:auto; width:100%; max-width:800px;"> -->
<div class="tag-cloud">
    <section class="skills">
        <div class="tag-group bioinformatics">
            <h3>Bioinformatics</h3>
            {% for skill in site.data.cv.skills.bioinformatics %}
                <span class="tag tag-specialty">{{ skill.name }}</span>
            {% endfor %}
        </div>
        <div class="tag-group databases">
            <h3>Databases</h3>
            {% for skill in site.data.cv.skills.databases %}
                <span class="tag tag-skill">{{ skill.name }}</span>
            {% endfor %}
        </div>
        <div class="tag-group analysis">
            <h3>Analysis</h3>
            {% for skill in site.data.cv.skills.analysis %}
                <span class="tag tag-skill">{{ skill.name }}</span>
            {% endfor %}
        </div>
        <div class="tag-group visualization">
            <h3>Visualization</h3>
            {% for skill in site.data.cv.skills.visualization %}
                <span class="tag tag-skill">{{ skill.name }}</span>
            {% endfor %}
        </div>
        <div class="tag-group soft">
            <h3>Soft skills</h3>
            {% for skill in site.data.cv.skills.soft %}
                <span class="tag tag-skill">{{ skill.name }}</span>
            {% endfor %}
        </div>
    </section>
</div>

## Projects

### White-Nose Syndrome

<div style="display: flex; align-items: stretch; margin-bottom: 20px; flex-wrap: wrap;">
    <div style="flex: 2; min-width: 200px;">
        <img src="images/probiotics.jpg" alt="Screening for probiotics to combat WNS" style="width: 100%; height: 100%; object-fit: cover;">
    </div>
    <div style="flex: 2; padding-left: 20px;">
        <p>In my PhD I used genomics to study the microbial ecology and population structure of the fungal pathogen, <i>Pseudogymnoascus destructans</i>. Find more about my thesis <a href="https://adrianforsythe.github.io/posts/2020/09/phdthesis/index.html">here</a>. <a href="https://d3ctxlq1ktw2nl.cloudfront.net/staging/2019-9-3/25951353-44100-2-6d37e687523c.m4a">An interview about my PhD research on McMaster's Science Podcast</a>.</p>

        <p>I helped to develop a probiotic treatment for White-Nose Syndrome in bats, which is currently undergoing field trials in British Columbia, Canada. I contributed to this project by screening bacterial strains for antifungal activity and optimizing the dosage and delivery system in preparation for field trials. I monitored probiotic levels in the field using quantitative assays. I also processed all genomic data generated from this project.</p>
        <a href="https://www.cbc.ca/news/canada/british-columbia/bats-white-nose-syndrome-scientists-1.5247454">Press Coverage of this Project</a>
    </div>

</div>

<div style="display: flex; align-items: stretch; margin-bottom: 20px; flex-wrap: wrap;">
    <div style="flex: 1; padding-right: 20px;">
        <h2>What contribution does human activity have on the spread of disease?</h2>
        <p>I have been working on a project to use novel data streams to investigate the connection between human activity and the spread of the WNS pathogen in North America. Read more about this project <a href="https://adrianforsythe.github.io/posts/2020/01/DoesHumanActivityContributetotheSpreadofWhiteNoseSyndrome/index.html">here</a>.</p>
    </div>
    <div style="flex: 2; min-width: 200px;">
        <img src="images/users_year.gif" alt="Movement of users between caves" style="width: 75%; height: 75%;  object-fit: cover;">
    </div>
</div>
