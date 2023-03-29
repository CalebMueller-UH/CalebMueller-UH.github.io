---
layout: essay
type: essay
title: "Final Project Idea"
date: 2023-03-28
labels:
- Software Engineering
- Meteor
---

# Overview
There is so much good music here on O'ahu that deserves more attention.  Often these prized musical acts are hidden and buried away in silo'd musical postings.  What if there were a central place where amateur acts could be seen?  Enter Local-Beat.

Local Beat is a hub for O'ahu's up-and-coming artists to feature their music, and to serve as a bulletin board for their events calendar.  With Local-Beat locals will never miss a beat when it comes to finding and supporting great acts.

### Mockup page ideas
Getting started with the MVP model of Local-Beat will be as simple as creating an artist account.  This step involves uploading a logo, choosing from some styling template options, and providing a short bio.  Quick and painless: there's no excuse not to be on Local-Beat.

After the initial account is created, artists will have the ability to add 'Gigs' and Albums on the 'Manage Gigs' and 'Manage Albums' Pages respectively.

The Home or Landing page for Local-Beat will feature artists which can be filtered by music type.  There will also be a calendar section that shows upcoming gigs which can also be filtered.


### Use case ideas
A Gig will consist of simply a date, a venue, and a location, with an optional field for a comment.  There will be a 'gigs' collection entry for each artist that uses MongoDB to modify and access the gig information.

Similarly, each artist will have a collection of album entries in an Album collection that will feature a piece of album art serves as a handle, and clicking on this handle can direct the user to that music, be it on SoundCloud, Beatport, YouTube, or otherwise.

Each artist will be able to access the Manage pages and edit the contents of their collections.

Additionally, Admin accounts will also have access to each artists collections, and can use this privilege to moderate the content of the site.

### Beyond the basics
This MVP goes 'beyond the basics' by introducing a landing page that significantly extends the functionality of the template.  Much work would need to be done in creating a way to present the artists' content, and this gives ample opportunity to apply a creative touch on this idea.  

Furthermore, the modification of the addstuffs.jsx component will be a neat adventure creating the manager pages, and this significantly branches away from the template starting point of the project.

While this MVP is very feature rich, it needn't be.  Each of the features can be addon's that complement the other sections.  The primary components to nail down are the landing/home page that feature artists content, and the content creation page.
