---
layout: essay
type: essay
title: "Asking for Help"
# All dates must be YYYY-MM-DD format!
date: 2023-01-26
published: true
labels:
  - Asking Smart Questions
---

Human progress can be credited to the cumulative efforts and discoveries of those who have come before us. As Isaac Newton famously stated, "If I have seen a little further, it is by standing on the shoulders of Giants." However, with the vast amount of information generated through so much advancement, it can often be challenging to navigate and find the pertinent information needed to accomplish a given task.

<img width="500" class="float-end pe-4" src="/img/essayPics/ironGiant.jpg" alt="Standing on the shoulders of giants">

Enter technical forums like Stack Overflow, Quora, and Github.  These online communities serve as a hub for experts and enthusiasts to collaborate and share their knowledge, making it easier for individuals to access the information they seek.  By tapping into the collective wisdom of these experts, individuals can better understand complex concepts, troubleshoot problems, and develop new ideas.  However, the effectiveness of these forums relies heavily on the quality of the questions being asked.  Asking well-constructed questions provides the necessary information for a good answer and motivates those with relevant expertise to contribute.

In the essay ["How to ask questions the smart way"](https://www.catb.org/esr/faqs/smart-questions.html), Eric Raymond provides valuable insights and guidelines for asking effective questions.  This advice is not limited to a specific field or discipline and is universally applicable.

## What Makes a Good Question?
As Eric Raymond suggests, a well-crafted question communicates the problem.  In addition, it demonstrates the asker's effort to research and understand the issue, which saves time for the person answering the question and shows a genuine interest in learning and solving the problem.

Here are some key points to keep in mind when posting to a technical community:
- Clearly define the problem or question you need help with
- Conduct your research, including searching the forum for similar questions
- Choose the appropriate forum and ensure your question is on-topic
- Use descriptive titles and relevant tags to attract the right experts to your post
- Show respect for others' time by putting effort into your question
- Be concise and informative, including details of your research and troubleshooting steps
- Anticipate and answer any potential follow-up questions
- Provide relevant background information, such as hardware or environment configurations
- Keep the problem description as brief and to the point as possible.

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
The following elements make this question a well-crafted and effective one:
- Relevant and descriptive title: "Unit testing with ESP-IDF" accurately captures the essence of the question.
- Appropriate tags: The tags "unit-testing," "embedded," and "esp32" are relevant to the topic and help attract relevant experts to the post.
- Brief introduction and background: The question includes a brief introduction and provides relevant background information to understand the problem better.
- Evidence of research: The question includes a link to a similar question, showing that the asker has already conducted some research but still needs further assistance.
- Relevant setup and configurations: The question provides information about the setup and relevant configurations that may be relevant to the answer.
- Concise and organized: The question is concise and organized, including a bulleted list of information the asker is looking for.
- Follow-up: The original poster followed up with the post after contacting the relevant company and linked to an example demonstrating the answer to the question.

## What Makes a Poor Question?
[Here is an example of a poorly formed question](https://stackoverflow.com/questions/1919703/someone-please-help-me-with-this-web-content-display-problem-in-liferay-im-stuc)
```
Title: Someone please help me with this Web Content Display problem in Liferay..im stuck !

Any way to make the web content appear maximized by default instead of minimized ?.Im using Liferay v5.2.3 Community Edition.

Please Help.  Thank You

```
Contrasting with the earlier example, this type of question lacks several key elements that are needed to make it an effective one:
- Inadequate title: The title does not accurately describe the question, making it difficult to understand the problem.
- Poor grammar and organization: The question appears hastily written and lacks coherence.
- Lack of effort: The question gives the impression that little effort was put into researching or troubleshooting the issue.
- Missing research and troubleshooting details: There is no mention of what steps the asker took to research or troubleshoot the issue.

The quality of a question can significantly impact the likelihood of receiving a helpful answer on technical forums such as Stack Overflow.  Therefore, asking well-crafted questions, following the principles outlined in "How to ask questions the smart way," such as having a clear and descriptive title, conducting research, and being concise and organized, can significantly improve the chances of finding a solution.

By taking the time to construct thoughtful questions and contributing to the collective knowledge on these forums, individuals can add significant value to the resources available to the community.  Whether you are an experienced expert or just starting out, the effort put into crafting high-quality questions can immensely enhance the overall usefulness of technical forums and the resources they provide.
