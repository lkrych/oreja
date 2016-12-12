# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
podcast_list = [
[ "Politics", "Politics - SermonAudio.com", "http://is1.mzstatic.com/image/thumb/Music62/v4/28/a0/0f/28a00fee-e9bf-c176-fc70-8d7453dc92d0/source/600x600bb.jpg", "Christianity" ],
[ "Politics", "Politics", "http://is5.mzstatic.com/image/thumb/Music4/v4/83/e7/ec/83e7ec84-fdb8-ed27-ef0a-fdd1248c2c4d/source/600x600bb.jpg", "News & Politics" ],
[ "NPR", "NPR Politics Podcast", "http://is5.mzstatic.com/image/thumb/Music122/v4/78/cf/f3/78cff347-3d72-de61-d3f7-dc2cd785e462/source/600x600bb.jpg", "News & Politics" ],
[ "FiveThirtyEight - Nate Silver, Jody Avirgan, Clare Malone, Harry Enten", "FiveThirtyEight Politics", "http://is2.mzstatic.com/image/thumb/Music62/v4/c2/fc/d2/c2fcd2dd-d8e2-6b53-36b1-bdfe946e5568/source/600x600bb.jpg", "News & Politics" ],
[ "WNYC Studios and The New Yorker", "The New Yorker: Politics and More", "http://is1.mzstatic.com/image/thumb/Music71/v4/b9/ae/b6/b9aeb685-2b75-30ff-7c01-4c579e15b2bc/source/600x600bb.jpg", "News & Politics" ],
[ "HuffPost Politics", "So That Happened", "http://is5.mzstatic.com/image/thumb/Music71/v4/d5/6e/ab/d56eab4e-4cec-ff85-3634-22a27c830bb9/source/600x600bb.jpg", "News & Politics" ],
[ "Bruce Carlson", "My History Can Beat Up Your Politics", "http://is2.mzstatic.com/image/thumb/Music4/v4/96/15/1d/96151df4-108b-f68a-7430-5a9737a391c2/source/600x600bb.jpg", "News & Politics" ],
[ "TEDTalks", "TEDTalks News and Politics", "http://is4.mzstatic.com/image/thumb/Music4/v4/a8/42/8f/a8428f99-109a-3500-5dd7-eaee704657fa/source/600x600bb.jpg", "News & Politics" ],
[ "The Weekly Standard", "Weekly Standard Podcast - Your source for conservative analysis of the news shaping US politics and world events", "http://is5.mzstatic.com/image/thumb/Music62/v4/64/60/d4/6460d4ce-76d1-699a-bce1-bbd4753d6785/source/600x600bb.jpg", "News & Politics" ],
[ "Julie & Brandy", "Dumb, Gay Politics", "http://is3.mzstatic.com/image/thumb/Music62/v4/bd/c5/af/bdc5af2d-3de8-8bf2-3d39-ead9bc8527d9/source/600x600bb.jpg", "Comedy" ],
[ "Capitol Steps", "Capitol Steps: Politics Takes a Holiday", "http://is1.mzstatic.com/image/thumb/Music62/v4/f6/96/df/f696df9c-2dc2-951b-96b2-5bca9894c022/source/600x600bb.jpg", "Comedy" ],
[ "KCRW.com", "KCRW's Politics of Culture", "http://is4.mzstatic.com/image/thumb/Music/v4/7e/0c/9b/7e0c9bab-1354-f276-0a9f-a482827e9acf/source/600x600bb.jpg", "Design" ],
[ "Pantsuit Politics", "Pantsuit Politics Podcast", "http://is3.mzstatic.com/image/thumb/Music71/v4/03/b6/55/03b65519-113e-8358-c5e1-30f157599543/source/600x600bb.jpg", "News & Politics" ],
[ "Randy Newberg: Hunter, Host of Fresh Tracks TV, Speaker, and Hunting Activist", "Hunt Talk Radio, Randy Newberg Unfiltered | Hunting | Conservation | Politics | Tactics", "http://is1.mzstatic.com/image/thumb/Music62/v4/5b/97/a8/5b97a8d4-dcf9-5679-3551-426fb0922677/source/600x600bb.jpg", "Outdoor" ],
[ "Michael Baranowski and Jay Carson", "The Politics Guys", "http://is2.mzstatic.com/image/thumb/Music62/v4/25/06/b9/2506b935-3125-d16d-4024-6c39cff93be7/source/600x600bb.jpg", "National" ],
[ "theguardian.com", "The Guardian UK: Politics Weekly", "http://is5.mzstatic.com/image/thumb/Music62/v4/67/04/54/67045450-2ff2-4f3f-f5b7-3cf284ca25b2/source/600x600bb.jpg", "News & Politics" ],
[ "ABC News", "Powerhouse Politics", "http://is2.mzstatic.com/image/thumb/Music19/v4/97/d1/d3/97d1d3f3-45b2-77ab-6b35-9ab38fe4dcf0/source/600x600bb.jpg", "News & Politics" ],
[ "Justin Robert Young", "Politics Politics Politics", "http://is3.mzstatic.com/image/thumb/Music71/v4/63/16/15/63161514-c066-2945-750b-51bed26f70f7/source/600x600bb.jpg", "National" ],
[ "Slate Magazine/Panoply", "Slate's Live at Politics and Prose", "http://is1.mzstatic.com/image/thumb/Music71/v4/6d/78/11/6d7811bd-5847-da66-8e55-e4397b8448bc/source/600x600bb.jpg", "Literature" ],
[ "Marketplace", "Politics Inside Out from Marketplace", "http://is5.mzstatic.com/image/thumb/Music62/v4/2b/00/6e/2b006ede-5b3b-c469-52c9-ebe53feddf16/source/600x600bb.jpg", "News & Politics" ],
[ "Bloomberg News", "Masters in Politics", "http://is3.mzstatic.com/image/thumb/Music71/v4/a3/9b/0c/a39b0c91-db86-bc50-a059-2df7e042494a/source/600x600bb.jpg", "News & Politics" ],
[ "Steve Patterson | Covering Philosophy, Religion, Politics, Economics, Science, Mathematics, Metaphysics, Epistemology, Logic, Truth, Christianity, Buddhism, Hinduism, Atheism, Spirituality, Language, and Cultural Criticism", "Patterson in Pursuit: Philosophy | Politics | Religion", "http://is5.mzstatic.com/image/thumb/Music71/v4/0b/57/7e/0b577efb-aaed-0980-ffac-880ebc9a8eae/source/600x600bb.jpg", "Philosophy" ],
[ "Shorenstein Center on Media, Politics and Public Policy at Harvard Kennedy School", "Media and Politics Podcast", "http://is4.mzstatic.com/image/thumb/Music62/v4/01/73/e6/0173e64d-80b6-e7a1-ca2d-ac9e22d7d608/source/600x600bb.jpg", "News & Politics" ],
[ "Slate", "Slate Politics – Spoken Edition", "http://is3.mzstatic.com/image/thumb/Music71/v4/35/21/e3/3521e331-6ba7-1319-1035-868a64d01da7/source/600x600bb.jpg", "News & Politics" ],
[ "WAMU 88.5", "The Kojo Nnamdi Show: The Politics Hour", "http://is1.mzstatic.com/image/thumb/Music62/v4/c7/b2/5b/c7b25b6f-b8d9-6425-e579-343185b9f5a8/source/600x600bb.jpg", "News & Politics" ],
[ "Letters and Politics", "KPFA - Letters and Politics", "http://is1.mzstatic.com/image/thumb/Music49/v4/d2/b4/21/d2b421ee-5d99-840e-1a00-5832b27da808/source/600x600bb.jpg", "News & Politics" ],
[ "David Runciman and Catherine Carr", "TALKING POLITICS", "http://is5.mzstatic.com/image/thumb/Music71/v4/b7/b2/7a/b7b27a7e-0a9b-8ff7-7786-7aa40a9c6f99/source/600x600bb.jpg", "News & Politics" ],
[ "The Huffington Post", "HuffPost Politics – Spoken Edition", "http://is2.mzstatic.com/image/thumb/Music71/v4/79/25/fd/7925fd60-a6eb-794e-ea6f-ab53ceb078df/source/600x600bb.jpg", "News & Politics" ],
[ "PodcastOne", "Examining Politics", "http://is5.mzstatic.com/image/thumb/Music62/v4/69/1e/9d/691e9d54-adb3-2baf-a8e6-2e0a566f11d2/source/600x600bb.jpg", "News & Politics" ],
[ "Courtney Brown, Ph.D.", "Science Fiction and Politics, Courtney Brown, Emory University", "http://is2.mzstatic.com/image/thumb/Music62/v4/ce/80/27/ce80272b-066b-182e-3bde-decf1e353686/source/600x600bb.jpg", "Higher Education" ],
[ "John Myers", "California Politics Podcast", "http://is3.mzstatic.com/image/thumb/Music71/v4/a9/52/3c/a9523c8f-7ae4-e6b8-0c93-dc63144f6768/source/600x600bb.jpg", "News & Politics" ],
[ "Oregon Public Broadcasting", "OPB Politics Now", "http://is3.mzstatic.com/image/thumb/Music62/v4/5d/e9/30/5de9308e-5214-56b2-10de-13b5fa439a75/source/600x600bb.jpg", "News & Politics" ],
[ "Karen Tate", "Sex, Religion, Power and Politics", "http://is2.mzstatic.com/image/thumb/Music71/v4/5f/d6/e3/5fd6e35d-3a39-39f4-44fe-b07b648e2328/source/600x600bb.jpg", "Spirituality" ],
[ "Woodrow Wilson School of Public and International Affairs", "WooCast: News & Politics from Princeton's Experts", "http://is5.mzstatic.com/image/thumb/Music71/v4/52/be/52/52be52da-140f-9230-bff5-04da05159581/source/600x600bb.jpg", "News & Politics" ],
[ "Financial Times", "FT Politics", "http://is2.mzstatic.com/image/thumb/Music71/v4/8d/bc/40/8dbc4086-3f04-335c-2d13-53dec8215aa4/source/600x600bb.jpg", "News & Politics" ],
[ "theguardian.com", "Politics for humans", "http://is1.mzstatic.com/image/thumb/Music62/v4/d7/e6/97/d7e697fb-c4c8-e680-70ed-40bac08b1867/source/600x600bb.jpg", "News & Politics" ],
[ "Dr. David Naimon", "Healthwatch with Dr. David Naimon:  Interviews with experts in Natural Medicine, Nutrition, and the Politics of Health", "http://is3.mzstatic.com/image/thumb/Music6/v4/fe/6b/91/fe6b9187-3129-e2de-f3c2-343b535e4f12/source/600x600bb.jpg", "Alternative Health" ],
[ "Joe Ferrantelli, D.C.", "Chiropractic Biophysics (CBP) - Chiropractic United Podcast: Chiropractic Research, Technique, Politics, and Much, Much, More!", "http://is5.mzstatic.com/image/thumb/Music/v4/d0/80/94/d08094fd-79f0-3aaa-791f-a6fbe731eab1/source/600x600bb.jpg", "Alternative Health" ],
[ "Jamie Weinstein", "The Jamie Weinstein Show | Lessons from Leaders in Politics, Business & Media", "http://is1.mzstatic.com/image/thumb/Music71/v4/32/19/b3/3219b34b-5542-a7e5-4b42-472599772dc3/source/600x600bb.jpg", "News & Politics" ],
[ "Amine Tais", "The World of Islam: Culture, Religion, and Politics", "http://is5.mzstatic.com/image/thumb/Music/v4/25/44/97/25449781-ee1f-c5e1-36ae-525f18f5067f/source/600x600bb.jpg", "Islam" ],
[ "F.A. Hayek Program for Advanced Study in Philosophy, Politics, and Economics", "Hayek Program Podcast", "http://is5.mzstatic.com/image/thumb/Music62/v4/b7/4d/64/b74d6430-1eb7-7b18-58f5-8ee672e826c0/source/600x600bb.jpg", "Higher Education" ],
[ "New Hampshire Public Radio", "Primarily Politics from New Hampshire Public Radio", "http://is2.mzstatic.com/image/thumb/Music62/v4/8b/3a/41/8b3a4138-a438-16c9-dae7-815a6a07cf9f/source/600x600bb.jpg", "News & Politics" ],
[ "Drunken Politics", "Drunken Politics", "http://is5.mzstatic.com/image/thumb/Music62/v4/9c/e4/b6/9ce4b61e-a821-812e-5cce-1c3f05498127/source/600x600bb.jpg", "News & Politics" ],
[ "The Institute of World Politics", "The Institute of World Politics", "http://is4.mzstatic.com/image/thumb/Music71/v4/8f/3e/56/8f3e5695-6cc3-707f-c0cd-63052ab1b670/source/600x600bb.jpg", "Higher Education" ],
[ "Andrew & Henry: Millennials, Bloggers, and Patriots", "Love Being American: Politics | Current Events | Patriotism | Millennials", "http://is4.mzstatic.com/image/thumb/Music62/v4/a0/af/ad/a0afad85-c6ac-c85b-2b96-435baf021c30/source/600x600bb.jpg", "News & Politics" ],
[ "Loyal Books", "Etiquette in Society, in Business, in Politics and at Home by Emily Post", "http://is4.mzstatic.com/image/thumb/Music71/v4/c7/b4/e1/c7b4e1aa-1def-0271-a6c2-d1034585f5ec/source/600x600bb.jpg", "Self-Help" ],
[ "Danny Winslow: Speculator of Politics | Primaries | 2016 Election Entertainment | Campaign News and Comedy", "Presidential Speculatainment", "http://is4.mzstatic.com/image/thumb/Music71/v4/07/3d/79/073d79cf-f161-6470-f621-82b022f441c7/source/600x600bb.jpg", "News & Politics" ],
[ "Adam Camac and Daniel Laguros: Interviewers, Questioners, and Co-hosts", "Wake Up Call Podcast: Foreign Relations, Economics, Political Theory, Current Events, History, Politics, Countries, War and Pea", "http://is5.mzstatic.com/image/thumb/Music71/v4/8f/3e/05/8f3e05c5-f6de-8fb8-b90b-86d60c73f256/source/600x600bb.jpg", "News & Politics" ],
[ "Reuters", "Reuters Politics – Spoken Edition", "http://is2.mzstatic.com/image/thumb/Music62/v4/94/79/b6/9479b6c0-40b5-ad9f-a47e-814fcb443e54/source/600x600bb.jpg", "News & Politics" ],
[ "BBC Radio 5 live", "Pienaar's Politics", "http://is5.mzstatic.com/image/thumb/Music69/v4/0e/37/e7/0e37e7a2-6878-e0f9-9e04-a286ccfcbd04/source/600x600bb.jpg", "News & Politics" ]

]

podcast_list.each do |provider, podcast, image, genre|
  Podcast.create( provider_id: provider, name: podcast, image_url: image, genre: genre)
end