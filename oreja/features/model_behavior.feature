Feature: 
  
  As an Oreja user
  So that I can organize my podcasts
  I want to be able to work with the relationships between episodes, podcasts and providers

Background: providers, podcasts, and episodes in database
  
  Given the following providers exist:
  | name   | description |        
  | 'Vox / Panoply' |       |     

  Given the following podcasts exist:
  | provider_id  | summary | name     | image_url | genre|
  | "Vox / Panoply" | "Everyone is always warning you not to get lost in the weeds. But not Vox's Ezra Klein, Sarah Kliff, and Matthew Yglesias. They love the weeds. That's where all the policy is. This is the podcast for people who follow politics because they love thinking about health care, economics, and zoning. It is not a podcast for people who like hearing talk about gaffes."| "Vox's The Weeds" | "http://is2.mzstatic.com/image/thumb/Music122/v4/e5/07/b8/e507b82d-6d5d-57cd-b3a9-ed4aba0edd32/source/600x600bb.jpg"| "News & Politics"] |
  | "Vox / Panoply" | "Ezra Klein gives you a chance to get inside the heads of the newsmakers and power players in politics and media. These are extended conversations with policymakers, writers, technologists, and business leaders about what they believe in and why. Look elsewhere for posturing confrontation and quick reactions to the day's news. Subscribe for the anti-soundbite."| "The Ezra Klein Show"| "http://is4.mzstatic.com/image/thumb/Music122/v4/3f/81/19/3f811910-86c3-63c3-1912-bf461343f229/source/600x600bb.jpg"| "News & Politics"] |

  Given the following episodes exist:
  | name   | description | air_date | duration | podcast_id|
  | "Kentucky, the Rust Belt, and the Big Picture on Trade| "Sarah, Ezra, and Matt talk about what Obamacare-using Trump voters are hoping for, which regions really need help, and a massive overview of the evidence on globalization and inequality.| "Wed, 14 Dec 2016 23:17:51 -0000| "3382| "Vox's The Weeds"|
  | "Russia and the American Dream| "Ezra and Matt discuss Russian hacking, Rex Tillerson, and inequality's role in reducing social mobility.| "Wed, 07 Dec 2016 22:31:00 -0000| "4483| "Vox's The Weeds"|
  | "Trump's Surprisingly Ambitious Education Agenda | "Matt is joined by Libby Nelson to discuss Donald Trump's big plans for K-12 education and his massive financial conflicts of interest.| "Wed, 30 Nov 2016 19:05:42 -0000| "3214| "Vox's The Weeds"|
  | "Assessing the Trump Cabinet — and Exploring How Recessions Affect Health| "Sarah and Matt take a deep dive into what Trump's cabinet picks say about how he will govern, with a particular focus on HHS Secretary-designate Tom Price. Also: an exciting white paper on recessions and health outcomes!| "Wed, 23 Nov 2016 02:20:17 -0000| "4141| "Vox's The Weeds"|
  | "Conflicts of Interest, Trump and the Media, and Rethinking Teen Pregnancy| "Sarah, Ezra, and Matt consider the extraordinary possibility of corruption during the Trump administration, the president-elect's unusual relationship with the media, and a new study debunking the old study about 16 and Pregnant.&nbsp;| "Mon, 21 Nov 2016 10:00:00 -0000| "1352| "Vox's The Weeds"|
  | "Sneak peak: a new Vox podcast, about how policy effects real people| "This is a pilot episode of a new show Sarah has been working on, looking at the real-life stakes of policymaking. The show's name? That's for you to help us decide.| "Wed, 16 Nov 2016 21:24:56 -0000| "3257| "Vox's The Weeds"|
  | "The Trump Agenda| "Sarah, Ezra, and Matt talk about Obamacare repeal, deportations, and the House Democrats leadership fight.| "Wed, 09 Nov 2016 20:46:39 -0000| "3103| "Vox's The Weeds"|
  | "Trumpocalypse Now| "Sarah, Ezra, and Matt look at the causes and consequences of Donald Trump's shocking win.| "Fri, 04 Nov 2016 16:16:24 -0000| "2969| "Vox's The Weeds"|
  | "The Massive Policy Stakes of 2016| "You may not know it from watching cable news — but both Trump and Clinton have very clear and very different policy visions for America. Ezra, Matt, and Sarah dive into their plans to change the country in the last pre-election episode.&nbsp;| "Wed, 26 Oct 2016 18:48:08 -0000| "3806| "Vox's The Weeds"|
  | "Ben Thompson on how the media business is changing| "Note: There was a technical issue with the first upload of this show, please re-download if you got to it early.Since starting his site Stratechery in 2013, Ben Thompson has established himself as one of the smartest and most thoughtful analysts at the intersection of media, business, and technology. I’ve become addicted to his commentary, as have many of my colleagues.So getting to geek out with Ben on these topics is a lot of fun. In this conversation, we discuss a couple of issues very close to my heart, including:Whether you can still make it as an individual blogger — Ben is showing you can, but the path has really changed;How to make money as a modern media company;Ben's time working for Apple and Microsoft and what he learned about both companies and their cultures;Why the Innovator’s Dilemma is worth reading even if you think you already know what it says;Why so few companies advertise on podcasts;Why the most important piece of writing on your site is the second one a reader finds;And much, much more.I enjoyed this conversation tremendously, I hope you do too. As always, please do me a big favor and share this podcast with your friends, put it on Facebook, on Twitter, Snapchat, wherever. And please send me your feedback at EzraKleinShow@Vox.com.| "Tue, 12 Apr 2016 11:31:46 -0000| "5207| "The Ezra Klein Show"|
  | "Grover Norquist explains what it takes to change American politics| "This is an interview you all have been asking for since day one.&nbsp;Grover Norquist is the head of Americans for Tax Reform, the creator of the no-new-taxes pledge that virtually every Republican officeholder has signed, and the founder of the Wednesday meetings that bring together basically every group of note on the American right. Newt Gingrich has called him the single most effective conservative activist in the country. MSNBC's Lawrence O'Donnell called him the most powerful man in America who does not sleep in the White House.He’s also, in my experience, one of the savviest observers of American politics around — in a town where people tend to be tactical and reactive, he’s unusually strategic and forward-looking, which is something he talks a bit about in the discussion. Among the other topics we cover:- Norquist's time in Angola and Mozambique helping anti-communist rebels&nbsp;- Whether the rise of Trump shows the conservative base isn’t quite as committed to small government and low taxes as Norquist would hope&nbsp;- Norquist's strategy for building durable political coalitions- Why Norquist thinks Silicon Valley will eventually turn Republican, and what he's doing to make it happen- That time Norquist did stand-up comedy at Burning Man&nbsp;Whether you’re on the left or the right, you should understand how Grover Norquist thinks, and I’m grateful to him for taking so much time to let us into his worldview here.&nbsp;As always, please, if you’re enjoying this podcast, share it with your friends, put it on the Twitters, on Facebook, email it around — it means a lot to me, and it does a lot to help the show!This episode is brought to you by The Great Courses Plus. Visit TheGreatCoursesPlus.com/EZRA to stream hundreds of courses in subjects like photography, physics, and history for free!| "Tue, 05 Apr 2016 19:12:00 -0000| "4065| "The Ezra Klein Show"|
  | "Neera Tanden on what it's like to work for Hillary Clinton| "Neera Tanden is CEO of the Center for American Progress — perhaps the most influential left-leaning think tank in Washington. Before that, though, she was the policy director for both Hillary Clinton's Senate office and 2008 campaign, as well as a senior advisor to the Department of Health and Human Services during the drafting of Obamacare. She’s also someone many of you requested to hear on the program.Neera Tanden has had a unique vantage point on the Democratic frontrunner. Tanden is a Hillary supporter and a strong one, but she's worked for Clinton for a long time, and so has a perspective on her former boss that most people don't get to see. And that's something I'm interested in. There is, I think it's fair to say, a wide gap between Clinton's reputation as a campaigner as a politician and her reputation as a boss and colleague. And it's that gap that I Tanden is able to shine some light on. Among the topic we cover are:- What it was like for Tanden growing up on welfare, and whether she thinks welfare reform was good for the poor- How she met Hillary Clinton, and why she initially thought of herself as a Bill Clinton person.&nbsp;- Why Clinton's public reputation confuses Tanden- Whether Washington is governed more by individuals or structural forces- What she thinks of criticisms of Clinton's speeches to Goldman Sachs- Why she thinks money has a more poisonous influence in Congress than in the White House- What her favorite think tank papers on both the left and the right are- What policy books she thinks everyone should readTanden is a Hillary Clinton supporter, and a proud one. And in this podcast, she talks about what it's like to actually work for and with Clinton.&nbsp;This episode is brought to you by The Great The Great Courses Plus is offering listeners a chance to stream hundreds of their courses-including The Fundamentals of Photography-free when you visit TheGreatCoursesPlus.com/EZRA.| "Tue, 29 Mar 2016 11:00:00 -0000| "5079| "The Ezra Klein Show"|
  | "David Chang, head of the Momofuku empire| "David Chang has driven many of the most important food trends of the last decade. His Momofuku empire has put pork belly on your plate, ramen on your corner, and bagel bombs in your local coffee shop. He's received four James Beard awards, been named a GQ Man of the Year, and appeared on Time's 100 most influential people list.He's also just a smart, funny, thoughtful and profane guy. In this episode, Ezra and David cover a lot of ground, including:- Whether restauranteurs should be able to patent recipes- Why two weeks more in one of New York's best restaurants could have killed Chang's career- The first recipe Chang ever truly invented- Why his R&amp;D lab is entirely vegan- Whether eating animals is ethical- Whether big farms can be humane- The joys of Buddhist temple cuisine- How Chang hired Momofuku's first employees, and what he looks for when hiring today- How nuns made the best potato chips Chang has ever had- The one recipe Chang thinks everyone should knowThis episode is brought to you by The Great Courses Plus.&nbsp; Visit TheGreatCoursesPlus.com/EZRA to stream Inexplicable Universe: Unsolved Mysteries and hundreds of other courses for free!| "Tue, 22 Mar 2016 11:00:00 -0000| "6316| "The Ezra Klein Show"|
  | "Cory Booker on the spiritual dimension of politics| "Cory Booker is a United States senator from New Jersey, the only vegan in Congress, and the author of the new book United: Thoughts on Finding Common Ground and Advancing the Common Good.&nbsp;In this conversation, Ezra and Booker go deep on Booker's history and unusual approach to politics. Topics covered include:- How Booker's parents used a sting operation to desegregate a neighborhood, and why they did it- Why Ezra doesn't eat breakfast- Booker's disagreements with Ta-Nehisi Coates- How a 10-day fast led to a (temporary) peace with Booker's worst political enemy- How spirituality informs Booker's approach to politics- The lessons Booker took from his early losses in with elections and city council fights- What it's like to be the only vegan in Congress- Why Booker hates penguins- Whether it's cynical or simply realistic to doubt America's political institutions- Which books have influenced Booker mostAnd much, much more. Oh, and Ezra gives Booker some advice on productivity apps, drawn from the weird, possibly wrongheaded, way he lives his own life.| "Tue, 15 Mar 2016 12:00:00 -0000| "4113| "The Ezra Klein Show"|
  
  
Scenario: Check to see if new podcasts exist and are linked together correctly
  Given I am on the providers page
  And I follow "Vox / Panoply"
  Then I expect to see "Vox's The Weeds"
  And I expect to see "The Ezra Klein Show"
  
Scenario: Click on image of The Weeds and see latest episodes
  Given I am on the podcasts page
  And I click on "Vox's The Weeds"
  Then I expect to see "Kentucky, the Rust Belt"
  And I expect to see "Russia and the American Dream"
  


   
  
