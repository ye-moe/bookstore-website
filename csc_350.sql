-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 11, 2024 at 04:01 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csc_350`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `author` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `rrp` decimal(7,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `description`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'Dune', 'Frank Herbert', '<p>Set on the desert planet Arrakis, Dune is the story of the boy Paul Atreides, heir to a noble family tasked with ruling an inhospitable world where the only thing of value is the “spice” melange, a drug capable of extending life and enhancing consciousness. Coveted across the known universe, melange is a prize worth killing for...\n<br><br>\nWhen House Atreides is betrayed, the destruction of Paul’s family will set the boy on a journey toward a destiny greater than he could ever have imagined. And as he evolves into the mysterious man known as Muad’Dib, he will bring to fruition humankind’s most ancient and unattainable dream.</p>', '10.99', '14.99', 0, 'dune.jpg', '2024-04-30 18:52:49'),
(2, 'Murder on the Orient Express', 'Agatha Christie', '<p>Just after midnight, a snowdrift stops the famous Orient Express in its tracks as it travels through the mountainous Balkans. The luxurious train is surprisingly full for the time of the year but, by the morning, it is one passenger fewer. An American tycoon lies dead in his compartment, stabbed a dozen times, his door locked from the inside.\r\n<br><br>\r\nOne of the passengers is none other than detective Hercule Poirot. On vacation.\r\n<br><br>\r\nIsolated and with a killer on board, Poirot must identify the murderer—in case he or she decides to strike again.</p>', '8.99', '0.00', 7, 'express.jpg', '2024-04-13 18:47:56'),
(3, 'Pachinko', 'Min Jin Lee', '<p>In the early 1900s, teenaged Sunja, the adored daughter of a crippled fisherman, falls for a wealthy stranger at the seashore near her home in Korea. He promises her the world, but when she discovers she is pregnant—and that her lover is married—she refuses to be bought. Instead, she accepts an offer of marriage from a gentle, sickly minister passing through on his way to Japan. But her decision to abandon her home, and to reject her son\'s powerful father, sets off a dramatic saga that will echo down through the generations.\r\n<br><br>\r\nRichly told and profoundly moving, Pachinko is a story of love, sacrifice, ambition, and loyalty. From bustling street markets to the halls of Japan\'s finest universities to the pachinko parlors of the criminal underworld, Lee\'s complex and passionate characters—strong, stubborn women, devoted sisters and sons, fathers shaken by moral crisis—survive and thrive against the indifferent arc of history.</p>', '8.99', '12.99', 9, 'pachinko.jpg', '2024-04-16 17:42:04'),
(4, 'The Metamorphosis', 'Franz Kafka', '<p>\"As Gregor Samsa awoke one morning from uneasy dreams he found himself transformed in his bed into a gigantic insect. He was laying on his hard, as it were armor-plated, back and when he lifted his head a little he could see his domelike brown belly divided into stiff arched segments on top of which the bed quilt could hardly keep in position and was about to slide off completely. His numerous legs, which were pitifully thin compared to the rest of his bulk, waved helplessly before his eyes.\"\r\n<br><br>\r\nWith it\'s startling, bizarre, yet surprisingly funny first opening, Kafka begins his masterpiece, The Metamorphosis. It is the story of a young man who, transformed overnight into a giant beetle-like insect, becomes an object of disgrace to his family, an outsider in his own home, a quintessentially alienated man. A harrowing—though absurdly comic—meditation on human feelings of inadequacy, guilt, and isolation, The Metamorphosis has taken its place as one of the most widely read and influential works of twentieth-century fiction. As W.H. Auden wrote, \"Kafka is important to us because his predicament is the predicament of modern man.\"</p>', '10.99', '0.00', 0, 'metamorphosis.webp', '2024-04-20 17:55:22'),
(5, 'Invisible Cities', 'Italo Calvino', '<p>\"Kublai Khan does not necessarily believe everything Marco Polo says when he describes the cities visited on his expeditions, but the emperor of the Tartars does continue listening to the young Venetian with greater attention and curiosity than he shows any other messenger or explorer of his.\" So begins Italo Calvino\'s compilation of fragmentary urban images. As Marco tells the khan about Armilla, which \"has nothing that makes it seem a city, except the water pipes that rise vertically where the houses should be and spread out horizontally where the floors should be,\" the spider-web city of Octavia, and other marvelous burgs, it may be that he is creating them all out of his imagination, or perhaps he is recreating fine details of his native Venice over and over again, or perhaps he is simply recounting some of the myriad possible forms a city might take.</p>', '10.99', '0.00', 10, 'invisible.jpg', '2024-04-23 12:47:56'),
(6, 'The Castle of Crossed Destinies', 'Italo Calvino', '<p>A group of travellers chance to meet, first in a castle, then a tavern. Their powers of speech are magically taken from them and instead they have only tarot cards with which to tell their tales. What follows is an exquisite interlinking of narratives, and a fantastic, surreal, and chaotic history of all human consciousness.</p>', '13.99', '15.99', 4, 'castle.jpg', '2024-04-03 18:47:56'),
(7, 'The Catcher in the Rye', 'J. D. Salinger', '<p>Fleeing the crooks at Pencey Prep, he pinballs around New York City seeking solace in fleeting encounters—shooting the bull with strangers in dive hotels, wandering alone round Central Park, getting beaten up by pimps and cut down by erstwhile girlfriends. The city is beautiful and terrible, in all its neon loneliness and seedy glamour, its mingled sense of possibility and emptiness. Holden passes through it like a ghost, thinking always of his kid sister Phoebe, the only person who really understands him, and his determination to escape the phonies and find a life of true meaning.\r\n<br><br>\r\nThe Catcher in the Rye is an all-time classic in coming-of-age literature- an elegy to teenage alienation, capturing the deeply human need for connection and the bewildering sense of loss as we leave childhood behind.\r\n<br><br>\r\nJ.D. Salinger\'s (1919–2010) classic novel of teenage angst and rebellion was first published in 1951. The novel was included on Time\'s 2005 list of the 100 best English-language novels written since 1923. It was named by Modern Library and its readers as one of the 100 best English-language novels of the 20th century. It has been frequently challenged in the court for its liberal use of profanity and portrayal of sexuality and in the 1950\'s and 60\'s it was the novel that every teenage boy wants to read.</p>', '9.99', '0.00', 7, 'rye.webp', '2024-04-13 21:47:56'),
(8, 'Animal Farm', 'George Orwell', '<p>A farm is taken over by its overworked, mistreated animals. With flaming idealism and stirring slogans, they set out to create a paradise of progress, justice, and equality. Thus the stage is set for one of the most telling satiric fables ever penned –a razor-edged fairy tale for grown-ups that records the evolution from revolution against tyranny to a totalitarianism just as terrible.\nWhen Animal Farm was first published, Stalinist Russia was seen as its target. Today it is devastatingly clear that wherever and whenever freedom is attacked, under whatever banner, the cutting clarity and savage comedy of George Orwell’s masterpiece have a meaning and message still ferociously fresh.</p>', '6.99', '0.00', 5, 'animal.jpeg', '2024-04-10 19:47:56'),
(9, 'Crime and Punishment', 'Fyodor Dostoevsky', '<p>Raskolnikov, a destitute and desperate former student, wanders through the slums of St Petersburg and commits a random murder without remorse or regret. He imagines himself to be a great man, a Napoleon: acting for a higher purpose beyond conventional moral law. But as he embarks on a dangerous game of cat and mouse with a suspicious police investigator, Raskolnikov is pursued by the growing voice of his conscience and finds the noose of his own guilt tightening around his neck. Only Sonya, a downtrodden sex worker, can offer the chance of redemption.</p>', '10.99', '0.00', 10, 'crime.jpg', '2024-03-13 18:47:56'),
(10, 'The Creative Act: A Way of Being', 'Rick Rubin', '<p>Many famed music producers are known for a particular sound that has its day. Rick Rubin is known for something else: creating a space where artists of all different genres and traditions can home in on who they really are and what they really offer. He has made a practice of helping people transcend their self-imposed expectations in order to reconnect with a state of innocence from which the surprising becomes inevitable. Over the years, as he has thought deeply about where creativity comes from and where it doesn\'t, he has learned that being an artist isn\'t about your specific output, it\'s about your relationship to the world. Creativity has a place in everyone\'s life, and everyone can make that place larger. In fact, there are few more important responsibilities.\r\n<br><br>\r\nThe Creative Act is a beautiful and generous course of study that illuminates the path of the artist as a road we all can follow. It distills the wisdom gleaned from a lifetime\'s work into a luminous reading experience that puts the power to create moments--and lifetimes--of exhilaration and transcendence within closer reach for all of us.</p>', '15.99', '0.00', 4, 'creative.jpg', '2024-03-19 20:47:56'),
(11, 'No Longer Human', 'Osamu Dazai', '<p>The poignant and fascinating story of a young man who is caught between the breakup of the traditions of a northern Japanese aristocratic family and the impact of Western ideas.\r\n<br><br>\r\n<i>\"Mine has been a life of much shame. I can’t even guess myself what it must be to live the life of a human being.\"</i>\r\n<br><br>\r\nPortraying himself as a failure, the protagonist of Osamu Dazai’s No Longer Human narrates a seemingly normal life even while he feels himself incapable of understanding human beings. His attempts to reconcile himself to the world around him begin in early childhood, continue through high school, where he becomes a “clown” to mask his alienation, and eventually lead to a failed suicide attempt as an adult. Without sentimentality, he records the casual cruelties of life and its fleeting moments of human connection and tenderness.\r\n<br><br>\r\nStill one of the ten bestselling books in Japan, No Longer Human is an important and unforgettable modern classic: “The struggle of the individual to fit into a normalizing society remains just as relevant today as it was at the time of writing.” (The Japan Times)</p>', '9.99', '0.00', 10, 'human.jpg', '2024-05-01 12:47:56'),
(12, 'The Great Gatsby', 'F. Scott Fitzgerald', '<p>The Great Gatsby, F. Scott Fitzgerald\'s third book, stands as the supreme achievement of his career. This exemplary novel of the Jazz Age has been acclaimed by generations of readers. The story of the fabulously wealthy Jay Gatsby and his love for the beautiful Daisy Buchanan, of lavish parties on Long Island at a time when The New York Times noted \"gin was the national drink and sex the national obsession,\" it is an exquisitely crafted tale of America in the 1920s.\r\n<br><br>\r\nThe Great Gatsby is one of the great classics of twentieth-century literature.</p>', '8.99', '12.99', 9, 'gatsby.jpg', '2024-04-01 17:42:04'),
(13, 'Lord of the Flies', 'William Golding', '<p>At the dawn of the next world war, a plane crashes on an uncharted island, stranding a group of schoolboys. At first, with no adult supervision, their freedom is something to celebrate; this far from civilization the boys can do anything they want. Anything. They attempt to forge their own society, failing, however, in the face of terror, sin and evil. And as order collapses, as strange howls echo in the night, as terror begins its reign, the hope of adventure seems as far from reality as the hope of being rescued. Labeled a parable, an allegory, a myth, a morality tale, a parody, a political treatise, even a vision of the apocalypse, Lord of the Flies is perhaps our most memorable novel about “the end of innocence, the darkness of man’s heart.”</p>', '10.99', '0.00', 15, 'flies.jpg', '2024-03-20 13:55:22'),
(14, 'Pride and Prejudice', 'Jane Austen', '<p>Since its immediate success in 1813, Pride and Prejudice has remained one of the most popular novels in the English language. Jane Austen called this brilliant work \"her own darling child\" and its vivacious heroine, Elizabeth Bennet, \"as delightful a creature as ever appeared in print.\" The romantic clash between the opinionated Elizabeth and her proud beau, Mr. Darcy, is a splendid performance of civilized sparring. And Jane Austen\'s radiant wit sparkles as her characters dance a delicate quadrille of flirtation and intrigue, making this book the most superb comedy of manners of Regency England.</p>', '10.99', '0.00', 12, 'pride.jpg', '2024-03-23 08:47:56'),
(15, 'Little Women', 'Louisa May Alcott', '<p>Generations of readers young and old, male and female, have fallen in love with the March sisters of Louisa May Alcott’s most popular and enduring novel, Little Women. Here are talented tomboy and author-to-be Jo, tragically frail Beth, beautiful Meg, and romantic, spoiled Amy, united in their devotion to each other and their struggles to survive in New England during the Civil War.\nIt is no secret that Alcott based Little Women on her own early life. While her father, the freethinking reformer and abolitionist Bronson Alcott, hobnobbed with such eminent male authors as Emerson, Thoreau, and Hawthorne, Louisa supported herself and her sisters with \"woman’s work,” including sewing, doing laundry, and acting as a domestic servant. But she soon discovered she could make more money writing. Little Women brought her lasting fame and fortune, and far from being the \"girl’s book” her publisher requested, it explores such timeless themes as love and death, war and peace, the conflict between personal ambition and family responsibilities, and the clash of cultures between Europe and America.</p>', '13.99', '15.99', 15, 'women.jpg', '2024-03-13 09:47:56'),
(16, 'Fahrenheit 451', 'Ray Bradbury', '<p>Sixty years after its original publication, Ray Bradbury’s internationally acclaimed novel Fahrenheit 451 stands as a classic of world literature set in a bleak, dystopian future. Today its message has grown more relevant than ever before.\n<br><br>\nGuy Montag is a fireman. His job is to destroy the most illegal of commodities, the printed book, along with the houses in which they are hidden. Montag never questions the destruction and ruin his actions produce, returning each day to his bland life and wife, Mildred, who spends all day with her television “family.” But when he meets an eccentric young neighbor, Clarisse, who introduces him to a past where people didn’t live in fear and to a present where one sees the world through the ideas in books instead of the mindless chatter of television, Montag begins to question everything he has ever known.</p>', '9.99', '0.00', 7, 'fahrenheit.jpg', '2024-04-22 21:47:56'),
(17, 'The Old Man and the Sea', 'Ernest Hemingway', '<p>This short novel, already a modern classic, is the superbly told, tragic story of a Cuban fisherman in the Gulf Stream and the giant Marlin he kills and loses—specifically referred to in the citation accompanying the author\'s Nobel Prize for literature in 1954.</p>', '8.99', '0.00', 5, 'old.jpg', '2024-03-17 19:47:56'),
(18, 'The Picture of Dorian Gray', 'Oscar Wilde', '<p>Oscar Wilde’s only novel is the dreamlike story of a young man who sells his soul for eternal youth and beauty.\r\n<br><br>\r\nIn this celebrated work Wilde forged a devastating portrait of the effects of evil and debauchery on a young aesthete in late-19th-century England. Combining elements of the Gothic horror novel and decadent French fiction, the book centers on a striking premise: As Dorian Gray sinks into a life of crime and gross sensuality, his body retains perfect youth and vigor while his recently painted portrait grows day by day into a hideous record of evil, which he must keep hidden from the world. For over a century, this mesmerizing tale of horror and suspense has enjoyed wide popularity. It ranks as one of Wilde\'s most important creations and among the classic achievements of its kind.</p>', '10.99', '0.00', 10, 'dorian.jpg', '2024-04-01 18:47:56'),
(19, 'A Promised Land', 'Barack Obama', '<p>In the stirring, highly anticipated first volume of his presidential memoirs, Barack Obama tells the story of his improbable odyssey from young man searching for his identity to leader of the free world, describing in strikingly personal detail both his political education and the landmark moments of the first term of his historic presidency—a time of dramatic transformation and turmoil.\r\n<br><br>\r\nA Promised Land is extraordinarily intimate and introspective—the story of one man’s bet with history, the faith of a community organizer tested on the world stage. Obama is candid about the balancing act of running for office as a Black American, bearing the expectations of a generation buoyed by messages of “hope and change,” and meeting the moral challenges of high-stakes decision-making. He is frank about the forces that opposed him at home and abroad, open about how living in the White House affected his wife and daughters, and unafraid to reveal self-doubt and disappointment. Yet he never wavers from his belief that inside the great, ongoing American experiment, progress is always possible.\r\n<br><br>\r\nThis beautifully written and powerful book captures Barack Obama’s conviction that democracy is not a gift from on high but something founded on empathy and common understanding and built together, day by day.</p>', '15.99', '0.00', 10, 'promised.jpg', '2024-03-01 20:47:56'),
(20, 'Choujin X', 'Sui Ishida', '<p> Dark humor and quirky horror unite in this tale of clashing heroes and monsters from the creator of Tokyo Ghoul and Tokyo Ghoul: re!\r\n<br><br>\r\nBest friends Tokio and Azuma do everything together, even if most of the time it feels like Tokio is just stumbling along in Azuma’s cooler, more talented footsteps. But when they’re attacked one night by a superhuman mutant called a choujin, Tokio finally has a chance to shine—by turning into a choujin himself!\r\n<br><br>\r\nBeing a superpowered creature isn’t all it’s cracked up to be, though. Tokio has to hide his transformation from his family and dodge a truancy charge at school, all while dealing with the increasingly odd incidents happening around town!\r\n </p>', '7.99', '0.00', 10, 'choujin.jpg', '2024-04-30 20:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `first_name`, `last_name`, `email`, `password`, `date`) VALUES
(1, 3314993, 'John', 'Doe', 'john.doe001@gmail.com', '987654', '2024-04-21 16:11:05'),
(2, 78539878203, 'Jane', 'Doe', 'jane.doe001@gmail.com', 'JaneDoe', '2024-04-21 16:47:33'),
(3, 9222394298, 'Harry', 'Potter', 'harry.potter001@gmail.com', 'HarryPotter', '2024-04-21 17:53:03'),
(4, 835065106791, 'Kanye', 'West', 'kanye.west98@gmail.com', 'KanyeWest', '2024-04-22 15:36:44'),
(5, 7287215545489300157, 'Power', 'Ranger', 'power.ranger123@gmail.com', 'PowerRanger', '2024-04-28 15:08:10'),
(6, 1313638446, 'George', 'Washington', 'george.washington001@gmail.com', 'America', '2024-05-01 15:27:42'),
(7, 4993384112, 'Tom', 'Holland', 'spider.man001@gmail.com', '12345', '2024-05-02 14:58:04'),
(8, 1521011881502, 'Clark', 'Kent', 'super.man001@gmail.com', 'SuperMan', '2024-05-05 16:28:20'),
(9, 145659, 'Bruce', 'Wayne', 'dark.knight001@gmail.com', 'Batman', '2024-05-07 13:09:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `date` (`date`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
