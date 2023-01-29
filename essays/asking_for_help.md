---
layout: essay
type: essay
title: "Asking for Help"
# All dates must be YYYY-MM-DD format!
date: 2023-01-26
published: true
labels:
  - Smart Questions
  - Dumb Questions
---

Isaac Newton's famous quote, "If I have seen a little further, it is by standing on the shoulders of Giants," highlights the importance of building upon the knowledge of those who have come before us. The collective contributions of experts in their field have propelled humanity to new heights, expanding the realm of possibility and shaping the world we know today. However, with the proliferation of so much information, technical knowledge has grown unprecedentedly, making it increasingly more work to navigate and access the information we need.

<img width="500" class="float-end pe-4" src="/img/essayPics/ironGiant.jpg" alt="Standing on the shoulders of giants">

This is where technical forums like Stack Overflow, Quora, and Github have proven invaluable assets. These online communities serve as a platform for experts and enthusiasts to share their knowledge and collaborate, making it easier for people to access the information they need. By leveraging these experts' collective wisdom, individuals can better understand complex concepts, troubleshoot problems, and develop new ideas.However, these forums' effectiveness depends heavily on how a question is asked. Asking good questions leads to better answers by not only providing sufficient accompanying information required to provide a good answer but also by motivating those with the relevant knowledge to do so.  

In the essay ["How to ask questions the smart way"](https://www.catb.org/esr/faqs/smart-questions.html), Eric Raymond lays out several considerations and guidelines for asking good questions, and this advice is honestly universal.  

## What Makes a Good Question?
As Raymond points out, a well-crafted question communicates the problem clearly and shows that the person asking the question has made an effort to research and understand the issue. Doing so saves time for the person answering the question and demonstrates that the person is genuinely interested in learning and solving the problem.  

Here are a few things you might want to get right when posting to a technical community:
- Knowing what it is you need help on
- Doing your own research.  Maybe there's an article or blog post that discusses the very thing you need to know
- Searching on the forum to see if someone else has already asked what it is you're about to ask
- Getting a lay-of-the-land prior to posting to see how things operate
- Choosing the correct forum for what you're asking, and ensuring your question is on-topic
- Using descriptive titles that indicate what the question content is about
- Including relevant tags to your post such as the programming language, environment, or set of tools.  Like a good title, this queues people with these skillsets towards your post
- Showing respect for others' time by putting in a little effort to your question
- Being concise and informative by carefully describing the question/bug/problem
- Describing what you've already researched in trying to understand the problem  
- Clearly stating the steps you've taken to troubleshoot the problem
- Anticipating and pre-emptively answering any questions you suspect someone replying to your problem may ask
- Giving background information on what hardware you're using or environment configurations that can help reproduce the problem 
- Distilling the problem down to being as short and to the point as possible

## An Example of a Good Question
[This question on Stack Overflow is an example of how to ask a good question.](https://stackoverflow.com/questions/51176779/unit-testing-with-esp-idf)

```
Title: Unit testing with ESP-IDF:

Currently, I am working with an ESP-IDF and try to get unit testing to work.

I already found https://esp-idf.readthedocs.io/en/latest/api-guides/unit-tests.html, but there is a point which I don't understand.

But first, let me explain my setup:
- I work under Windows and have a MSYS32 shell.
- My IDF_PATH points to ~/esp-idf, where my esp-idf suite sits.
- My projects sit in ~/project_dir/subdir, however. They work as they should.

If I follow the instructions in the unit test guides, I can build the test cases which are built into the system. 
But it does not find the unit tests of my application.  This is clear, as they sit somewhere completely else.

What am I supposed to do now?  Perferrably without tampering with the default unit test app too much?

I can see several approaches, but I don't know what is the intended way to add own components resp. their test cases into the said app:
- Should I add the project paths somewhere into the unit test app?
- Should I copy the unit test app and add it to my projects?
- Should I create a folder in my project and add a link to the unit test app?
```
What makes this question so good:
- The user wants to know how to implement unit testing within the ESP-IDF.  They correctly label the title of the question as such: "Unit testing with ESP-IDF." This captures the essence of what they're asking.  
- Further, they include relevant tags to the topic nature of what they're asking.  The question includes the tags "unit-testing," "embedded," and "esp32."
- They briefly introduce the question and provide some background as to what they're looking for.
- They provide a link to a similar question, showing they've already searched for the answer, but indicate that the results don't quite answer what they need to know.
- They describe their setup and relevant configurations that may be pertinent to an answer.
-  They give more context and background into what they've already researched and refine their question to clarify what they're asking. 
- They're concise and organized about what information they're looking for and use bulleted lists to convey this information.

The original poster even follows up with the post after contacting the company who owns the relevant product, and linked to an example that demonstrates the answer to their original question.  Even though it took some time, a clear and concise answer to the original authors' question was eventually given.


## There are no Dumb Questions
[Here is an example of a poorly formed question](https://stackoverflow.com/questions/1919703/someone-please-help-me-with-this-web-content-display-problem-in-liferay-im-stuc)

```
Title: Someone please help me with this Web Content Display problem in Liferay..im stuck !

Any way to make the web content appear maximized by default instead of minimized ?.Im using Liferay v5.2.3 Community Edition.

Please Help.  Thank You

```

Unlike the earlier example:
- The title makes no mention of what the question is about
- The grammar seems hastily thrown together
- There's just an impression of little to no effort put into writing the question
- There's no mention of what the poster did to attempt to research or troubleshoot the issue themselves

Your mileage may vary on these types of forums; this question was asked over 13 years ago, and it still hasn't received a solution. It's not even clear what's being asked, so how can an answer be given? The bottom line is this: if you follow even half of the advice in this article, you'll make it easier for everyone. It shouldn't have to be perfect, and it's ok to ask obvious questions. One of the most significant benefits of technical forums such as Stack Overflow is that the same problems come up repeatedly, and it's extremely helpful to have the solutions to other people's experiences so readily available as a resource. Good posts facilitate added value to this resource.