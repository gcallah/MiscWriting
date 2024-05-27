# The Bulgarian Vectorization Lab

Gene Callahan


## Chomsky




## The Bulgarian Vectorization Lab


Next, I will update John Searle's famous [Chinese room argument](https://plato.stanford.edu/entries/chinese-room/),
in which he demonstrated the lack of "I" in "AI,"
to reflect the way LLMs actually work.

You have been hired by the "Bulgarian Vectorization Lab," despite not knowing a single word of Bulgarian. (They assure
you it is completely unimportant that you don't understand the language at all.) 
Your job is to produce numerical tables that, given a stretch
of Bulgarian text, allow the user of the tables to predict the next word. (This is like a predictive LLM, but generative
LLMs work largely the same way.) You are given a very large number of Bulgarian texts as your starting point. You take
each text and "vectorize" (turn into a sequence of numbers) each word. You have a little trick you employ while doing
this, which you call "attention," that allows you to take the entire textual context of the word into account in
creating these tables... but note that this is, again, a purely mathematical manipulation of the text that can be
carried out without any idea of what the text is about.

At the end of this process, given the Bulgarian sentence equivalent to "At the
cookout, he put the dogs on the..." you are able to use your tables to predict that the next word is 'grill,' while
after "At the fox hunt, he put the dogs on the..." you predict "scent." 

Would you say that this means you now understand Bulgarian? 


## LLMs

What happens inside a large language model? First, a vast amount of "input" is turned into vectors, or long lists of
numbers, based upon how likely certain things are to appear together in the input. So, if "apple" and "pie" often appear
near each other in the input, their vectors will point in the same general direction. "Tungsten" and "circular saw"
would show some similar relationship, while "tungsten" and "apple" or "circular saw" and "pie" would not.

Or, if the model was dealing with images, the end product of processing many, many images would reflect the high
probability that legs grow downward out of torsos, rather than upward out of the top of a head.

But note that the computer never actually sees any image — the image had to be converted to numbers before the program
could process it — and has no actual "idea" of what torsos or legs are. Instead of a monitor, the output of an image
generation program was hooked up to a synthesizer, it would "happily" play music instead of creating images. It is only
we, the intelligent interpreters of the computers output, who decide whether it should represent an image, or a musical
composition, or a response to a missile attack.

But LLM’s do not "hallucinate." They work entirely on probabilities The fact that 95% of the time X would be the best
word to follow Y means that 5% of the time it won’t be, and some fraction of that 5%, it will be crazily wrong, like
when chatGPT recommended using glue to prevent cheese from slipping off of pizza.


Intelligence can be defined as the use of reason to achieve some aim. (I use "AI" all the time when composing a piece of
writing. And in this case, the AI decided that the previous sentence was "Intelligence can be defined as the use of
raisin to achieve some aim.") Even in the least practically oriented use of intelligence, there is still some aim: to
understand the nature of the prime numbers, or to contemplate why the universe exists.

But chatGPT and its ilk have no aims. (AI version: "But chat, GPT and they’re El Cavo aims.") The only entity with an
aim involved in the process is us.



## Conclusion

LLMs are a great technical achievement. The techniques employed in them to simulate human language processing are extremely
clever. I do not wish to downplay the engineering brilliance that went into creating them.

But that is where 100% of the brilliance lies: with the engineers who created these models. The models themselves are
mere machines built to carry out the wishes of the engineers. The fact that with a complex LLM, the engineers
themselves do not understand exactly how the model does so does not change that fact one bit.


