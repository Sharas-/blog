TDD is <del>dead</del> not a design methodology

Recently, on an interview, I was explaining to an enthusiastic candidate what is TDD. 

"It is a design methodology" - said I.  
"Is it really though?" - thought my brain.

It felt wrong, this definition. Although it is often used by "true understanders" of the technique. With an air of uncertainty I explained - "At least that's the theory".

##Practice vs theory of TDD

Lets talk about practice. Designing is trying things out. It is like sketching. You start with vague contours and gradually, as you learn, apply critical thinking and your taste for good design (if you have one yet), you refactor towards more meaningful and succinct code.

Starting from contours means you take a top-down view of you code. Your domain concepts, their meaning, utility, relations and interactions is what guides your thinking.

Also, design process is iterative. You structure new knowledge and insights into your code as you get it. You are in trial-and-error mode, experimenting.

Is writing a test first good way to try things out? Does it somehow enhance your creativity or guides it? When I reflect on my design insights or breakthroughs, it has nothing to do with it.

##Where design comes from

I do start writing my code from the top. Sometimes the first "top" being my domain model actors. In style of [hexagonal architecture][hex_arch] system grows from inside. I get inspiration for my model from the goals and problems of business domain. I get insights for the initial sketches from crunching domain knowledge.

Other times my "top" is application use cases. I start by creating actors of the application that talk the language of users' needs. That is where inspiration and constraints come for my design at this level. From there, I distill modules and actors that fulfill functions of the application. Sometimes I zoom-in and zoom-out and pay attention to which ever level feels most relevant or insight inducing at that time.

In any case, tests have an important role to play at this stage to give me confidence that my design works and I didn't miss something. But I am not writing tests first to try things out. I am writing tests afterwards to try situations out.

It takes effort, fastidiousness and domain knowledge crunching to get the design right. Until it "feels right". That feeling for what is right comes with a taste for good design. Where does that taste comes from?

##TDD as training wheels

I don't know. Maybe your parents? But I do know that it is refined and finessed with practice. For a rookie software craftsman, writing a test first can help focus her attention on the top-down aspect of designing. Focusing on test-ability of your code means focusing on its goals and correctness. Goals of the code defines its roles. Roles are candidates for components. Code becomes modular. But it is not necessarily useful.

Modularity and test-ability is only mechanical part of good design. Detached from domain, code can be modular and testable but naive. Also, modular and testable code isn't necessarily simple. It can be expressive, but does it emphasize core domain concerns?

Goodness of design is also defined by usefulness of the model it embodies. This usefulness comes from deep analysis of domain concerns. In practice it means being close to domain experts and brainstorming with them. 

The point is, TDD will not make you a good designer. Nor will it somehow lead you to good design. It can only give you a superficial taste of how a good design might feel.

Good design also makes complicated parts of the system tractable. And that is where writing a test first can be a useful mental aid for you.

##TDD is a problem solving technique

Given a definition of a reasonably clearly stated but complex problem. How do you approach it? How about formalizing a simple, likely naive intuition that you have about the solution as a statement. Now find a way to support that statement with a working scenario. Did the search for scenario give you new insight about the problem? Formalize it as a statement. Repeat. 

Sounds familiar? Red-Green-Refactor. Refactoring bit is about refining your insights about the problem into a simpler solution of it. Simple, declarative solution to a complex problem is clearly a good design. But it is not the utility of TDD. It is a methodical approach to tackling reasonably complex problems. 

##Summary

For a beginning software craftsman, writing tests first can give a taste of how a modular design feels. Modular and testable design can be naive and technocratic if it doesn't embody useful domain model. TDD is most valuable as a methodical approach to reasonably clearly stated but complex problems. The thing is, on an average project, there aren't that many reasonably clearly stated but complex problems. Most of the design process resembles sketching more than problem solving.

[hex_arch]: http://alistair.cockburn.us/Hexagonal+architecture
