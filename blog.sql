-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 03, 2018 at 12:41 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `blog_tp`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
  (1, 'Frameworks PHP'),
  (2, 'Frameworks CSS'),
  (3, 'blockchain'),
  (4, 'technologie'),
  (5, 'programmation'),
  (6, 'securite'),
  (7, 'raspberry');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL,
  `content` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `idCategory` int(10) UNSIGNED NOT NULL,
  `idUser` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `img`, `created`, `idCategory`, `idUser`) VALUES
  (1, 'Blockchain: the revolution we’re not ready for', 'This is precisely the promise of blockchains.\r\nCryptocurrencies, which are built on blockchains, are all over the press these days, mostly because of the high prices, volatility, and sensational narratives surrounding debacles like Mt. Gox and The Silk Road.\r\nBut there’s something much bigger going on than just digital currencies.\r\nWhile the mainstream media has been busy speculating about prices and black market intrigues, they’ve missed the fact that beneath it all, cryptographers had quietly invented an entirely new set of technological primitives.\r\nBlockchains (and the consensus protocols that support them) were invented as a result of developers trying to solve a bold problem: how to create digital, untraceable money. By combining cryptography, game theory, economics, and computer science, they managed to create an entirely new set of tools for building decentralized systems.\r\nBut what they created will change much more than just how we exchange money. It’s going to change the entire world. And hardly anyone seems to notice.\r\nEdward Witten, the famous physicist, once said of string theory that it was “a part of 21st century physics that fell by chance into the 20th century.” In other words, the physics community was not ready for string theory.\"\"\r\n\r\nWESH', 'albert.jpg', '2017-08-09', 3, 2),
  (2, 'Sécuriser et protéger son site web des attaques des pirates', 'Comment savent-ils que mon site a une faille de sécurité ? Réponse: Google ou tout autre moteur de recherche ! Il cherche un fichier précis comme login.php, confip.php ou autres, et, combiné avec quelques mots-clés, ils savent quel CMS, blog ou e-commerce vous utilisez. Ils essaieront alors de lancer un script pour tester si l’attaque fonctionne. Il ne font même pas ça manuellement, car ils ont des logiciels qui le font automatiquement !!! Leurs logiciels testent chaque URL listée par Google à la recherche de la faille. C’est aussi simple que ça. Ils vous trouvent par hasard.\r\nDonc, nous allons essayer de nous prémunir contre ces attaques automatiques. Ces conseils ne concernent que les sites web utilisant un CMS, blog ou e-commerce, etc. programmés par des informaticiens ou par vous.\r\nCONSEIL NUMÉRO 1: votre CMS, blog ou e-commerce doit être à jour. Vous suivrez les mises à jour de sécurité et les installerez sans attendre.\r\nCONSEIL NUMÉRO 2: LES RÈGLES LES PLUS IMPORTANTES \r\nComme ce tutoriel est long, voici les règles qu’il faut appliquer en priorité. Vous pourrez inclure les autres plus tard.\r\n1- Attribuer par FTP aux fichiers les droits chmod 404 et aux dossiers les droits chmod 505. Voir l’article ci-dessous.\r\n2- Règles de filtrage par htaccess. Permet d’arrêter de nombreuses attaques avant de toucher votre site web. Voir l’article ici.\r\n3- Règles de sauvegarde et de restauration de votre site web. D’abord, vérifiez quels fichiers le pirate a ajouté ou modifié en installant ce script  . Ensuite, êtes-vous capable d’effacer complètement votre site web pour supprimer toutes les traces du pirate et de tout réactiver en 30 minutes? Voici comment. Lire l’article ici.\r\n4- Si vous programmez en PHP, des règles simples de filtrages sont ici. Même chose pour l’injection SQL. Ne soyez pas irresponsable, pensez à filtrer tout ce qui entre dans votre script.', 'barack.jpg', '2018-05-07', 6, 1),
  (3, 'C’est quoi une API ? Une explication (compréhensible) pour les utilisateurs métier', 'C’est quoi une API ?\r\nLes APIs, — ou Application Programming Interfaces — se définissent comme un ensemble de fonctions informatiques par lesquelles deux logiciels vont interagir sans intermédiation humaine. L’API est donc une abstraction définie par la description d’une interface et le comportement de l’interface.\r\nUne API se décompose en trois mots-concepts :\r\n•Application. Par application s’entend tout service avec lequel un développeur ou une autre application souhaite interagir. Cela peut être un service météorologique, une application de partage d’images, un portail Open Data.\r\n•Interface. L’interface est la porte d’entrée par laquelle il sera possible d’interagir avec l’application.\r\n•Programme. Le programme est une fonction informatique à laquelle un développeur donne des instructions et qui va interagir avec l’application à notre place. Le programme peut par exemple récupérer des données à intervalles régulières ou soumettre une adresse postale (pour récupérer une coordonnée géographique)…\r\n\r\nFaut tout savoir faire quand on est marketeur, y compris des schémas.\r\nLes APIs sont donc utilisées par des programmes informatiques, permettant leurs interactions sous des conditions déterminées et documentées.\r\n...\r\nEt ça fait quoi une API ?\r\nBien qu’étant couvertes de manière exponentielle par la presse spécialisée, les APIs et leurs enjeux sont encore mal saisis par les utilisateurs non-techniques.\r\nUne API expose un service utile pour un développeur. Nous l’avons vu, ce service peut prendre des formes multiples: flux de données en temps réel, cartographie…\r\nEn parallèle, les développeurs écrivent des programmes qui consomment ces APIs.', 'bill_gates.jpg', '2017-06-06', 4, 3),
  (5, 'Putting comments in code: the good, the bad, and the ugly.', 'Documentation Comments\r\nDocumentation comments are intended for anyone who is likely to consume your source code, but not likely to read through it. If you are building a library or framework that other developers will use, you need some form of API documentation.\r\nThe further removed from the source code your API documentation is, the more likely it is to become outdated or inaccurate over time. A good strategy to mitigate this is to embed the documentation directly into the code and then use a tool to extract it.\r\nHere’s an example of a documentation comment from a popular JavaScript library called Lodash.\r\n\r\n1	    /**\r\n2	     * Creates an object composed of keys generated from the results of running\r\n3	     * each element of `collection` thru `iteratee`. The corresponding value of\r\n4	     * each key is the number of times the key was returned by `iteratee`. The\r\n5	     * iteratee is invoked with one argument: (value).\r\n6	     *\r\n7	     * @static\r\n8	     * @memberOf _\r\n9	     * @since 0.5.0\r\n10	     * @category Collection\r\n11	     * @param {Array|Object} collection The collection to iterate over.\r\n12	     * @param {Function} [iteratee=_.identity] The iteratee to transform keys.\r\n13	     * @returns {Object} Returns the composed aggregate object.\r\n14	     * @example\r\n15	     *\r\n16	     * _.countBy([6.1, 4.2, 6.3], Math.floor);\r\n17	     * // => { \'4\': 1, \'6\': 2 }\r\n18	     *\r\n19	     * // The `_.property` iteratee shorthand.\r\n20	     * _.countBy([\'one\', \'two\', \'three\'], \'length\');\r\n21	     * // => { \'3\': 2, \'5\': 1 }\r\n22	     */\r\n23	    var countBy = createAggregator(function(result, value, key) {\r\n24	      if (hasOwnProperty.call(result, key)) {\r\n25	        ++result[key];\r\n26	      } else {\r\n27	        baseAssignValue(result, key, 1);\r\n28	      }\r\n29	    });\r\n\r\n        view raw         doc_comment_from_lodash.js         hosted with ❤ by GitHub       \r\nIf you compare these comments to their online documentation, you’ll see it’s an exact match.\r\nIf you write documentation comments you should ensure that they follow a consistent standard and that they are easily distinguishable from any inline clarification comments you may also want to add. Some popular and well supported standards and tools include JSDoc for JavaScript, DocFx for dotNet, and JavaDoc for Java.\r\nThe downside of these kinds of comments is that they can make your code very “noisy” and harder to read for anyone who is actively involved in maintaining it. The good news is that most code editors support “code folding” which allows us to collapse the comments so we can focus on the code.', 'julian.jpg', '2018-04-22', 5, 6),
  (6, 'Hierarchy view component with pure CSS (SASS)', 'Let`s Start\r\nThe final component looks complex but in reality there is only one key component nested in each other. This is how our hero looks:\r\n \r\n\r\n \r\nSo, it contains one parent element with N number of child elements. The component HTML structure is composed of two blocks: .hv-item-parent and .hv-item-children -wrapper for children.\r\n\r\n\r\n1	<!-- Key component -->\r\n2	<div class=\"hv-item\">\r\n3	\r\n4	  <div class=\"hv-item-parent\">\r\n5	    <p> This will be parent </p>\r\n6	  </div>\r\n7	\r\n8	  <div class=\"hv-item-children\">\r\n9	    <div class=\"hv-item-child\">\r\n10	      <p> child Item </p>\r\n11	    </div>\r\n12	    ...\r\n13	    ...    \r\n14	  </div>\r\n15	\r\n16	</div>\r\n\r\n        view raw         Hierarchy view - key component base structure.html         hosted with ❤ by GitHub       \r\nBase layout\r\nFor styling we will use flexbox (because it`s really flex):\r\n\r\n\r\n1	// Simple style for the content of parent & child\r\n2	p{\r\n3	  margin: 0;\r\n4	  background-color: #fff;\r\n5	  color: #00B9AE;\r\n6	  padding: 20px;\r\n7	  border-radius: 10px;\r\n8	  box-shadow: 0 3px 6px rgba(#CC8367, 0.22);\r\n9	}\r\n10	\r\n11	.hv-item{\r\n12	    display: flex;\r\n13	    flex-direction: column;\r\n14	    margin: auto;\r\n15	    .hv-item-parent{\r\n16	      margin-bottom: $bottom-margin;\r\n17	      position: relative;\r\n18	      display: flex;\r\n19	      justify-content: center;      \r\n20	      &:after{\r\n21	        position: absolute;\r\n22	        content: \'\';\r\n23	        width: $line-width;\r\n24	        height: $bottom-margin / 2;\r\n25	        bottom: 0;\r\n26	        left: 50%;\r\n27	        background-color: $line-color;\r\n28	        transform: translateY(100%);\r\n29	      }\r\n30	    }\r\n31	  .hv-item-children{\r\n32	    display: flex;\r\n33	    justify-content: center;\r\n34	    .hv-item-child{\r\n35	      padding: 0 15px;\r\n36	      position: relative;\r\n37	\r\n38	      &:before, &:after{\r\n39	        content: \'\';\r\n40	        position: absolute;\r\n41	        background-color: $line-color;\r\n42	        left: 0;\r\n43	      }\r\n44	\r\n45	      &:before{\r\n46	        left: 50%;\r\n47	        top: 0;\r\n48	        transform: translateY(-100%);\r\n49	        width: $line-width;\r\n50	        height: $bottom-margin / 2;\r\n51	\r\n52	      }\r\n53	\r\n54	      &:after{\r\n55	        top: -$bottom-margin / 2;\r\n56	        transform: translateY(-100%);\r\n57	        height: $line-width;\r\n58	        width: 100%;\r\n59	      }\r\n60	\r\n61	      &:first-child:after{\r\n62	        left: 50%;\r\n63	        width: 50%;\r\n64	      }\r\n65	\r\n66	      &:last-child:after{\r\n67	        width: calc(50% + 1px);\r\n68	      }        \r\n69	\r\n70	    }\r\n71	  }\r\n72	}\r\n\r\n        view raw         Hierarchy view - key component base structure.scss         hosted with ❤ by GitHub       \r\nLayout scss\r\nWe will get something like this:\r\n \r\n\r\n \r\nCool! Actually this is what we want. Only one thing is missing. Guess what..\r\nExactly! - Lines, lines, lines!\r\n\r\nCreating lines\r\nFor creating lines we’re going to use css pseudo elements. Parent element will have only bottom line. Child element needs two lines — one vertical(on top of it) and one horizontal (which will connect children to each other). Here is the illustration what we are going to build:\r\n \r\n\r\n \r\nParent pseudo class:\r\n\r\nPseudo class for parent element line\r\nChild pseudo class:\r\n\r\nPseudo classes for child element lines\r\nOur component is ready. Now you can replace .hv-item-child with any thing. If we replace one child element with entire component we will get nested hierarchi view as it’s shown below:\r\nhere are DEMOS of the component.\r\nThis is a GitHub repo of complete component with demos.\r\nAnd down here is a heart icon. If you click(or tap), it will turn into green ?. Don`t believe? Try ?\r\nThank you!', 'stalone.jpg', '2016-11-10', 2, 3),
  (7, 'Préparer un fichier Photoshop idéal pour l’intégration CSS ?', '1/ Partir d’une bonne structure\r\nLa première question à se poser est Quel sera le format final de ma charte ?\r\nJe vous entends d’ici : “Bah en responsive” !\r\nTrès bien ! Mais sauf si vous avez vendu 5 déclinaisons responsives (et j’en doute) cette charte doit être lisible sur les grands écrans 27 pouces comme les 13 pouces pour sa version “Desktop”\r\nPour commencer je crée un nouveau document de 2000 pixels de large avec une zone utile de 1000 pixels au centre.\r\nMon webdesign n’ira pas au-delà de cette zone, mais je prévois un débord graphique pour que les grands écrans ne se retrouvent pas avec du blanc de chaque côté.\r\nC’est souvent une contrainte pour trouver des photos panoramiques sur les banques d’images.\r\n\r\nVotre intégrateur utilisera probablement un Framework CSS basé sur un principe de grilles (type Bootstrap). Pour faciliter son travail et structurer votre maquette je vous conseille d’utiliser la nouvelle option de Photoshop Affichage > Nouvelle disposition des repères\r\n\r\n12 colonnes seront créées pour vous aider à aligner, au pixel près, vos éléments les uns par rapport aux autres.\r\nJ\'ai été un peu réticente au début. Je pensais que mon design serait cantonné à du “colonnage”. Aujourd’hui je m’aperçois que mes chartes sont plus équilibrées. Vous n’êtes bien sûr pas obligés de toujours les respecter, mais elles doivent être des lignes directives.\r\n\r\n2/ Oui mais le Responsive Design ?\r\nCroire que votre intégrateur saura décliner tout seul votre maquette pour tablettes et mobiles c’est comme faire confiance à singe face à des mots croisés Force 8. Chacun son métier ! Le votre est de livrer un PSD sur lequel il n’aura rien à redire.\r\nVous devrez travailler sur la base d’une grille comme pour la maquette Desktop.\r\nVoici les formats que j’utilise :\r\n\r\n• Tablette : Maquette PSD de 768 pixels avec une configuration grille comme suit :\r\n12 Colonnes |\r\nColonnes de 43 px |\r\nGouttières de 20 px\r\n• Mobile : Maquette PSD de 320 pixels avec une configuration grille comme suit :\r\n6 Colonnes |\r\nColonnes de 35 px |\r\nGouttières de 20 px\r\n3/ 10 conseils à suivre\r\nPêle-mêle, quelques conseils à appliquer si vous voulez que votre intégrateur respecte votre travail :\r\n1 • Travaillez en RVB et en 72 DPI : Cela peut paraître évident comme premier conseil, mais vous n’êtes pas en print, ne l’oubliez pas.\r\n2 • Evitez les polices non Web Font : Votre intégrateur préfèrera vous faire modifier votre maquette que de convertir manuellement chaque police.\r\nDe plus Google ne lit pas aussi bien les polices transformées et elles peuvent parfois être mal affichées par les navigateurs\r\nAstuce : Google propose gratuitement une large bibliothèque de Webfont\r\n3 • Utilisez des logos et des icônes vectoriels : Avec les différentes résolutions d\'écrans (Rétina, HDPI…) les utilisateurs ne voient pas les images de la même manière. En utilisant des icones et des logos réalisés avec Illustrator (et importés dans Photoshop) votre intégrateur pourra ajouter un maximum d’éléments vectoriels (.svg)\r\n\r\n4 • N’aplatissez pas vos calques : Il n’y a rien de plus énervant ! Sachez que certains effets (ombres, lueurs…) sont réalisables en CSS3. Votre intégrateur pourra les re-produire pour alléger le poids de sa page HTML.\r\nAstuce : Avoir 15 claques de réglages est souvent compliqué à manipuler dans Photoshop, convertissez l’ensemble en Objet Dynamique.\r\n5 • Prévoyez les versions Hover : L\'utilisateur s’attend à ce que le bouton change d\'aspect au survol. Prévoyez cette alternative dans vos maquettes.\r\nDites moi : Le hover n’existe pas sur tablettes et mobiles. Juste un mode on/off ;)\r\n\r\n6 • Ne maltraitez pas vos objets : N’étirez et ne coupez pas vos photos pour les déformer, préférez les Masques d’écrétage.\r\n7 • Evitez les claques imbriqués (pour la livraison) : Vous utilisez sûrement des calques de Réglages couleurs ou des Masques d’écrétage. C’est un confort lors de la phase de création.\r\nPour la livraison réunissez tout dans un Objet dynamique.\r\n8 • Privilégiez un PSD par page : Tous les webdesigners ne sont pas d’accord. En effet dans les anciennes versions de PhotoShop, il n\'était pas possible d\'utiliser des éléments liés. On réunissait la totalité du site sur un seul PSD et on jouait avec les Compositions de claques. Et que se passait-il quand notre PSD était corrompu ? Nous perdions tout notre travail ! Malin !\r\nL\'intégrateur maltraite vos maquettes, masque, affiche et supprime des calques. En privilégiant un PSD par page, vous lui éviterez de passer à côté de subtilités graphiques\r\nEdit : Octobre 2016 \r\nDepuis la mise à jour de photoshop il est possible de travailler avec des plans de travail. Et donc d’avoir différentes interfaces sur un même PSD. Si cela vous aide à travailler faite le, mais au moment de la livraison pensez à bien séparer les éléments.\r\n\r\n\r\n9 • Evitez les fantaisies de typographie : Si une typographie n’a pas d’existence en Gras ou en Italic, ne la forcez pas. N’étirez pas manuellement vos polices pour la déformer et ne tapez jamais votre texte en majuscules. Préférez lui l’option « Majuscules » dans la palette caractères\r\n10 • Anticipez le comportement de vos maquettes : Prévoyez qu’une fois en ligne, chaque zone sera extensible en hauteur.\r\nSi vous ajoutez des textures en arrière plan, faites en sorte qu’elles soient duplicables en largeur et en hauteur.\r\n4/ Allez plus loin, soyez un pro du PSD Web !\r\n• Utilisez les éléments liés : Même pour vous c’est un confort. Si vous réalisez 5 maquettes et que le header est commun à toutes les pages, faites un PSD à part que vous pourrez modifier à un seul endroit.\r\n• Faites un assemblage : Les éléments liés ont un second avantage : ils se rassemblent automatiquement. Grâce à l’option Ficher > Assemblage, Photoshop rassemblera dans un dossier unique votre maquette et les PSD associés.\r\n• Livrez les typographies : Ce n\'est pas compliqué d\'aller sur Google Fonts pour récupérer les polices, mais vous ferez plaisir à votre intégrateur en les associant à vos sources.\r\n\r\n• Rangez-vos calques : C\'est long et fastidieux, c\'est pourquoi je vous conseille de le faire au fur et à mesure et d’abuser des groupes de calques, des objets dynamiques...\r\nPour ma part je les range du plus haut au plus bas dans la page et utilise Renamy pour les renommer en masse.\r\n• Supprimez les calques inutilisés\r\n• Renommez vos psd : Je les nomme toujours ainsi\r\n“NOM DU CLIENT — 01 Accueil.psd”\r\n• Livrez l’intégralité des sources : Vous ne connaissez pas exactement la méthode de votre intégrateur pour découper votre PSD. Livrez lui la totalité des sources. Cela lui évitera de vous demander telle ou telle photo en HD ensuite.\r\nEdit : Octobre 2016\r\nDepuis les dernières mises à jour de la Créative Cloud il est possible de travailler à partir d’une bibliothèque en ligne. Vous pouvez y déposer toutes vos polices, couleurs, éléments de design… N’hésitez pas à en user et abuser pour gagner du temps; et voir les éléments se mettre à jour automatiquement sur tous vos PSD liés.\r\nAu moment de la livraison n’oubliez pas d’ajouter en collaborateur votre intégrateur.\r\n\r\n• Utilisez un style de police par calques : Il est tentant de faire une grande zone de paragraphe avec différents styles de police à l\'intérieur. Je vous accorde que c\'est beaucoup plus facile à manipuler. Cependant, votre intégrateur se verra obligé de sélectionner chaque ligne pour en connaître la propriété CSS, très fastidieux.\r\n\r\n• Ne jurez que par le pixel perfect : Même le meilleur intégrateur du monde ne pourra faire de demi-pixel. N’utilisez pas de police de 12,5 px ou des photos de 143,5 px de large. Ca n’existe pas !\r\n• Renommez vos calques pour un “Export express” : C’est un véritable cadeau que vous ferez à votre intégrateur. Renommez les images de votre maquette avec l’extension associée : logo.png / icone-facebook.jpg…\r\nGrâce à la fonction Ficher > Extraction des fichiers, votre intégrateur pourra exporter l’intégralité des images de votre charte en un seul clic.\r\nAstuce : En savoir plus sur l’Extraction de fichiers\r\n\r\n• Déposez vos PSD en ligne : Vos maquettes feront parfois plusieurs centaines de Mo. Autant vous dire qu’il faut oublier l’envoie par mail. Privilégiez le dépôt sur les cloud : Dropbox, Google Drive, Creative Cloud…\r\nL’inconvénient majeur de WeTransfer, pourtant plebiscité par les webdesigner, est que les fichiers sont supprimés du serveur après 7 jours. Votre intégrateur n’aura pas toujours le temps de les récupérer.\r\n• Anticipez le multilangue : Si le site est prévu en multi-langues, prévoyez que certaines langues prendront plus d’espace (l’allemand) où ont des mises en forme différentes (chinois).', 'goku.jpg', '2015-08-19', 2, 6),
  (8, 'How I got a second degree and earned 5 developer certifications in just one year, while working and raising two kids', 'Learning to code can be challenging — especially when you also have a job and a family with small kids. Despite those things, I decided that the standard pace was not for me.\r\nMy goal in writing all this is not to brag — though I am extremely proud of these accomplishments. My goal is to convince you that the standard pace isn’t for you, either.\r\nI’ve done a lot in the past year. I earned two Oracle Java Certifications, two CompTia Certifications, and freeCodeCamp’s Front End Certification. Each of these take most people many months of preparation, but I did them all in three weeks each.\r\nAnd last but not least, I completed all the coursework necessary to earn a second Bachelor’s degree in software development from an accredited university, in less than six months.\r\nI did this all while working full-time, spending time regularly with my wife and two young kids, and volunteering in my community.\r\nOne of the keys to accomplishing all of this was an amazing and supportive spouse. ?\r\nBut there were also some other things that helped.\r\nWhat’s Your Motivation?\r\nAfter being a K-12 teacher for five years (with a teaching degree I was able to earn in two years), I realized I did not want to teach in a school the rest of my life.\r\nI loved the teaching part of teaching, but I hated the forcing-kids-to-do-things-they-don’t-want-to-do part of teaching. Classroom management in my urban school district was very stressful for me. I was also becoming disenchanted with the whole educational system. We seem to be preparing students for jobs that will no longer exist.\r\nI had always been interested in coding and even sometimes taught my students basic coding using Scratch and Code.org. I decided it was time to learn enough to do it full-time.\r\nWanting a new job was great motivation. Everyday I spent at my teaching job was an incentive to keep pushing myself towards my goal.\r\nResearch, research, research\r\nIt’s important not to rush into learning. Not all schools or learning resources are equal, and the wrong choice can make a big difference in your ability to meet your goals.\r\nI tried to determine what learning method would work best for me and my family. While I know there are many ways to break into the tech industry, I decided on a somewhat traditional route: a Bachelor’s degree. I knew I had some classes already that would transfer into a new program. I looked into many school options but I decided on Western Governors University for the following reasons:\r\n1It is all online so I would not have to take time from my family for transportation.\r\n2You can work at your own pace, so I knew I could finish very quickly. As soon as you finish all the assignments and exams for one class, you can go immediately to the next class.\r\n3The cost is low — about $3000 per six months.\r\n4It is reputable, accredited, and has been recommended by President Obama and Bill Gates.\r\n5The degree included industry recognized certifications. I knew those would add to the credibility of my education.\r\nBeating ambitions goals\r\nAt first, my goal was to finish my entire Bachelor’s degree in one year. One month into the program, I decided to revise my goal and finish in six months.\r\nIt was at this point that I did what helped me most in my goal to finish quickly: I made a schedule of the exact day I would finish each class so I could finish within 6 months.\r\nI scheduled between 1 and 3 weeks for each class, depending on class requirements. I also made plans at that time about how I would finish each class very quickly. It was very helpful to have many subgoals throughout the learning process to make sure I stayed on track.\r\n\r\nSection of actual spreadsheet I used to plan for classes.\r\nAmbitious goals are important. These provided me additional motivation to push myself. A study by the Journal of Consumer Research showed that ambitious goals make people happier. I ended up meeting or surpassing all my self-imposed deadlines and that definitely made me happy!\r\nDetailed schedule\r\nI created a detailed weekly schedule to help me spend a lot of time learning without neglecting my family and other responsibilities. I scheduled in family time, volunteering time, time with friends, and even a weekly date night!\r\n\r\nThe schedule I created at the beginning of my degree. I have an even more detailed schedule now.\r\nA detailed schedule helped me make sure that my life stayed balanced. However, there is one thing I did not put on my schedule: television.\r\nI watched only 3 episodes of television the entire time I worked on my degree. I had such a tight schedule to keep so I could meet my goals so I did not have time for TV. Also, any time spent watching television meant less time with my family. Since graduating, I have continued to limit television so I can focus on coding.\r\nIt was important for me to give things up in order to accomplish my goals.\"', 'gohan.jpg', '2018-05-23', 7, 5),
  (9, 'How I went from zero experience to landing a 6-figure San Francisco design job in less than 12 months', 'Act I: Tragic Backstory\r\nIt was the summer of 2015 in the middle of nowhere. I was interning at an agricultural company as an ergonomics consultant (read: filling out fancy checklists).\r\nI remember sitting at my desk at work browsing Facebook for the 8th time that hour thinking, “Oh great, more photos of my friends at exciting San Francisco startups making four times my salary and drinking free beer at work.”\r\n\r\nMe at my job. Excited for the boundless opportunities in life.\r\nThat evening when I was driving to the gym (because there was nothing better to do in the literal middle of nowhere), I thought “wouldn’t it be awesome if there was an app I could use to meet other people?”\r\nI’m not sure what possessed me at the time, but I was damn sure this was a million dollar startup idea.\r\nAct II: A Challenger Appears\r\nI called my idea “Joinmi” (meetup.com was a close second). It was a mobile app that could plan meetups with friends & strangers (kind of like SMS, Messenger, Whatsapp, but worse with fewer features).\r\nAll I needed now was a bunch of developers who would build this out for equity (sorry if you cringed reading this).\r\nTo communicate my idea better, I scoured the web for a design tool to accomplish my needs. I ended up using the free trial of Moqups to create a lit design.\r\n\r\nIt was not “lit.” Take note at how I expertly used the rewind button as a replacement for the back button.\r\nWith my wireframes in hand, I spammed every developer I knew on my contact list. “I’ve got this great idea and these “fire” designs, help me build it out and we’ll split the profits 50–50.” Yep, I was that guy.\r\nAfter lots of dead ends for some unknown reason, one of my friends decided to humor me (? Jay). He said, “It’s a good idea — but I’d need more than just wireframes. Create some mockups and I’ll see what I can do.”\r\nI looked up the best software to create mockups (after looking up what they were) and ended up with a trial for Sketch.\r\nI didn’t know what user interface design was, so the concept of a “mockup” was foreign to me at a time. I had to read a few embarrassingly simple articles to understand the difference between a sketch, wireframe, and mockup.\r\nNonetheless, at around 4 to 6 hours per day, it took me the rest of the remaining internship to create my first iteration of Joinmi.\r\n\r\nThis just proves that you don’t need talent to be a designer, or a sense of colour for that matter.\r\nAct III: The Gamble\r\nFast forward a bit to when my internship had ended and I’d moved back to Waterloo to continue my education. I had put Joinmi on the backburner after I figured out how much work it would be to launch a mobile app. At this point in life I was a 3rd year college student studying an unrelated major (Kinesiology) that I thought was my “passion.” I had always planned go down this preset doctor path and fulfill the “Asian parents’ dreams.”\r\n\r\nWhat every Asian kid knows…\r\nOne day, when I was browsing through the internship postings for my next work term, I found several UX design internships available for my next work term (much to my parents’ displeasure). I remembered having fun fiddling around in Sketch just a few weeks back, but also not being remotely qualified for a real job. So I decided to just go for the “safe” jobs I had applied to in the past, thinking I wouldn’t have a shot in tech.\r\nApproximately 48 hours before the job application deadline closed, I had another quarter-life crisis. At this time my girlfriend (S/O to Carol Yao — give her a dev job!) and another close friend (Jacky) urged me to apply to those design internships regardless, since I had nothing to lose.\r\n\r\nI started to become slightly more proficient inside Sketch, you can tell by the penguins.\r\nI thought back to the past few weeks, where I found myself choosing to open Sketch instead of Steam and reading design articles instead of Reddit. I decided to give it a shot.\r\nPowered by a concoction of coffee, insomnia, and passion(?) I chose to forgo 48 hours of sleep and put together a portfolio from scratch. I just barely made the final internship deadlines.', 'bou.jpg', '2018-05-13', 4, 3),
  (21, 'Ethereum Classic (ETC) supprime la « bombe de difficulté »', 'Comme ils l’avaient signalé dans une récente interview donnée à Bitsonline, et dont nous vous avions repris les principaux extraits, les développeurs d’Ethereum Classic (ETC) ont commencé un processus important de différenciation de leur blockchain avec celle d’Ethereum (ETH).\r\n\r\nL’équipe de développement d’Ethereum Classic a annoncé avoir réussi un hard fork de leur réseau blockchain, au niveau du bloc 5 900 000. La principale raison de ce fork était de rendre possible la suppression de la “bombe de difficulté” (difficulty bomb, en anglais), conçue à la base pour forcer le réseau Ethereum à adopter le Proof-of-Stake (à la place du Proof-of-Work).\r\n\r\nAucun bug ni problèmes particuliers n’ont été signalés suite à cette mise à niveau, qui devrait permettre de réduire le temps moyen nécessaire à la création d’un nouveau bloc sur la blockchain d’Ethereum Classic.\r\n\r\nEthereum Classic\r\nCette décision différencie encore plus les réseaux ETH et ETC, Ethereum s’orientant à terme vers le système de Proof-of-Stake (notamment via le protocole Casper), alors qu’Ethereum Classic avait – dès le fork de 2016 – affiché sa volonté de rester en Proof-of-Work, sa communauté estimant que cette méthode assurait une plus grande résistance à la centralisation.\r\n\r\nMaintenant, l’explosion de la « bombe de difficulté » pouvant être évitée, l’équipe de développement d’ETC va pouvoir continuer son processus d’amélioration de leur réseau blockchain, sans se soucier de ce problème qui était resté en suspens jusqu’ici.', 'dragon.jpg', '2018-05-31', 3, 17);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(60) NOT NULL,
  `lastName` varchar(60) NOT NULL,
  `mail` varchar(120) NOT NULL,
  `login` varchar(60) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `mail`, `login`, `pass`) VALUES
  (1, 'Patrick', 'Marthus', 'Patrick@marthus.be', 'patrick', '$2y$10$cift7TZb7uR7bJBKjEFfme498DICHPJ/zpF6w1OVGq4WWZh3vXVdO'),
  (2, 'Ed', 'Dst', 'ed@dst.be', 'ed', '$2y$10$BUipabZCGbZjm3mnxz.NOO.MS00HoAOhkDfGUlk.Ijm6QonVRyIaO'),
  (3, 'Mathieu', 'Dubois', 'mathieu@dubois.be', 'math', '$2y$10$iXp31kx3SsFkaKMj2p6d7uGZG..Otz7NL2pNIz0375w/qqpYTwS7C'),
  (5, 'Rocky', 'Balboa', 'rocky@balboa.com', 'rocky', '$2y$10$0/sRY0z1ir5cC.mWdWo1luWynVsdJw8M2BclJJytP0OI6QPG8k.rq'),
  (6, 'Jean-Claude', 'Van damme', 'jcvd@jcvd.be', 'jcvd', '$2y$10$7ftyUEU1G1uRVbOCRUysReGJ0Kk0fpzC4yAbzFAVGXngRGD.D6YGm'),
  (17, 'panzer', 'titan', 'panzer@titan.com', 'panzer', '$2y$10$PVHCWI9MNw85CNVV/zM64OmhFZfBw5.cqSCDsQnaE5SNSoSXhWHC.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCategory` (`idCategory`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`idCategory`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);