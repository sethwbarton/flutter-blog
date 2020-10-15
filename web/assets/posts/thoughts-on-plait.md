# Plait



I've been taking a class this semester at BYU titled "Concepts of Programming Languages" and it has not been, at all, what I was expecting. But in a good way - I'll explain. 

#### My Initial Thoughts And Assumptions

When I first heard "Concepts of Programming Languages", I immediately assumed the class was going to consist of learning about different features of programming languages. Things like static vs. dynamic typing, compiled vs. interpreted languages, strong vs. weakly typed languages, etc. And we are learning about those things, eventually, but instead of just starting out with these concepts our professor took the class on a different route, and that route started with a funny, little-known, language called Plait. 

#### What is Plait? 

Plait is a purely functional programming language which inherits most of its feature set from its parent language, Racket. To do anything in a language like this, the programmer is forced to think only in terms of expressions, functions, and values. The idea behind the functional programming paradigm is that we don't want a sequence of imperative statements which can change the state of the program. Instead, we declare our program as a tree of expressions which each return a value. 

Here's an example.

 In an imperative programming language (in this case, it's JavaScript), we can count to ten like so: 

```javascript
let countToTen = () => {
  for (let i = 1; i <= 10; i++) {
    console.log(i)
  }
}

countToTen()
```

To the average computer science undergrad, it would be very clear here that this is a computer program written as a sequence of instructions to carry out. And sequence is the key word here. But once we get into pure functional programming, sequencing instructions like above becomes a thing of the past. 

Here is how we can count to ten in Plait: 

```Plait
(define (count-to-ten starting)
   (if (<= starting 10)
    (begin (display starting)
    (count-to-ten (+ starting 1)))
    "Done!"))

(count-to-ten 1)
```

An immediately noticable difference between these two examples is the syntax. The syntax for Plait is something I've struggled against and I've finally found three reasons for why it's so difficult. 

#### Why It's Hard!

I'd like to point out that these three reasons I've listed for Plait being hard, are really just due to what I expect as "the norm". I think that if the way we taught programming was different (for instance, maybe if we started with functional languages) these three issues would not be a problem. But, for someone like me, who started with C++, these are the reasons I found Plait so difficult. 

First thing to get used to is that every function call is in what is called *parenthesized prefix notation*. This is where each function call starts with an open parenthesis, followed by the name of the function, the parameters to the function, and then a closing parenthesis. 

The second reason Plait is so confusing is the lack of sequenced instructions. Instead of being a series of instructions to execute, every method must be the result of a single expression. You'll notice that the count-to-ten method I defined is, in fact, the result of a single expression, which is just one *if* statement. So each function has to return the result of a single expression, and each file in Plait also follows this rule. In my case, my Plait file returned the result of calling *count-to-ten*. 

The third reason Plait is hard is the lack of state. In the JavaScript example, our program had a state as each line was executed. When *countToTen* was called, a *for-loop* began and within that *for-loop* we kept track of a variable, *i*, which changed state each time the loop incremented. The functional programming paradigm removes the idea of state in a belief that it's best to have as little state to worry about in a program as possible. It's not that there's a "problem" with having state in our programs, but it means that our programs can become increasingly difficult to reason about as the state becomes more complex. Just imagine if the space within our loop was 100 lines long. How much of that depends on the state of *i*? Well, you'd better read it to find out. 

#### What I've Learned

I've come to some interesting realization as a result of this class my use of Plait.

I initially had a gut reaction that this language feels so restricting! There's no way we'd be able to create large applications in Plait because there's no state and no sequencing. I asked my instructor this and he informed me that Plait, like every other language I've used, is Turing-complete. This means it can simulate any Turing machine and therefore can run any program. He also informed me that Plait does have ways of managing state which we just haven't covered yet. It turns out that any method which modifies state (and therefore could have a side-effect) in Plait is post-fixed with an exclamation mark as a warning to the caller. 

#### Conclusion

I still have tons to learn about functional programming and Plait but diving head-first with my course at BYU has been eye-opening and introduced me to an entirely new field within computer science. If you're like I was a few weeks ago and you've only heard of functional programming, I encourage you to go give it a try! You can find the documentation for the Plait programming language at https://docs.racket-lang.org/plait/. And if you have any tips, suggestions, factoids, or something you'd like me to learn and write about, email me at sethwbarton@gmail.com. 







