-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2017 at 04:49 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tdt`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiet`
--

CREATE TABLE IF NOT EXISTS `chitiet` (
  `idGct` int(11) NOT NULL,
  `idSct` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` bigint(11) NOT NULL,
  `thoigian` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitiet`
--

INSERT INTO `chitiet` (`idGct`, `idSct`, `soluong`, `tongtien`, `thoigian`) VALUES
(41, 21, 1, 78500, '0000-00-00 00:00:00'),
(42, 5, 12, 2400000, '0000-00-00 00:00:00'),
(56, 4, 3, 438000, '2017-12-29 21:02:32'),
(57, 25, 1, 399000, '2017-12-29 21:02:45'),
(58, 6, 1, 362000, '2017-12-29 21:03:00'),
(68, 6, 5, 1810000, '2017-12-30 22:01:44'),
(69, 2, 5, 1700000, '2017-12-30 22:02:14'),
(70, 2, 4, 1360000, '2017-12-30 22:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `commet`
--

CREATE TABLE IF NOT EXISTS `commet` (
  `ID_comment` int(11) NOT NULL,
  `name_comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `commet`
--

INSERT INTO `commet` (`ID_comment`, `name_comment`, `content`, `email`) VALUES
(3, 'Trần Văn B', 'Giá cả rất phải chăng! :3', 'tranvanB@gmail.com'),
(4, 'Phạm Thị B', 'shop nên bổ sung thêm nhiều sách hơn nữa ! :)', 'ptB@gmail.com'),
(5, 'peter ', 'good shop!', 'peter@gmail.com'),
(6, 'aa', 'sdkfjsdlfjsdfjdslkfjlsdkfjsdlkfj', 'aaa@gmail.com'),
(7, 'sdfjdslfjlds', 'lfgjsdgjsd;ljfdsfjd;sf', 'ksdjfldsf@gmail.com'),
(8, 'đsfsdfdsf', 'sdfjsdlfjsdfjdslkfjdslk', 'hhlh@gmail.com'),
(9, 'gfhgfhgfh', 's;sdjgpofdjg;fdj;fdgfd', 'sfdfdsfds@gmail.com'),
(10, 'ytuytuyt', 'dfjlgjsdkljfdsfjljkdsfds', 'uiyuiyu@gmail.com'),
(11, 'ogjprojtretrep', 'jgfdgk;hkp[hkbgkfg', 'hjptojtrpg@gmail.com'),
(12, 'fdgkfdgfdgj', 'sldjflksjflkdsfds', 'kkjgldjf@gmail.com'),
(13, 'hfggfhkl', 'fjdskjfdlkfjldskfjdskfjds', 'lfdkg;lfgfdgjfd;@gmail.com'),
(16, 'Nguyen', 'good shop', 'nguyen@gmail.com'),
(17, 'neymar', 'i like this shop!', 'neymar@gmail.com'),
(18, 'leo', 'good good!! :v', 'leo@gmail.com'),
(19, 'ggg', 'ggg', 'ggg'),
(20, 'asdg', 'sfsfsfsdfsdfdsfsd', 'sdfdssf@gmail.com'),
(21, 'hhh', 'hhh', 'hhh');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE IF NOT EXISTS `danhmuc` (
  `id` int(11) NOT NULL,
  `tenDM` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tenDM`) VALUES
(1, 'Sách giảm giá'),
(2, 'Sách nghệ thuật'),
(3, 'Sách cho trẻ em'),
(4, 'Sách thiếu niên'),
(5, 'Sách lịch sử'),
(6, 'Sách nấu ăn'),
(7, 'Sách về chủ đề lãng mạn'),
(8, 'Sách chủ đề bí ẩn');

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE IF NOT EXISTS `giohang` (
  `idG` int(11) NOT NULL,
  `nguoidat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nguoinhan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `sdt` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`idG`, `nguoidat`, `nguoinhan`, `diachi`, `sdt`) VALUES
(41, 'neymar', 'neymar', 'brazil', '0321654987'),
(42, 'neymar', 'Neymar', 'brazil CCC', '0321654987'),
(56, 'CR7', 'a', 'a', '0231456987'),
(57, 'CR7', 's', 's', '0321456'),
(58, 'CR7', 'q', 'q', '365214'),
(68, 'thaicpb', 'Nguyễn Viết Thái', 'Vũ An , Kiến Xương , Thái Bình', '0969243103'),
(69, 'thaicpb', 'qq', 'qq', '01662006782'),
(70, 'thien', 'Nguyen Xuan Thien', 'Ha NOi', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

CREATE TABLE IF NOT EXISTS `sach` (
  `idSach` int(11) NOT NULL,
  `idDM` int(11) NOT NULL,
  `tenSach` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tenTG` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `gia_sale` int(11) NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `ngay` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sach`
--

INSERT INTO `sach` (`idSach`, `idDM`, `tenSach`, `tenTG`, `gia`, `gia_sale`, `mota`, `image`, `ngay`) VALUES
(1, 3, 'C.Underpants & the Perilous Plot of Professor Poopypants', 'Dav Pilkey', 123000, 0, 'The fourth book in Dav Pilkey''s mega-bestselling Captain Underpants series. Now with super-cool foil covers! Shiny! Fun!\r\n\r\nGeorge and Harold aren''t bad kids. They just like to "liven things up" for everybody. Unfortunately, their thoughtful jokes sometimes get them into a LOT of trouble. And when Professor Pippy P. Poopypants becomes their new science teacher...well, George and Harold almost cause the entire planet to be taken over by a maniacal, mad-scientist guy in a giant robot suit! Who will stop the perilous plot of Poopypants?!!? This looks like a job for Captain Underpants!', 'https://images-na.ssl-images-amazon.com/images/I/81k060HjKlL.jpg', '0000-00-00'),
(2, 2, 'Deconstructing The Incal: Oversized Deluxe', 'Jean Giraud', 340000, 0, 'Deconstructing The Incal lifts the veil on many of the mysteries and secrets surrounding the seminal science-fiction graphic novel, which has become the cornerstone of the Jodoverse.This encyclopedic reference book, is packed with fascinating insights from The Incal''s creators, Jodorowsky and Mœbius, alongside revealing text, and rare and unseen preliminary illustrations.', 'https://images-na.ssl-images-amazon.com/images/I/61nqxZ4M3WL.jpg', '0000-00-00'),
(3, 2, 'Hellboy Omnibus Volume 2: Strange Places', 'Mike Mignola', 230000, 0, 'Hellboy''s complete story is presented for the first time in chronological order for the ultimate reading experience. \r\n\r\nThis 416-page volume covers Hellboy''s adventures from 1998 to 2005, reprinting Conqueror Worm, Strange Places, Into the Silent Sea, and "The Right Hand of Doom, "Box Full of Evil," and "Being Human" from The Right Hand of Doom and B.P.R.D. Being Human', 'https://images-na.ssl-images-amazon.com/images/I/81DMwCsw-BL.jpg', '0000-00-00'),
(4, 3, 'How to Train Your Dragon: The Serpent''s Heir', 'Dean Debloid', 146000, 0, 'The dragons of Berk are coming to Dark Horse! \r\n\r\nHiccup, Toothless, and all their dragon-riding friends from DreamWorks Animation''s acclaimed How to Train Your Dragon films are starting new adventures in comics! Created with the help of the film''s writer, director, and producer Dean DeBlois, these graphic novellas will bridge the gap between the second film and the upcoming third film. More adventures, more dragon lore, and more fun! You won''t have to wait years for more dragons; they are coming to you--in comics!', 'https://images-na.ssl-images-amazon.com/images/I/81sNdZGYfwL.jpg', '0000-00-00'),
(5, 2, 'Moebius Library: Inside Moebius Part 1', 'Moebius', 200000, 0, 'Working closely with Moebius Production in France, Dark Horse presents Inside Moebius, A six-part study with Inside Moebius Part 1 collecting the first two chapters in this fantastic exploration of a creator meeting his own creations. Dark Horse will release all parts to this exceptional, intimate series in 2018! This is the third volume in the Moebius Library hardcover series and the beginning of Moebius''s most intensely personal project.', 'https://images-na.ssl-images-amazon.com/images/I/819IXVPrWRL.jpg', '0000-00-00'),
(6, 2, 'Moebius Library: The World of Edena', 'Moebius', 362000, 0, 'Working closely with Moebius Productions in France, Dark Horse is putting the work of a master storyteller back in print--with some material in English for the first time! \r\n\r\nStel and Atan are interstellar investigators trying to find a lost space station and its crew. When they discover the mythical paradise planet Edena, their lives are changed forever. The long out-of-print Edena Cycle from Moebius gets a deluxe hardcover treatment! Moebius''s World of Edena story arc is comprised of five chapters--Upon a Star, Gardens of Edena, The Goddess, Stel, and Sra--which are all collected here. \r\n\r\nA storyboard artist and designer (Alien, Tron, The Fifth Element, among many others) as well as comic book master, Moebius''s work has influenced creators in countless fields.', 'https://images-na.ssl-images-amazon.com/images/I/81d2g6VjhtL.jpg', '0000-00-00'),
(7, 4, 'OMG I''m a Teen! Now What?: A Survival Guide for Teenage Girls (OMG Teen Book Series 1)', 'KaKaShi', 423000, 0, 'Discover all girl stuff, advice explaining teenager problems, and tips for girls you’ll not want to miss/\r\n\r\n\r\nIn this book you will learn habits of highly effective people, and tips and strategies aimed at helping teenage girls transform into confident, happy and successful young adults. The OMG Teen Book Series teaches teenage girls that success and happiness are possible, regardless of their current struggles or circumstances. \r\n\r\nThe OMG authors are passionate and committed to guiding teenage girls to achieve remarkable success in their academic and personal lives.\r\n\r\nOMG I''m a Teen! Now What? - A Survival Guide for Teenage Girls will also unlock all of your teen problems and propel you towards being a successful adult. The secrets and actionable tips in this teen book are guaranteed to help you hit your target with power and precision every time. Be it improving your relationships, doing well in school, dating or finding the right makeup advice, it is all here in this clear, practical, and riveting survival guide.', 'https://images-na.ssl-images-amazon.com/images/I/51eL4vis8FL.jpg', '0000-00-00'),
(8, 3, 'Plants vs. Zombies Volume 1: Lawnmageddon', 'Paul Tobin', 159000, 0, 'The confusing-yet-brilliant inventor known only as Crazy Dave helps his niece, Patrice, and young adventurer Nate Timely fend off a "fun-dead" neighborhood invasion in Plants vs. Zombies: Lawnmageddon! Winner of over thirty "Game of the Year" awards, Plants vs. Zombies is now determined to shuffle onto all-ages bookshelves to tickle funny bones and thrill... brains. ', 'https://images-na.ssl-images-amazon.com/images/I/81tifoAczbL.jpg', '0000-00-00'),
(9, 3, 'Plants vs. Zombies Volume 4: Grown Sweet Home', 'Paul Olin', 236000, 0, 'A new story arc begins! A group of young plants--led by Fred the Sunflower, Jeff the Bloomerang, and Grrawrr-Bear the Bonk Choy--move out of Crazy Dave''s garage and into his huge family mansion in Neighborville. Nate and Patrice head over with them to make sure they don''t accidentally destroy the place, but why is Dr. Zomboss spying on them? What secrets does he hope to learn and convey to his zombie army? Artist Andie Tong (Zodiac, Tron: Betrayal) joins writer Paul Tobin (Bandette, Marvel Adventures) for the feature story! Bonus stories by Karim Friha, Nneka Myers, and others!', 'https://images-na.ssl-images-amazon.com/images/I/71Dwx37yzDL.jpg', '0000-00-00'),
(10, 4, 'The Manual to Manhood: How to Cook the Perfect Steak, Change a Tire, Impress a Girl & 97 Other Skills You Need to Survive', 'Jonathan Catherman', 239000, 0, 'There''s a lot a young man in the making needs to succeed as he grows up and prepares to make his way in the world. Many important skills and character traits he should acquire he might not be quick to ask how to do because, well then, people would know he doesn''t know what he is doing, just yet. For all the guys out there who want to have it all together, Jonathan Catherman offers this collection of one hundred step-by-step instructions on almost everything a guy needs to know, including how to; wear cologne correctly · grill a steak · tie a tie · manage money · talk to a girl · plan a date · write a résumé · ask for a reference · clean a bathroom · throw darts · change a tire · behave during a traffic stop · fold a shirt · clear a sink drain · find a stud in a wall. In fact, if it''s in here, it''s an important skill or character trait practiced by capable and confident men. With great illustrations and supporting social media, this all-in-one reference tool is the perfect gift for any guy''s birthday, graduation, or just because you care that he becomes the best of men.', 'https://images-na.ssl-images-amazon.com/images/I/51DDDmmVXQL.jpg', '0000-00-00'),
(11, 4, 'Timekeeper', 'Tara Sim', 146000, 0, '“I was in an accident. I got out. I''m safe now.” An alternate Victorian world controlled by clock towers, where a damaged clock can fracture time―and a destroyed one can stop it completely.\r\n\r\nA prodigy mechanic who can repair not only clockwork, but time itself, determined to rescue his father from a Stopped town.\r\n\r\nA series of mysterious bombings that could jeopardize all of England.\r\n\r\n> A boy who would give anything to relive his past, and one who would give anything to live at all.\r\n\r\nA romance that will shake the very foundations of time.\r\n\r\nThe first book in a dazzling new steampunk-fantasy trilogy, Timekeeper introduces a magical world of mythology and innovation that readers will never want to leave.', 'https://images-na.ssl-images-amazon.com/images/I/717N6FajOyL.jpg', '0000-00-00'),
(12, 6, 'Love Real Food: More Than 100 Feel-Good Vegetarian Favorites to Delight the Senses and Nourish the Body', 'Kathryne Taylor', 189000, 0, 'The path to a healthy body and happy belly is paved with real food--fresh, wholesome, sustainable food--and it doesn''t need to be so difficult. No one knows this more than Kathryne Taylor of America''s most popular vegetarian food blog, Cookie and Kate. With Love Real Food, she offers over 100 approachable and outrageously delicious meatless recipes complete with substitutions to make meals special diet-friendly (gluten-free, dairy-free, and egg-free) whenever possible. Her book is designed to show everyone--vegetarians, vegans, and meat-eaters alike--how to eat well and feel well.\r\n\r\nWith brand-new, creative recipes, Taylor inspires you to step into the kitchen and cook wholesome plant-based meals, again and again. She''ll change your mind about kale and quinoa, and show you how to make the best granola you''ve ever tasted. You''ll find make-your-own instant oatmeal mix and fluffy, naturally sweetened, whole-grain blueberry muffins, hearty green salads and warming soups, pineapple pico de gallo, healthier homemade pizzas, and even a few favorites from the blog. Of course, Love Real Food wouldn''t be complete without plenty of stories starring Taylor''s veggie-obsessed, rescue dog sous-chef, Cookie! Taylor celebrates whole foods by encouraging you not just to "eat this," but to eat like this. Take it from her readers: you''ll love how you feel.', 'https://images-na.ssl-images-amazon.com/images/I/61oY82bEvsL.jpg', '0000-00-00'),
(13, 6, 'Vibrant India: Fresh Vegetarian Recipes from Bangalore to Brooklyn', 'Chitra Agrawal', 279000, 0, 'From the acclaimed chef and owner of Brooklyn Delhi, a debut cookbook focused on the celebrated vegetarian fare of South India.\r\n \r\nLifelong vegetarian and chef Chitra Agrawal takes you on an epicurean journey to her mother’s hometown of Bangalore and back to Brooklyn, where she adapts her family’s South Indian recipes for home cooks. This particular style of Indian home cooking, often called the “yoga diet,” is light and fresh, yet satisfying and rich in bold and complex flavors. Grains, legumes, fresh produce, coconut, and yogurt—along with herbs, citrus, chiles, and spices—form the cornerstone of this delectable cuisine, rooted in vegetarian customs and honed over centuries for optimum taste and nutrition.  \r\n \r\nFrom the classic savory crepe dosa, filled with lemony turmeric potatoes and cilantro coconut chutney, to new creations like coconut polenta topped with spring vegetables ''upma" and homemade yogurt, the recipes in Vibrant India are simple to prepare and a true celebration of color and flavor on a plate. Chitra weaves together the historical context behind the region’s cuisine and how she brought some of these age-old traditions to life thousands of miles away in Brooklyn during the city’s exciting food renaissance. \r\n\r\nRelying on her experience as a culinary instructor, Chitra introduces the essential Indian cooking techniques, tips, and ingredients you’ll need to prepare a full range of recipes from quick vegetable stir frys (corn, basil, and leeks flavored with butter, cumin, and black pepper), salads (citrus red cabbage and fennel slaw with black mustard seeds, curry leaves, and chile), yogurt raitas (shredded beets and coconut in yogurt), and chutneys and pickles (preserved Meyer lemon in chile brine) to hearty stews (aromatic black eyed peas, lentils, and greens), coconut curries (summer squash in an herby coconut yogurt sauce), and fragrant rice dishes (lime dill rice with pistachios). Rounding out the book is an array of addictive snacks (popcorn topped with curry leaf butter), creative desserts (banana, coconut, and cardamom ice cream), and refreshing drinks (chile watermelon juice with mint). Chitra provides numerous substitutions to accommodate produce seasonality, ingredient availability, and personal tastes. The majority of recipes are gluten-free and vegan or can be easily modified to adhere to those dietary restrictions. \r\n\r\nWhether you are a vegetarian or just looking for ways to incorporate more vegetarian recipes into your repertoire, Vibrant India is a practical guide for bringing delicious Indian home cooking to your table on a regular basis.\r\n\r\n\r\nFrom the Hardcover edition.', 'https://images-na.ssl-images-amazon.com/images/I/61BUwsyhHlL.jpg', '0000-00-00'),
(14, 6, 'Kokkari: Contemporary Greek Flavors', 'Erik Cosselmon', 399000, 0, 'Traditional family recipes and the ancient Hellenic custom of welcoming the stranger as a friend known in Greece as philoxenia have inspired the uniquely welcoming ambience of Kokkari restaurant in San Francisco. A whole spring lamb spit-roasting over an open fire greets diners, and the menu offers familiar dishes like dolmades, avgolemono soup, and lamb moussaka along with more unusual Greek dishes such as deep fried smelt, watermelon and feta salad, and grilled octopus. Through its use of fresh seasonal ingredients, Kokkari brings a refined, cosmopolitan sensibility to a beloved Mediterranean culinary tradition. Its owners and chefs are proud to have ushered in a new era of appreciation for vibrant Greek flavors. Now they invite you to try some of their favorite dishes at home, and wish you a Greek bon appetit: kali orexi!', 'https://images-na.ssl-images-amazon.com/images/I/517Q0sa9b9L.jpg', '0000-00-00'),
(15, 5, 'Jungle of Stone: The Extraordinary Journey of John L. Stephens and Frederick Catherwood, and the Discovery of the Lost Civilization of the Maya', 'William Carlsen', 239000, 0, 'New York Times Bestseller (Expeditions) • THE "MASTERFUL CHRONICLE"* OF THE DISCOVERY OF THE LEGENDARY LOST CIVILIZATION OF THE MAYA--AN "ADVENTURE TALE THAT MAKES INDIANA JONES LOOK TAME"*\r\n\r\nIn 1839, rumors of extraordinary yet baffling stone ruins buried within the unmapped jungles of Central America reached two of the world’s most intrepid travelers. Seized by the reports, American diplomat John Lloyd Stephens and British artist Frederick Catherwood—both already celebrated for their adventures in Egypt, the Holy Land, Greece, and Rome—sailed together out of New York Harbor on an expedition into the forbidding rainforests of present-day Honduras, Guatemala, and Mexico. What they found would upend the West’s understanding of human history.\r\n\r\nIn the tradition of Lost City of Z and In the Kingdom of Ice, former San Francisco Chronicle journalist and Pulitzer Prize finalist William Carlsen reveals the remarkable story of the discovery of the ancient Maya. Enduring disease, war, and the torments of nature and terrain, Stephens and Catherwood meticulously uncovered and documented the remains of an astonishing civilization that had flourished in the Americas at the same time as classic Greece and Rome—and had been its rival in art, architecture, and power. Their masterful book about the experience, written by Stephens and illustrated by Catherwood, became a sensation, hailed by Edgar Allan Poe as “perhaps the most interesting book of travel ever published” and recognized today as the birth of American archaeology. Most important, Stephens and Catherwood were the first to grasp the significance of the Maya remains, understanding that their antiquity and sophistication overturned the West’s assumptions about the development of civilization.', 'https://images-na.ssl-images-amazon.com/images/I/51vAk6oakCL._SX330_BO1,204,203,200_.jpg', '0000-00-00'),
(16, 5, 'The Things Our Fathers Saw—The Untold Stories of the World War II Generation-Volume II: War in the Air—From the Great Depression to Combat ', 'Matthew', 79000, 0, 'Dying for freedom isn’t the worst that could happen. Being forgotten is.', 'https://images-na.ssl-images-amazon.com/images/I/51Glok-zgvL.jpg', '0000-00-00'),
(17, 7, 'Surprise Package: A Bad Boy Christmas Romance', 'Kira Blakely', 19000, 0, 'She needs a fiancé for Christmas, so I''ll pretend.\r\nHard not to when a gorgeous virgin walks into your strip club.\r\nShe''s thinks this is an escort service, and that I''m for hire.\r\nMan is she in the wrong place.', 'https://images-na.ssl-images-amazon.com/images/I/51-77Rt0oiL.jpg', '0000-00-00'),
(18, 7, 'The Art of Running in Heels', 'Rachel Gibson', 139000, 0, 'Running in five-inch stilettos is an art form\r\n\r\nLeaving your fiancé at the altar on live television is a disaster. Lexie Kowalsky thought she was ready to get married in front of millions of people, but at the last minute she fled the set of television’s hottest reality show, Gettin’ Hitched. Wearing a poofy white dress and a pair of five-inch sparkly shoes, Lexie hopped a float plane for Sandspit, Canada. She figured no one would find her there. But she was wrong', 'https://images-na.ssl-images-amazon.com/images/I/51rCspwyQYL._SX329_BO1,204,203,200_.jpg', '0000-00-00'),
(19, 7, 'A Sense of Belonging', '	\r\nLaura Branchflowe', 79000, 0, 'Casey Jansen is celebrating her twenty-first birthday when she catches a glimpse of the older man she''s been secretly obsessing over since passing him on a running trail. When her sister identifies him as Tony Prossi, a well-known Washington, D.C. attorney, Casey instantly wishes she was older. There is no way he is going to be interested in a college student. At least that''s what she believes until their eyes meet.\r\n\r\nAs a partner in a top D.C. law firm and son of a powerful U.S. senator, Tony Prossi understands the importance of image. There is certainly no place in his life for a woman as young as Casey Jansen, especially not when he''s considering running for his father''s Senate seat. But one night with the Georgetown University student ignites a hunger he can''t seem to quench. And Tony will have to decide whether being with Casey is worth the risk to his reputation and family.\r\n\r\nLaura Branchflower is a compelling new voice in contemporary romance with believable characters dealing with real life struggles.\r\n\r\nA Sense of Belonging is a standalone novel but some of the characters also appear in When I Saw You, her debut novel.', 'https://images-na.ssl-images-amazon.com/images/I/51YFZlK0CfL.jpg', '0000-00-00'),
(20, 7, 'On the Way to You', 'Kandi Steiner', 79000, 0, 'What makes you happy?\r\n\r\nThat was the question Emery Reed asked me the day we met, and I couldn’t give him a single answer. I could have said my dog, or my books, or yoga — but I just stared.\r\n\r\nAnd then, I got in his car.\r\n\r\nIt was crazy to take a road trip with a stranger, but after years of standing still, he was my one-way ticket to a new life, and I wasn’t going to miss it.\r\n\r\nWe shared the same space, the same car, the same hotel room — and still, we were strangers. One day we’d be laughing, the next, we wouldn’t speak. Emery was surrounded by impenetrable walls, but I wanted in.\r\n\r\nDiscovering his journal changed everything.\r\n\r\nI read his thoughts, words not meant for anyone’s eyes, and the more I learned about him, the harder I fell. It turned out nothing made Emery Reed happy, and I wanted to change that.\r\n\r\nI earned his trust by violating his privacy, and as wrong as it was, it worked — until one entry revealed a darkness I never knew existed, a timer I never knew was ticking.\r\n\r\nSuddenly, what made me happy was saving Emery from himself. I just didn’t know if I could.', 'https://images-na.ssl-images-amazon.com/images/I/51KqkMR913L.jpg', '0000-00-00'),
(21, 8, 'A Criminal Defense', 'William L. Myers Jr', 78500, 0, 'Losing the trial of his life could mean losing everything.\r\n\r\nWhen a young reporter is found dead and a prominent Philadelphia businessman is accused of her murder, Mick McFarland finds himself involved in the case of his life. The defendant, David Hanson, was Mick’s close friend in law school, and the victim, a TV news reporter, had reached out to Mick for legal help only hours before her death.\r\n\r\nMick’s played both sides of Philadelphia’s courtrooms. As a top-shelf defense attorney and former prosecutor, he knows all the tricks of the trade. And he’ll need every one of them to win.\r\n\r\nBut as the trial progresses, he’s disturbed by developments that confirm his deepest fears. This trial, one that already hits too close to home, may jeopardize his firm, his family—everything. Now Mick’s only way out is to mastermind the most brilliant defense he’s ever spun, one that will cross every legal and moral boundary.', 'https://images-na.ssl-images-amazon.com/images/I/51jihRiWgFL.jpg', '0000-00-00'),
(22, 8, 'Justice Burning (Darren Street Book 2)', 'Scott Pratt', 99000, 0, 'A Wall Street Journal bestseller.\r\n\r\nFormer defense attorney Darren Street is desperately trying to put his life back together after spending two years in a maximum-security prison for a murder he didn’t commit. He’s rebuilding his law practice, reconnecting with his son, and falling more deeply in love with his girlfriend, fellow attorney Grace Alexander. But the past casts a long shadow, and for Street, there’s no outrunning it.\r\n\r\nTormented by nightmares and violent mood swings, Street is seeking treatment for PTSD when a new trauma shakes his world: his mother is killed in an explosion, but the police believe Street was the intended target. Payback from an old enemy, or the calling card of a deadly new foe? Whoever’s behind it, Street begins to lose his grip on reality and decides to take matters in his own hands. And the law won’t stop him from revenge. Justice has a new name: Darren Street.', 'https://images-na.ssl-images-amazon.com/images/I/51V52j9zEzL.jpg', '0000-00-00'),
(23, 8, 'Justice Lost (Darren Street Book 3)', 'Scott Pratt', 79000, 0, 'After forfeiting years serving time for a false murder conviction, former criminal defense attorney Darren Street finally got his freedom back and is trying to build a regular life. But when an unthinkable tragedy shatters his hard-earned normalcy, Street is left reeling from the devastating blow.\r\n\r\nAs the criminal-justice system refuses to dispense justice, he sets out—without mercy—after the man responsible. Unwilling to stop at simply righting one wrong, Street decides to dust off his legal skills and dive back in—this time to unseat the district attorney general in Knoxville, whose callous indifference nearly let a man get away with murder.\r\n\r\nNow navigating a broken establishment already steeped in corruption, Street will find the retribution and redemption he so desperately needs—unless it draws him even deeper into the very chaos that derailed his life in the first place.', 'https://images-na.ssl-images-amazon.com/images/I/51iGtTRV6yL.jpg', '0000-00-00'),
(24, 8, 'River on Fire ', 'Scott Pratt', 59000, 0, '"River on Fire" is the story of Randall Smith, a foundling orphan growing up in the midwestern United States in the late 1960s. Without the intimate guidance of loving parents, Randall struggles to understand a dangerous and confusing world during one of the most tumultuous times in modern history. Immensely readable and filled with humor and irony, "River on Fire" will both warm and break your heart. \r\n\r\nA Discussion/Study Guide is included at the end of the novel.\r\n\r\n"From first page to last, there’s not a single false note to be heard. "River on Fire" is beautifully rendered, and Randall Smith is a hero you''ll find it very easy indeed to root for. -- Stephen C. Spencer, "Upon Further Review"', 'https://images-na.ssl-images-amazon.com/images/I/41CzUY8WQlL.jpg', '0000-00-00'),
(25, 5, 'Leningrad-Morality in a City under Siege ', 'Sergev Arcov', 399000, 0, 'This book recounts one of the greatest tragedies of the twentieth century: the siege of Leningrad. It is based on the searing testimony of eyewitnesses, some of whom managed to survive, while others were to die in streets devastated by bombing, in icy houses, or the endless bread queues. All of them, nevertheless, wanted to pass on to us the story of the torments they endured, their stoicism, compassion and humanity, and of how people reached out to each other in the nightmare of the siege.', 'https://images-na.ssl-images-amazon.com/images/I/51FEhIB%2B4LL._SX334_BO1,204,203,200_.jpg', '0000-00-00'),
(26, 5, 'The Just King: The Tibetan Buddhist Classic on Leading an Ethical Life', 'Jamgom Mipahm', 359000, 0, 'A translation of a popular Buddhist work on worldly ethics by Tibet''s most famous philosopher.\r\n\r\nLeadership. Power. Responsibility. From Sun Tzu to Plato to Machiavelli, sages east and west have advised kings and rulers on how to lead. Their motivations and techniques have varied, but one thing they all have had in common is that their advice has been as relevant to the millions who have read their works as it has been to the few kings and princes they were, on the surface, addressed to.\r\nThe nineteenth-century Buddhist monk and luminary Jamgön Mipham’s letter to the king of Dergé, whose small kingdom straddled China and Tibet during a particularly turbulent period, is similar in the universality of its message. This work, however, is unique in that it stresses compassion, impartiality, self-control, and virtue as essential for long-lasting success—whether as a leader or an individual trying to live a meaningful life. Mipham’s historic contribution to ethics and governance, until now little studied outside of Buddhist circles, teaches us the importance of protecting life, fair taxation, environmental sustainability, aiding the poor, and freedom of religion. Both present day leaders and those they lead will find this classic work, finally available in English, profoundly illuminating on political, societal, and personal levels', 'https://images-na.ssl-images-amazon.com/images/I/51Kxsa5MY%2BL._SX331_BO1,204,203,200_.jpg', '0000-00-00'),
(27, 6, 'Baking Chez Moi: Recipes from My Paris Home to Your Home Anywhere', 'Dorie Greenspan', 440000, 0, 'A â€œculinary guruâ€ and author of the award-winning Around My French Table and Baking: From My Home to Yours returns with an exciting collection of simple desserts from French home cooks and chefs\r\nWith her groundbreaking bestseller Around My French Table, Dorie Greenspan changed the way we view French food. Now, in Baking Chez Moi, she explores the fascinating world of French desserts, bringing together a charmingly uncomplicated mix of contemporary recipes, including original creations based on traditional and regional specialties, and drawing on seasonal ingredients, market visits, and her travels throughout the country.\r\nLike the surprisingly easy chocolate loaf cake speckled with cubes of dark chocolate that have been melted, salted, and frozen, which she adapted from a French chefâ€™s recipe, or the boozy, slow-roasted pineapple, a five-ingredient cinch that she got from her hairdresser, these recipes show the French knack for elegant simplicity. In fact, many are so radically easy that they defy our preconceptions: crackle-topped cream puffs, which are all the rage in Paris; custardy apple squares from Normandy; and an unbaked confection of corn flakes, dried cherries, almonds, and coconut that nearly every French woman knows.\r\nWhether itâ€™s classic lemon-glazed madeleines, a silky caramel tart, or â€œLes Whoopie Pies,â€ Dorie puts her own creative spin on each dish, guiding us with the friendly, reassuring directions that have won her legions of ardent fans.', 'https://images-na.ssl-images-amazon.com/images/I/51j7fPmSXqL.jpg', '0000-00-00'),
(28, 4, 'Fierce: How Competing for Myself Changed Everything', 'Aly Raisman', 118000, 0, 'The New York Times bestseller!\r\n\r\nDiscover Aly Raisman''s inspiring story of dedication, perseverance, and learning to think positive even in the toughest times on her path to gold medal success in two Olympic Games--and beyond.\r\n\r\nAly Raisman first stepped onto a gymnastics mat as a toddler in a "mommy & me" gymnastics class. No one could have predicted then that sixteen years later, she''d be standing on an Olympic podium, having achieved her dreams.\r\n\r\nAly''s road to success was full of hard work, perseverance, and victories, but not without its hardships. Aly faced many obstacles, from naysayers who said she''d never make it in gymnastics to classmates who shamed her for her athletic body to a devastating betrayal of trust. Through it all, Aly surrounded herself with supportive family, friends, and teammates and found the inner strength to remain positive and believe in herself. Now, in her own words, Aly shows what it takes to be a champion on and off the floor, and takes readers on a behind-the-scenes journey before, during, and after her remarkable achievements in two Olympic Games--through her highest highs, lowest lows, and all the moments in between. \r\n\r\nHonest and heartfelt, frank and funny, Aly''s story is enhanced with never-before-published photos, excerpts from the personal journals she''s kept since childhood that chronicle memorable moments with her teammates, and hard-won advice for readers striving to rise above challenges, learn to love themselves, and make their own dreams come true. ', 'https://images-na.ssl-images-amazon.com/images/I/51oiI%2BXEmPL._SX331_BO1,204,203,200_.jpg', '0000-00-00'),
(32, 6, 'Add a Pinch: Easier, Faster, Fresher Southern Classics', 'Robyn Stone', 59000, 0, 'With a foreword by Ree Drummond, this beautiful book has 100 easier, faster, lightened-up Southern recipes, from the blogger behind the popular Add a Pinch website.\r\n \r\nA generation ago, home cooks may have had all day to prepare dinner, but most folks now want convenient, fast recipes that donâ€™t rely on canned soups or other processed products. Here, fresh ingredients take center stage in slow cooker meals, casseroles and one-dish suppers, salads, soups, and desserts that have deep, satisfying flavors but are a cinch to make. Smart swaps like Greek yogurt for mayo in pimento cheese and cauliflower â€œriceâ€ put a modern spin on these dishes. With 75 color photographs and lots of sidebars, this is the new Southern cooking handbook.', 'https://images-na.ssl-images-amazon.com/images/I/61O9fJpuh-L.jpg', '0000-00-00'),
(34, 3, 'ドラえもん Doraemon ― Gadget cat from the future (Volume 9) Shogakukan English comics (Japanese) Hardcover – 2004', 'Fujiko F.Fujio', 155000, 0, 'The 9th phase of series that enjoys Doraemon in English! Since it is an English comic with Japanese, it is popular, since English-conversation expression and a word are memorized automatically. As for the 9th volume of this series, 14 works, such as "I was in the unicorn", "woods being alive", and "Doraemon is in love", are contained.', 'https://images-na.ssl-images-amazon.com/images/I/51om962edrL._SX318_BO1,204,203,200_.jpg', '0000-00-00'),
(35, 3, 'Doraemon: Gadget cat from the future, Volume 10 (Japanese) Hardcover – 2005', 'Fujiko F.Fujio', 183000, 0, '"DORAEMON ENGLISH COMICS" series which translated comics Doraemon into English. The English comic which enjoys the talk of Doraemon in English. The English comic which English attached into balloon and the Japanese translation attached out of frame is the best for English-conversation study. 14 works, such as "Space-exploration pretend play", "a rabbit monster of a back mountain", and "Tarzan trousers", are contained this time [ of the series of the 10th work ]. Bilingual notation of English and Japanese.', 'https://images-na.ssl-images-amazon.com/images/I/51XPsscnOsL._SX321_BO1,204,203,200_.jpg', '0000-00-00'),
(36, 3, 'Dragon Ball Super, Vol. 1 Paperback – May 2, 2017', 'Akira Toriyama', 179000, 0, 'Goku’s adventure from the best-selling classic manga Dragon Ball continues in this new series written by Akira Toriyama himself!\r\n\r\nEver since Goku became Earth’s greatest hero and gathered the seven Dragon Balls to defeat the evil Boo, his life on Earth has grown a little dull. But new threats loom overhead, and Goku and his friends will have to defend the planet once again in this continuation of Akira Toriyama’s best-selling series, Dragon Ball!\r\n\r\nHaving defeated Boo, Goku is starting to get bored with his life on Earth. His wife, Chi-chi, wants him to get a job, but all he wants to do is train and fight stronger enemies. Elsewhere in the universe, the God of Destruction, Beerus, and his attendant Whis are traveling from planet to planet in search of food and entertainment. After blowing up some hapless victims, Beerus is reminded of a man from his dreams with the moniker “Super Saiyan God,” or something like that... The God of Destruction sets his sights on Earth to track down this mysterious man! Maybe this will give Goku something to do? ', 'https://images-na.ssl-images-amazon.com/images/I/51Ix8l4HQpL.jpg', '0000-00-00'),
(38, 3, 'Dragon Ball Z, Vol. 3 (VIZBIG Edition) Paperback – December 2, 2008', 'Akira Toriyama', 326000, 0, 'The ultimate science fiction martial arts manga – and one of the best-selling series of all time – Dragon Ball Z is the second half of Toriyama’s touchstone saga, Dragon Ball. After years of training and adventure, Son Goku has become Earth’s ultimate warrior, and his son, Gohan, shows even greater promise. But the strikes are increasing as even deadlier enemies threaten the planet – and means non-stop action!\r\n\r\nGohan and Kuririn struggle to keep the last Dragon Ball from falling into Freeza and Vegeta’s hands, but how will they fare against Freeza’s Ginyu Force—a group of five of the strongest fighters in outer space? It could be that an unlikely ally will come to their rescue! \r\n\r\nDragon Ball Z comprises the second part of the acclaimed series Dragon Ball, which originally ran in Japan’s Weekly Shonen Jump magazine from 1984 to 1995. Collected and published into 42 volumes, the series quickly became an international bestseller. (In the United States, volumes 1 through 16 were published as Dragon Ball, and volumes 17 through 42 as Dragon Ball Z.) Widely acknowledged as a landmark series, /Dragon Ball Z/ has been adapted into animated television series, movies, video games, toys and collectibles worldwide.', 'https://images-na.ssl-images-amazon.com/images/I/813pu8UjDDL.jpg', '0000-00-00'),
(39, 6, 'Flour Water Salt Yeast: The Fundamentals of Artisan Bread and Pizza', 'Ken Forkish', 423000, 0, 'There are few things more satisfying than biting into a freshly made, crispy-on-the-outside, soft-and-supple-on-the-inside slice of perfectly baked bread. For Portland-based baker Ken Forkish, well-made bread is more than just a pleasure—it is a passion that has led him to create some of the best and most critically lauded breads and pizzas in the country.\r\n\r\nIn Flour Water Salt Yeast, Forkish translates his obsessively honed craft into scores of recipes for rustic boules and Neapolitan-style pizzas, all suited for the home baker. Forkish developed and tested all of the recipes in his home oven, and his impeccable formulas and clear instructions result in top-quality artisan breads and pizzas that stand up against those sold in the best bakeries anywhere.\r\n\r\nWhether you’re a total beginner or a serious baker, Flour Water Salt Yeast has a recipe that suits your skill level and time constraints: Start with a straight dough and have fresh bread ready by supper time, or explore pre-ferments with a bread that uses biga or poolish. If you’re ready to take your baking to the next level, follow Forkish’s step-by-step guide to making a levain starter with only flour and water, and be amazed by the delicious complexity of your naturally leavened bread. Pizza lovers can experiment with a variety of doughs and sauces to create the perfect pie using either a pizza stone or a cast-iron skillet. \r\n\r\nFlour Water Salt Yeast is more than just a collection of recipes for amazing bread and pizza—it offers a complete baking education, with a thorough yet accessible explanation of the tools and techniques that set artisan bread apart. Featuring a tutorial on baker’s percentages, advice for manipulating ingredients ratios to create custom doughs, tips for adapting bread baking schedules to fit your day-to-day life, and an entire chapter that demystifies the levain-making process, Flour Water Salt Yeast is an indispensable resource for bakers who want to make their daily bread exceptional bread.', 'https://images-na.ssl-images-amazon.com/images/I/51zh5Z0s8EL._SX398_BO1,204,203,200_.jpg', '0000-00-00'),
(40, 6, 'How to Instant Pot: Mastering All the Functions of the One Pot That Will Change the Way You Cook', 'Daniel Shumski', 340000, 0, 'Master the revolutionary appliance that is changing the way we cook!\r\n\r\nThe only Instant Pot cookbook that is organized by function, How to Instant Pot is both a guide to understanding the Instant Pot basics and a foodie’s creative collection of over 100 recipes specially crafted to take advantage of the Instant Pot’s many virtues, from cooking perfect risotto in six minutes, no stirring required, to five kinds of yogurt, to creating one-hour killer chili and soups from scratch, using dried beans.\r\n\r\nHere’s how to make incredible hands-off meals like Ziti and Italian Sausage, Maple-Mustard Pork Shoulder, and Korean-Style Short Ribs, plus plenty of sides, breakfasts, and desserts. In addition to a set of recipes for each function and master recipes with three variations each, there are surprising shortcuts—basics like quick pickles, perfect hard-boiled eggs, and a 30-minute “baked” potato. It’s the essential purchase for every instant pot owner.', 'https://images-na.ssl-images-amazon.com/images/I/91Zk2H6W7HL.jpg', '0000-00-00'),
(41, 6, 'Instant Pot® Obsession: The Ultimate Electric Pressure Cooker Cookbook for Cooking Everything Fast', 'Janet A. Zimmerman', 60000, 0, 'Over 100,000 copies in print—from the publisher of the bestselling Instant Pot® Electric Pressure Cooker Cookbook comes Instant Pot® Obsession, the latest Instant Pot® Cookbook for making ANYTHING.\r\n\r\nYour Instant Pot® has completely changed how you get food on the table…. so what are you going to make next? In the pages of Instant Pot® Obsession—the most complete Instant Pot® cookbook yet—simplicity goes one step further to create more meals, and save even more time, than ever before.', 'https://images-na.ssl-images-amazon.com/images/I/51SLMbnKlcL.jpg', '0000-00-00'),
(42, 2, 'Unicorn Coloring Books for Girls: featuring various Unicorn designs filled with stress relieving patterns. (Horses Coloring Books for Girls)', ' Brett D. Ureno', 138000, 0, 'AMAZON BEST SELLER | BEST GIFT IDEAS\r\n\r\nThis incredible adult coloring book by best-selling artist is the perfect way to relieve stress and aid relaxation while enjoying beautiful and highly detailed images. Each coloring page will transport you into a world of your own while your responsibilities will seem to fade away...\r\n\r\nUse Any of Your Favorite Tools\r\nIncluding colored pencils, pens, and fine-tipped markers.\r\n\r\nOne Image Per Page\r\nEach image is printed on black-backed pages to prevent bleed-through.\r\n\r\nDisplay Your Artwork\r\nYou can display your artwork with a standard 8.5" x 11” frame.\r\n\r\nTwo Copies of Every Image\r\nEnjoy coloring your favorite images a second time, color with a friend, or have an extra copy in case you make a mistake.\r\n\r\nIncludes FREE Digital Version\r\nAs a special bonus, you can download a PDF and print your favorite images to as many times as you want.\r\n\r\nNow on Sale\r\nRegular Price: $9.99 | SAVE $6.99, 60% OFF | Limited time only.\r\n\r\nMakes the Perfect Gift\r\nSurprise that special someone in your life and make them smile. Buy two copies and enjoy coloring together.', 'https://images-na.ssl-images-amazon.com/images/I/61eMNCwTkYL._SX381_BO1,204,203,200_.jpg', '0000-00-00'),
(43, 2, 'Imohi funny', 'Jade Summer', 136000, 0, 'Imoji funny in 2018 .. Come on', 'https://images-na.ssl-images-amazon.com/images/I/61HumdBgM4L._SX384_BO1,204,203,200_.jpg', '0000-00-00'),
(44, 1, '1500 Color Mixing ', 'William F Powell', 301000, 250000, 'bla ba bla la ', 'https://images-na.ssl-images-amazon.com/images/I/51ZbPF7N60L._SX332_BO1,204,203,200_.jpg', '0000-00-00'),
(45, 2, 'Nghệ thuật quản trị', 'Adrian Gostick & Chester Elton', 108000, 0, 'sdfdfdsfdsfsf\r\nsfsdf\r\nsdfsdf\r\nsdfs\r\ndfsdfsdfsdfsdfsdfsdfsdf\r\ngfd\r\nfhgfjhjhg\r\nkjkghjhgj\r\nhg', 'https://sachchat.net/wp-content/uploads/2017/06/thuat-quan-tri-250x353.jpg', '0000-00-00'),
(46, 5, 'History Viet Nam', 'No name', 321000, 0, 'sfjsdfdsfdsf;jdsfdgjperojgprjpb er\r\ngfglrekgjrogjregrepgjerger\r\ngregoreijgerjgojie', 'http://khaocohoc.gov.vn/sites/default/files/img006.jpg', '0000-00-00'),
(49, 7, 'A Duke in Shining Armor: Difficult Dukes', 'Loretta Chase', 80000, 0, 'Not all dukes are created equal. Most are upstanding members of Society. And then there’s the trio known as Their Dis-Graces.\r\n\r\nHugh Philemon Ancaster, seventh Duke of Ripley, will never win prizes for virtue. But even he draws the line at running off with his best friend’s bride. All he’s trying to do is recapture the slightly inebriated Lady Olympia Hightower and return her to her intended bridegroom.\r\n\r\nFor reasons that elude her, bookish, bespectacled Olympia is supposed to marry a gorgeous rake of a duke. The ton is flabbergasted. Her family’s ecstatic. And Olympia? She’s climbing out of a window, bent on a getaway. But tall, dark, and exasperating Ripley is hot on her trail, determined to bring her back to his friend. For once, the world-famous hellion is trying to do the honorable thing.\r\n\r\nSo why does Olympia have to make it so deliciously difficult for him . . . ?', 'https://images-na.ssl-images-amazon.com/images/I/517XTsYNcAL._SX317_BO1,204,203,200_.jpg', '2017-12-28'),
(50, 7, 'Lord Sinister (Secrets & Scandals Book 3)', 'Tiffany Green', 59000, 0, 'Abandoned and Alone…\r\nAmelia Jamison has lost everything.  She has no home, no money, and no way of taking care of her son.  Ten years ago, however, she had a wealthy family, many friends, and prominent young men wishing to court her.  Then she met Lord Julian Westland, Marquess of Amersleigh, who ruined her life.  She promptly fled England, abandoned and alone.  Now, to keep her son and herself from starving, she must accept the governess position offered to her.  That means returning to England.  Yet, fate yields another crushing blow, and Amelia is thrown back into the path of the very man she had never hoped to see again.', 'https://images-na.ssl-images-amazon.com/images/I/51Tm2M0GtjL.jpg', '2017-12-28'),
(51, 1, 'The Son of An Earl', 'Eleanor', 29000, 25000, 'sdfsdfdsfsdfs\r\ndfsd\r\nfsdf\r\ndsf\r\nsdf\r\nsdf\r\nsdf\r\nsfsfsfsdfsd', 'https://images-na.ssl-images-amazon.com/images/I/61rQrH7YbWL.jpg', '2017-12-28'),
(53, 1, 'A Platter of Figs and Other Recipes', 'David Tanis', 320000, 136000, 'Forget about getting back to the land, David Tanis just wants you to get back to the kitchen\r\n\r\nFor six months a year, David Tanis is the head chef at Chez Panisse, the Berkeley, California, restaurant where he has worked alongside Alice Waters since the 1980s in creating a revolution in sustainable American cuisine. The other six months, Tanis lives in Paris in a seventeenth-century apartment, where he hosts intimate dinners for friends and paying guests, and prepares the food in a small kitchen equipped with nothing more than an old stove, a little counter space, and a handful of wellused pots and pans.\r\n\r\nThis is the book for anyone who wants to gather and feed friends around a table and nurture their conversation. It’s not about showing off with complicated techniques and obscure ingredients. Worlds away from the showy Food Network personalities, Tanis believes that the most satisfying meals—for both the cook and the guest—are invariably the simplest.\r\n\r\nHome cooks can easily re-create any of his 24 seasonal, market-driven menus, from spring’s Supper of the Lamb (Warm Asparagus Vinaigrette; Shoulder of Spring Lamb with Flageolet Beans and Olive Relish; Rum Baba with Cardamom) to winter’s North African Comfort Food (Carrot and Coriander Salad; Chicken Tagine with Pumpkin and Chickpeas). Best of all, Tanis is an engaging guide with a genuine gift for words, whose soulful approach to food will make any kitchen, big or small, a warm and compelling place to spend time.', 'https://images-na.ssl-images-amazon.com/images/I/51hTmtnQlbL.jpg', '2017-12-29'),
(54, 6, 'Heart of the Artichoke and Other Kitchen Journeys', 'David Tanis', 66000, 23000, 'Recipes from a very small kitchen by a man with a very large talent. \r\n\r\nNobody better embodies the present-day mantra "Eat real food in season" than David Tanis, one of the most original voices in American cooking. For more than a quarter-century, Tanis has been the chef at the groundbreaking Chez Panisse, in Berkeley, California, where the menu consists solely of a single perfect meal that changes each evening. Tanis’s recipes are down-to-earth yet sophisticated, simple to prepare but impressive on the plate. \r\n\r\nTanis opens this soulful, fun-to-read cookbook with his own private food rituals, those treats—jalapeño pancakes, beans on toast, pasta for one—for when you are on your own in the kitchen with no one else to satisfy. Then he follows with twenty incomparable menus (five per season) that serve four to six. Each transports the reader to places far and wide.  And for grand occasions, a time for the whole tribe to gather around the table, Tanis delivers festive menus for holiday feasts. So in one book, three kinds of cooking: small, medium, and large.', 'https://images-na.ssl-images-amazon.com/images/I/517uk9XMF7L.jpg', '2017-12-29'),
(55, 4, 'When Dimple Met Rishi', 'Sandhya Menon', 32000, 0, 'A New York Times bestseller\r\n\r\nAn NPR Best Book of 2017\r\nA Buzzfeed Best YA Book of 2017\r\nA Kirkus Reviews Best Teen Book of 2017\r\nA School Library Journal Best Young Adult Book of 2017\r\nA Bustle Best YA Novel of 2017\r\nA PopSugar Best Young Adult Novel of 2017\r\nA Book Riot Best Book of 2017\r\nA Paste Magazine Best Young Adult Novel of 2017', 'https://images-na.ssl-images-amazon.com/images/I/511bUaa-oBL._SX329_BO1,204,203,200_.jpg', '2017-12-30'),
(56, 4, 'I Believe in a Thing Called Love', 'Goo', 160000, 0, 'sdfjsdlkgnlsdjgkshflsfshdflkdf\r\nsdfsdlkfjslfhlsgnlf;jgsdg\r\nsdgjsldkgsdjgsldkgjsdljgsldkgsdg\r\nsdgjlskdjgsigljskldgjowiengowdjw\r\ngdlkfnsldkfjdslkgsdlkgjsdkgjsdkg', 'https://images-na.ssl-images-amazon.com/images/I/51c5p04CpHL._SX331_BO1,204,203,200_.jpg', '2017-12-30'),
(57, 4, 'A & F', 'Han', 330000, 0, 'adadsdasdadafsdadasdasd', 'https://images-na.ssl-images-amazon.com/images/I/51-HArKnTQL._SX327_BO1,204,203,200_.jpg', '2017-12-30'),
(58, 5, 'The War Within: Diaries from the Siege of Leningrad', 'sadsaad', 450000, 400000, 'ádasdsadasdsadsadasaa\r\nádasdadsadasdadasd\r\nadadasdad', 'https://images-na.ssl-images-amazon.com/images/I/51VHcaTM5xL._SX328_BO1,204,203,200_.jpg', '2017-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `email`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@gamil.com'),
(3, 'thaicpb', '123456', 'Nguyễn Viết Thái', 'nguyenvietthai1351997@gmail.com'),
(5, 'CR7', 'cr7', 'ronaldo', 'ronaldo@gmail.com'),
(7, 'neymar', 'neymar', 'neymar JR', 'neymar@gmail.com'),
(13, 'thien', '123', 'nguyen xuan thien', 'thien@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiet`
--
ALTER TABLE `chitiet`
  ADD PRIMARY KEY (`idGct`);

--
-- Indexes for table `commet`
--
ALTER TABLE `commet`
  ADD PRIMARY KEY (`ID_comment`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`idG`);

--
-- Indexes for table `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`idSach`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitiet`
--
ALTER TABLE `chitiet`
  MODIFY `idGct` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `commet`
--
ALTER TABLE `commet`
  MODIFY `ID_comment` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `idG` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `sach`
--
ALTER TABLE `sach`
  MODIFY `idSach` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
