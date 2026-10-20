# Multiplexers and Demultiplexers

In this lab you have learned about multiplexers and demultiplexers.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
- Carson Brown & Patrick McClain
## Summary
- We built an implementation for a town allowing 4 senders to use 4 switches to send data. A multiplexer picked one sender and put their data on a single line. A demultiplexer then sent that line to one of four businesses showing their data on its 4 different LEDs.
## Lab Questions

### In plain English describe the function and use of a multiplexer.
- A multiplexer picks one of many inputs and sends it to a single output. It can be used when several different signals need to share one wire.
### In plain English describe the function and use of a demultiplexer.
- A demultiplexer is the opposite of a multiplexer and takes one input and sends that to one of many outputs. It can be used to deliver data from a shared line to one specific place.
### What other uses might these circuits have? (Think Shannon’s)
- Other uses these circuits might have could be building different logic functions with a demultiplexer. If the demultiplexer input is a 1, it becomes a potential decoder and each output would be one minterm. You can use OR to tie together the minterms to make a function. These circuits would also be very helpful in sending many signals over one wire like an efficient information highway system.
