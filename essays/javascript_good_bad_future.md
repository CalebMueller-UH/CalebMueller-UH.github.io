---
layout: essay
type: essay
title: "Javascript: The Good, The Bad, and The Future"
# All dates must be YYYY-MM-DD format!
date: 2023-01-15
published: true
labels:
  - JavaScript
  - WODs
---

<img width="350px" class="rounded float-start pe-4" src="/img/essayPics/clint_eastwood_tgtbtu.jpg">

# What is JavaScript?
Javascript (JS) is a programming language widely used in web development.  As a new programmer, my initial experience with Javascript has been positive.  Before taking a software engineering course that deals primarily with Javascript, I had limited exposure to the language through working with NodeRed.  The syntax is similar to C++, and it was easy to pick up the basics quickly, but JavaScript is very different because it's not a strongly typed language.  This can yield more flexibility regarding functions that deal with multiple data types without the need for overloading-- for better or worse.  What's more, functions in JavaScript are first-class objects, meaning functions can contain properties and methods and be passed around the same as any other object can be.

There's much to be excited about over JavaScript, but it isn't all rainbows and sunshine.  Some severe issues arise from its use, as will be discussed.  This essay aims to express my thoughts on Javascript thus far, including its strengths and limitations, my personal experience with athletic software engineering, and the practice of daily coding, referred to as WODs.

## Strengths of Javascript
What I like about Javascript is that it's easy to understand, versatile, and has found use across many applications that run the web today.  It is one of the most commonly used programming languages worldwide to create various applications, from basic websites to complex web-based systems.  Most, if not all, modern web browsers support Javascript by default.  As a Javascript developer, there are ample opportunities to find work from real-deal companies such as Google and Meta.  

Javascript's syntax is relatively uncomplicated, and it boasts a large, supportive community, making it an approachable language for beginners; it integrates exceptionally well with other languages and tools.  Furthermore, there are so many libraries to leverage a particular application using JS.  For example, if your application does require strict type-checking, there's the closely related language of Typescript which is very similar to JavaScript but with types.

## Javascript Pitfalls
If JS is so great, then we should all be using it, right?  Well, maybe not.  While it is an incredibly friendly language, it is less optimized for resource-constrained devices such as those living on any IoT infrastructure's edge.  In addition, it is an interpreted language and, thus, can have a much larger footprint than a compiled language such as C.  Another drawback is the execution speed.  The JavaScript Document Object Model is slow compared to languages better suited to real-time applications, and this starts to show up in larger web applications.

Then there's the security aspect.  JS code used within a web application is visible to those using it.  This is arguably true of compiled languages as well through reverse engineering a binary.  Still, the energy threshold for dissecting a mountain of assembly code is much steeper than peering at neatly stacked source code within a browser's inspection pane.  Moreover, despite how ubiquitous JS is, or maybe because of this, it has a history of being the vector of many attacks, such as cross-site scripting, session data exposure, unintended script execution, and JavaScript injection attacks.

## Javascript's Utility Going into the Future
Despite some of the drawbacks of an otherwise great language, JS still has many things going for it.  It's everywhere and is still a growing and evolving technology.  With well-thought-out functionality being added, such as the recently adopted ES6 standard, which introduced features like arrow functions, template literals, and destructuring, which improve both code readability and efficiency, there's a strong indication that this language is thriving and will likely maintain its prominence.

## Javascript and Software Engineering
From a software engineering perspective, I believe Javascript to be a great programming language, particularly in providing web application features.  It may have drawbacks, but so do all languages in one form or another.  The mark of a sound engineer isn't necessarily contingent on a tool but on knowing which is best suited for a particular task.

## The Value of "WODs"
The ICS 314 class I'm currently taking is pushing the pedagogy of "Athletic Software Engineering" through daily practice problems called "Workouts-Of-The-Day" or WODs.  Thankfully this type of WOD doesn't involve burpees.  Instead, they aim to rapidly increase fluency and skill in a methodology similar to athletic training.  Frequent practice, successively increasing difficulty, and active engagement is more beneficial to acquiring and developing talent than the passive absorption of information typical in the academic setting.  WODs can be challenging, but so long as the difficulty is set optimally, this process is both manageable and enjoyable.

