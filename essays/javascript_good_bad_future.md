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
JavaScript (JS) is a widely-used programming language that has found applications in various areas of software development, such as web development, desktop, mobile app development, server-side programming, and Internet of Things (IoT) devices.  As a new programmer, my initial experience with JavaScript has been positive.  Before taking a software engineering course that deals primarily with JavaScript, I had limited exposure to the language through working with NodeRed.  The syntax is similar to C and C++, and it was easy to pick up the basics quickly, but JavaScript is very different because it's a dynamic and weakly typed language.  This can yield more flexibility regarding functions that deal with multiple data types without the need for overloading-- for better or worse.  What's more, functions in JavaScript are first-class objects, meaning functions can contain properties and methods and be passed around the same as any other object can be.

There's much to be excited about over JavaScript, but it isn't all rainbows and sunshine.  Some severe issues arise from its use, as will be discussed.  This essay aims to express my thoughts on JavaScript thus far, including its strengths and limitations, my personal experience with athletic software engineering, and the practice of daily coding, referred to as WODs.

### Strengths of JavaScript
What I like about JavaScript is that it's easy to understand, versatile, and has found use across many web applications today.  It is one of the most commonly used programming languages worldwide to create various applications, from basic websites to complex web-based systems.  Most, if not all, modern web browsers support JavaScript by default.  As a JavaScript developer, there are ample opportunities to find work from real-deal companies such as Google and Meta.

JavaScript's syntax is relatively uncomplicated and boasts a large, supportive community, making it an approachable language for beginners.  It integrates exceptionally well with other languages and tools.  Furthermore, there are so many libraries to leverage a particular application using JS.  For example, if your application does require strict type-checking, there's the closely related language of TypeScript which is very similar to JavaScript but with types.

### JavaScript Pitfalls
If JavaScript is so great, then we should all be using it, right?  Well, maybe not.  While it is an incredibly friendly language, it's not always the best choice for specific use cases.  For example, JavaScript's Just-In-Time (JIT) compilation and garbage collection can add extra overhead, making it less suitable for resource-constrained devices such as those living on an IoT infrastructure's edge.  However, various tools and technologies, such as WebAssembly, can also help optimize JavaScript's performance on such devices.

Another drawback is the security aspect.  JavaScript code used within a web application is visible to those using it.  This is arguably true of compiled languages as well through reverse engineering a binary.  However, the energy threshold for dissecting a mountain of assembly code is much steeper than peering at neatly stacked source code within a browser's inspection pane.  Moreover, despite how ubiquitous JavaScript is, or maybe because of this, it has a history of being the vector of many attacks, such as cross-site scripting, session data exposure, unintended script execution, and JavaScript injection attacks.  However, these risks can be mitigated by following best practices in web development and using security libraries and frameworks.

## JavaScript's Utility Going into the Future
Despite some of the drawbacks of an otherwise great language, JavaScript still has many things going for it.  First, it's everywhere and is still a growing and evolving technology.  With well-thought-out functionality still being added, such as the recently adopted ES6 standard, which introduced features like arrow functions, template literals, and destructuring, which improve both code readability and efficiency, there's a strong indication that this language is thriving and will likely maintain its prominence.  Additionally, new technologies such as Node.js and React have further extended the capabilities and reach of JavaScript, making it possible to use the language for both front-end and back-end development, and to build rich, interactive user interfaces.

## The Value of "WODs"
The ICS 314 class I'm currently taking is pushing the pedagogy of "Athletic Software Engineering" through daily practice problems called "Workouts-Of-The-Day" or WODs.  Thankfully this type of WOD doesn't involve burpees.  Instead, they aim to rapidly increase fluency and skill in a methodology similar to athletic training.  Frequent practice, successively increasing difficulty, and active engagement are more beneficial to acquiring and developing talent than the passive absorption of information that's so typical within an academic setting.  WODs can be challenging, but so long as the difficulty is set optimally, this process is both manageable and enjoyable.

## Conclusion
In conclusion, JavaScript is a powerful and versatile language that has become a staple in modern software development.  Its strengths include its ease of use, broad support, and extensive community, while its limitations include performance and security concerns.  However, with the constant evolution of the language and the emergence of new technologies, it is clear that JavaScript will continue to play a significant role in software development in the future.  Furthermore, daily coding through the use of WODs has the potential to be a valuable aspect of my experience with JavaScript, helping me improve my skills and stay up-to-date with the latest technologies.  Overall, JavaScript is a language that offers many opportunities for developers, and with the right approach and tools, it can be used to build robust and efficient applications.