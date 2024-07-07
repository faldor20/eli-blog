+++
title = 'LLMs and Language Design'
date = 2024-07-07T12:17:42+10:00
draft = true
+++

Something that has often been seen ambling it's way through my thoughts in the last few years is how LLMs and future AI code generation will affect programming language design.

Firstly let me establish, to me:
#### Good programmers are craftsmen and Programming languages are their tools.

Like any tools wielded by skilled craftsfolk, they are personal, chosen through each persons specific set of experiences and used subtley differently by each. 
Programming langauages are a little different from most tools in that they are forceably shared. If you're building a house, you aren't much effected by your coworker insisting on using a Dewalt drill when you are a proud Makita owner. 
When you are building a piece of software, this isn't quite the case. Dan from downstairs writing his code in "DanScript" has rather more impact on you.

*(DanScript is of course a very innovative language, providing an entirely new paradigm for writing software called "object orienteering" where the code is laid out in a 2d space and instead of function calls you write cardinal directions to the next execution location. Dan asserts this lets you get a "big picture" view of the code)*

 This is of course because a language is not just a tool, it is also the "stuff" the final product is made from. To continue the construction analogy: If you're building a house, and the house is made entirely out of Makita drills, those Dewalt drills just won't fit right.   

All this to say, the languages we choose are important, they shape the product, and the way we build the product, and in many ways, how we think. Those choices are made even more important becasue they are not just choices made in isoltaion, they are choices made for entire teams. Changing a way your whole team thinks is a big deal in my eyes.  

#### But what if the language you're choosing isn't one you write code in? 

I personally don't care about the language design of x86 assembly. Do you? Probably not. That's because x86 assembly is, to most of us, (except a few very special folks) a compilation target. I don't write the code by hand, so I don't care about the language. You might see where I'm going with this at this point.

#### All languages are becoming compilation targets

When I prompt a GPT or a Claude or Devin, or some other crappyrobo-approximation of a junior dev on their first day, I'm using a compiler of a sort.
I give it input, and it produces lower level output in some programming language. The language I pick for that output matters a lot!

I recently was faced with a task that seemed perfect for an LLM. I needed a tiny program to do some templating for me, it just had to look for some special tokens in a file, grab some snippets from that file and put them in the right place in another file. Basic, but still something that would take me a few hours to write by hand and get all the edge cases, and parsing the templating bits and such, sorted.
So i tried an LLM. Go seemed like the right choice given it's simple, easy to write, and compiles to a static binary.

15 minutes of prompting and a few requests for corrections later, and I had what I wanted. Easy-peasy. The code was well written, easy to read and understand, and it was close enough to what I would have made.

But I thought to myself 

>"What if I hadn't chosen Go?"

The tool was going to be used in an Ocaml project, so I tried again with Ocaml. 
Things did not go well. At various points the code I got was; badly written, not able to compile, not actually doing what I asked, using functions that didn't exist, very inefficient

#### Why was this so different?

This mirrored much of my previous experience prompting LLMs for code, I don't often use JS or Java or other very common languages and I've usually found LLMs to be just bad at writing out-of-the-mainstream languages.

So I'll not be using Ocaml as a "compilation target" for my LLM prompting again. 
But this raises a question:
If I'm starting a project, that's fairly simple, should I use Go over Ocaml because of this?
I think Ocaml is a better language than Go in many ways (worse in a few others too) and it's what I'd prefer to use most of the time. However, if I can regularly save myself hours of work by getting my unreliable but astonishingly fast intern to: 

- Write code
- Write unit tests for that code
- Give me an example project where I can test the code. 
- Write some mediocre docs for the project
- Write a commit message with it's changes
- ~~Make me a cup of coffe~~ *(My buddy Sam AF assures me CoffeGPT is just around the corner!)*

Does it make sense to choose the "better" language? 

---
And now ~700 words in, we have, dear reader, gotten to the point.

#### The point

One of the biggest issues new and innovative languages face is the popularity of existing languages. LLMs make that popularity an even more significant factor. The quantity of existing code written in a language significantly effects both an LLMs output quality and it's ability to undersand and work with that language as input. 
Imagine a world where LLMs were good 20 years ago. Would we all still just be prompting LLMS to write C? Would languages like rust, that, love it or hate it, meaningfully move the bar for how reliable and secure we can make software, have been made at all? 

#### Does any of that even matter? 

Do we want a world where we all proompt our way into creating mountains of very quickly produced Javascript that just gets the job done?

Do we want to optimise for speed over excellence?

Do we want our tools to be far enough removed from us that we no longer notice when they are bad and don't care that they could be better? 

I don't have answers to these questions, but as someone who cares deeply about the tools I use, it does give me pause. I think we should all try to be aware of the implications of the path we are going down, even if it's the one we choose.


