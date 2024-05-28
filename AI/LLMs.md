# The Hungarian Vectorization Lab

Gene Callahan


## Chomsky

In an article titled "The False Promise of ChatGPT," famed linguist Noam Chomsky and his two co-authors argue that 

"However useful these programs may be in some narrow domains (they can be helpful in computer programming, for example,
or in suggesting rhymes for light verse), we know from the science of linguistics and the philosophy of knowledge that
they differ profoundly from how humans reason and use language. These differences place significant limitations on what
these programs can do, encoding them with ineradicable defects."



## The Hungarian Vectorization Lab


Next, I will adopt John Searle's famous [Chinese room argument](https://plato.stanford.edu/entries/chinese-room/),
in which he demonstrated the lack of "I" in "AI,"
updating it to reflect the way LLMs actually work.

You have been hired by the "Hungarian Vectorization Lab," despite not knowing a single word of Hungarian. (They assure
you it is completely unimportant that you don't understand the language at all.) 
Your job is to produce numerical tables that, given a stretch
of Hungarian text, allow the user of the tables to predict the next word. (This is like a predictive LLM, but generative
LLMs work largely the same way.) You are given a very large number of Hungarian texts as your starting point. You take
each text and "vectorize" (turn into a sequence of numbers) each word. You have a little trick you employ while doing
this, which you call "attention," that allows you to take the entire textual context of the word into account in
creating these tables... but note that this is, again, a purely mathematical manipulation of the text that can be
carried out without any idea of what the text is about.

At the end of this process, given the Hungarian sentence equivalent to "At the
cookout, he put the dogs on the..." you are able to use your tables to predict that the next word is 'grill,' while
after "At the fox hunt, he put the dogs on the..." you predict "scent." 

Would you say that this means you now understand Hungarian? I think it is clear that you don't. If you had access to
your tables, and a conversation partner was patient with you while you used them, you might even be able to "hold a
conversation" in Hungarian. But at no point would you have any idea of what you or your partner were saying: while your
responses seem "appropriate" to your partner, as far as you know, you are agreeing to have sex with the person, or
planning a terrorist attack, or discussing the weather. 


## LLMs

The above is a abbreviated but accurate picture of what goes on inside a large language model.
First, words from a vast amount of "input" are turned into vectors, or long lists of
numbers, based upon how likely certain words are to appear together in the input. So, if "apple" and "pie" often appear
near each other in the input, their vectors will point in the same general direction. "Tungsten" and "circular saw"
would show some similar relationship, while "tungsten" and "apple" or "circular saw" and "pie" would not.
As mentioned above, a key technological breakthrough was the concept called
["attention"](https://arxiv.org/abs/1706.03762), which made it possible to take into account the entire context in which
a word appears in determining what words are most likely to appear after it. (In a predictive model, like the one used
to suggest the next word in an email you are writing, the model offers you that word as a choice. In a generative model,
it simply puts that word next in its response to some query.)

Or, if the model was dealing with images, the end product of processing many, many images would reflect the high
probability that legs grow downward out of torsos, rather than upward out of the top of a head.

But note that the computer never actually sees any image — the image had to be converted to numbers before the program
could process it — and has no actual "idea" of what torsos or legs are. Instead of a monitor, the output of an image
generation program was hooked up to a synthesizer, it would "happily" play music instead of creating images. It is only
we, the intelligent interpreters of the computers output, who decide whether it should represent an image, or a musical
composition, or a response to a missile attack.

The mechanistic nature of what happens in these models is only obscured when AI enthusiasts describe it
in terms that imply that genuine thought is occurring. For instance, when an LLM is being developed, what is going on
is often described as "machine learning," and the process is called "training," both terms suggesting that a conscious
but immature entity is being gradually educated. However, it is much more accurate, in software engineering terms, to
describe what is happening as running a program to search a "parameter space" to find the best set of parameters to
handle the task at hand. This is an entirely deterministic process, and the more accurate description never fatuously
suggests that the computer has, at the end of the process, "learned" something. No, the program has just found a set of
parameters that work adequately to achieve the programmer's goal for the program.

Similarly, when these probability engines output a very ridiculous answer, it is sometimes described as an "hallucination."
But LLMs do not "hallucinate." They work entirely on probabilities. The fact that 95% of the time X would be the best
word to follow Y means that 5% of the time it won’t be, and some fraction of that 5%, it will be crazily wrong, like
when [Google AI
recommended](https://www.benzinga.com/general/social-media/24/05/39027017/google-ai-search-tells-woman-to-use-glue-on-pizza-to-keep-cheese-in-place-and-she-did-heres-#)
using glue to prevent cheese from slipping off of pizza.


Intelligence can be defined as the use of reason to achieve some aim. (I use "AI" all the time when composing a piece of
writing. And in this case, the AI decided that the previous sentence was "Intelligence can be defined as the use of
raisin to achieve some aim." That is supposed to represent some level of understanding of English?)
Even in the least practically oriented use of intelligence, there is still some aim: to
understand the nature of the prime numbers, or to contemplate why the universe exists.

But chatGPT and its ilk have no aims. (AI here read what I said as: "But chat, GPT and they’re El Cavo aims.")
The only entity with an aim involved in the process is us.

Some materialists will argue that, since thought is only a product of the brain, and the brain "must" be some sort of computer,
when we think we "understand" language, we must
actually be carrying out some computation like this. But this argument is a genuine example of "begging the question":
Why should we accept either of their premises: what evidence do they have that thought is some sort of emanation of the
brain? Or that the brain is a computer? The answer in both cases is "None": both of these presuppositions assume that
materialism has somehow already been proven, and so can never be used in an argument for materialism.

In fact, many of materialists go further and argue that consciousness
itself is an illusion. But this is nonsense: Only conscious beings have illusions. Rocks, pieces of string, and road
signs do not. So, if we have illusions, that proves we are conscious: consciousness itself cannot be an illusion. They
may further argue that the scientific facts show that it is, but these facts are only known to us through our
consciousness. So if consciousness is an illusion, then all of the "facts" upon which our scientific theories are
also illusions! The whole effort is self-refuting through-and-through.



## Conclusion

LLMs are a great technical achievement. The techniques employed in them to simulate human language processing are extremely
clever. I do not wish to downplay the engineering brilliance that went into creating them.

But that is where 100% of the brilliance lies: with the engineers who created these models. The models themselves are
mere machines built to carry out the wishes of the engineers. The fact that with a complex LLM, the engineers
themselves do not understand exactly how the model does so does not change that fact one bit.


