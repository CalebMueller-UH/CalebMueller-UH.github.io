---
layout: essay
type: essay
title: "Asking for Technical Help"
# All dates must be YYYY-MM-DD format!
date: 2023-01-26
published: true
labels:
  - Smart Questions
  - Dumb Questions
---

Isaac Newton's famous quote, "If I have seen a little further, it is by standing on the shoulders of Giants," highlights the importance of building upon the knowledge of those who have come before us.  The collective contributions of experts in their field have propelled humanity to new heights, expanding the realm of possibility and shaping the world we know today.  However, with the rapid advancement of technology and the proliferation of information, the body of technical knowledge has grown to an unprecedented scale, making it increasingly difficult to navigate and access the information we need.

This is where technical forums like Stack Overflow, Quora, and Github have proven to be invaluable assets.  These online communities serve as a platform for experts and enthusiasts to share their knowledge and collaborate, making it easier for people to access the information they need.  By leveraging these experts' collective wisdom, individuals can better understand complex concepts, troubleshoot problems, and develop new ideas.
However, these forums' effectiveness heavily depends on the quality of the questions asked.  Asking good questions leads to better answers and increases the willingness of those who answer them to help.  In the essay ["How to ask questions the smart way"](https://www.catb.org/esr/faqs/smart-questions.html),  Eric Raymond lays out many considerations and guidelines to follow that will make it more likely to get a satisfactory answer while seeking help from members of these online communities.  

## What is a Smart Question?
As Raymond pontificates, a well-crafted question communicates the problem clearly and shows that the person asking the question has made an effort to research and understand the issue.  This saves time for the person answering the question and demonstrates that the person asking the question is genuinely interested in learning and solving the problem.  Here are a few things you may want to consider when posting a question to a technical community:
- Show basic respect for others' time, which motivates others to share their expertise on a given topic.
- Choose the correct forum for what you're asking.  Ensure your question is on-topic for any forum you intend to post to.  
- Before posting, read previous messages to understand how that community operates.
- Be sure to search for the answers to the question you're about to ask.
- Make the title to your question about the thing giving you issues.  You should avoid desperate pleas for help that communicate very little about the contents of the question.
- Include relevant tags to your post.  For example, if you're asking a question about JavaScript, use "JavaScript" as a tag, along with more tags that help clue in those looking at your question in list form, deciding if they have anything meaningful to contribute.
- Be precise and informative about your problem.  It is best to put effort into carefully describing the symptoms of your problem or bug and the environment in which it occurred.
- Describe what you've already researched in trying to understand the problem.  
- Clearly state the steps you've taken to troubleshoot the problem.
- Try to anticipate and answer any questions you suspect someone replying to your problem may ask.
- State any relevant computer or environment configurations that can help reproduce the problem.  
- Aim to be concise.  Distilling the problem down to being as short and to the point as possible increases the likelihood that you'll get a helpful reply.  Through the process, you may discover the solution yourself.

## An Example of a Smart Question
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

The results show that this is a relatively niche issue, and no immediate answer was available.  However, the original author follows up, stating that they followed up with the company that owns the relevant product and linked to an example they found that demonstrates the answer to their original question.  Four months later, a response gave further clarification on the question, which contained the following:

```
The ESP-IDF unit test setup is actually designed for testing its own internal components, and to help anyone adding to those.

To unit test your own project separately, take a look at this example project that shows how to create a Unity unit test application alongside a proper project.  Note that the project itself is called unit_test, so the test application is unit_test_test.  The component is called testable.  (I'm flagging that because it confused me; interpret unit_test like you might read example_app or myproject.)

Failing that, this ESP forum post also gives a way to include your components in their unit test app:

make -C ${IDF_PATH}/tools/unit-test-app EXTRA_COMPONENT_DIRS=/path/to/my_proj/components TEST_COMPONENTS=mycomponent
```

Even though it took some time, a clear and concise answer to the original authors' question was eventually given.  I think this is more because of how niche this question was and not due to the quality of the question itself.

## What Does a Dumb Question Look Like?
[Here is an example of a lousy question](https://stackoverflow.com/questions/1919703/someone-please-help-me-with-this-web-content-display-problem-in-liferay-im-stuc)

```
Title: Someone please help me with this Web Content Display problem in Liferay..im stuck !

Any way to make the web content appear maximized by default instead of minimized ?.Im using Liferay v5.2.3 Community Edition.

Please Help.  Thank You

```

As you can see, this question does not follow the guidance covered earlier.
- The title makes no mention of what the question is about
- The grammar seems hastily thrown together
- There's just an impression of little to no effort put into writing the question
- There's no mention of what the poster did to attempt to research or troubleshoot the issue themselves

And the results, again, speak for themselves.  This question was asked over 13 years ago, and it still does not have an answer.  Why would people spend their time and energy trying to help you if you seem unwilling even to help yourself?  Bottomline: practice radical self-reliance, seek the solution yourself, and make your post about something more than just yourself.  One of the most significant benefits of technical forums such as Stack Overflow is that the same problems come up repeatedly, and it's rather helpful to learn from another person's experience.  Smart posts facilitate that.