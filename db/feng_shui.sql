-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2016 at 08:49 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feng_shui`
--

-- --------------------------------------------------------

--
-- Table structure for table `fu_detail`
--

CREATE TABLE `fu_detail` (
  `fu_id` int(11) NOT NULL,
  `fu_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `fu_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `fu_path` int(11) NOT NULL,
  `fu_require` int(11) NOT NULL,
  `fu_cost` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fu_detail`
--

INSERT INTO `fu_detail` (`fu_id`, `fu_title`, `fu_desc`, `fu_path`, `fu_require`, `fu_cost`) VALUES
(1, 'Blunt the Crane&#039;s Beak', 'Protect others with your prowess. When an opponent makes a successful attack against one of your nearby allies, interrupt and spend 1 shot to reduce the attack&rsquo;s Damage Value by 5.', 1, 0, 1),
(2, 'Stave off Monkey', 'When an opponent makes a successful attack againstyou, interrupt and pay 5 shots; the attack fails.', 1, 1, 1),
(3, 'Slow the Tiger', 'After a successful Martial Arts attack, spend 1 Chiand 1 shot. Target of the attack adds 1 to the shotcost of all actions with a cost of 1 or more until endof keyframe.', 1, 1, 1),
(4, 'Chop the Willow', 'After a successful Martial Arts attack against a foewith 1 Impairment or less, spend 2 Chi and 1 shot.Target of the attack gains 1 Impairment until nextkeyframe.', 1, 3, 1),
(5, 'Thwart the Dragon', 'When a nearby ally takes attack damage, interruptand pay 2 shots to remove all Wound Points theally gained in the attack. Costs Chi equal to thenumber of times you have used Twart the Dragonthis fght', 1, 1, 1),
(6, 'Hands Without Shadow', 'You get +X Martial Arts vs. opponents whoseDefense values, bonuses included, exceed yourcurrent Defense. X is equal to the diï¬€erencebetween Defense values.', 2, 0, 1),
(7, 'Lightning Fist', 'When you hit an opponent with a Martial Artspunch attack, spend 1 Chi and 1 shot as aninterrupt. For this attack, and until next keyframe,your target&rsquo;s Toughness is halved (round fractionsup).', 2, 6, 1),
(8, 'Dim Mak', 'Any time after the second sequence, spend 3 Chiand make a Martial Arts punch attack against aFeatured Foe. If successful, ignore normal Damagedetermination; the foe&rsquo;s Wound Point total is now34. If unsuccessful, regain 2 Chi. Tis has no eï¬€ecton Bosses.', 2, 7, 1),
(9, 'Bite of the Dragon', 'Pay 1 Chi to add 2 to the Damage of your Martial Arts attacks until next keyframe.', 3, 0, 1),
(10, 'Breath of the Dragon', 'Pay 1 Chi as an interrupt after you roll your Swerve (including rerolls of any 6s) on a Martial Arts attack; ignore the positive die, treating it as a 5.', 3, 9, 1),
(11, 'Claw of the Dragon', 'Spend 1 Chi and 1 shot. Until the end of the fght, the minimum Wound Points you inï¬‚ict on a successful attack equals 5.', 3, 10, 1),
(12, 'Beard of the Dragon', 'Spend 1 Chi and 1 shot. Until the end of the fght, targets of your failed attacks nonetheless take 3 Wound Points per attack.', 3, 11, 1),
(13, 'Tail of the Dragon', 'Add the number of Featured Foes and Bosses you have inï¬‚icted Wound Points on during the current fght to your Speed.', 3, 12, 1),
(14, 'Drunken Stance', 'You have +2 Martial Arts on odd-numbered shots and &ndash;1 Martial Arts on even-numbered shots. If you hold an action to act on an odd-numbered shot, pay 1 Chi.', 4, 0, 1),
(15, 'The Esoteric Art of Speed-Drinking', 'Spend 1 shot to consume two servings of alcohol.', 4, 14, 0),
(16, 'Drunken Master', 'You take no intoxication penalties to Martial Arts or Defense. You take a &ndash;2 penalty to Martial Arts and Defense when fghting cold sober, and a &ndash;1 penalty if you have had less than three servings of alcohol in the last half hour. You can&rsquo;t use Drunken Master schticks when cold sober', 4, 14, 0),
(17, 'Drunken Fist', 'Spend 2 shots to make a Martial Arts attack at &ndash;2 AV, or spend 1 shot to make a Martial Arts attack at &ndash;4 AV', 4, 14, 1),
(18, 'Wily Stupor', 'Spend 1 Chi; until next keyframe, add the number of servings of alcohol you&rsquo;ve consumed during the fght so far to your Toughness.', 4, 17, 1),
(19, 'Aberrant Spasm', 'When targeted for an attack, interrupt, spend 2 shots and designate another named character with a lower Defense than yours as a secondary target. If the attack misses you, the secondary target takes a Smackdown equal to the Damage Value of the attacker&rsquo;s weapon', 4, 18, 1),
(20, 'Spasmodic Leap', 'If a Guns attack misses you on any odd-numbered shot, regain a Chi point.', 4, 19, 1),
(21, 'Fire Strike', 'Spend 1 Chi and make a barehanded Martial Arts attack at +2 Damage. On a success, if your opponent is wearing ï¬‚ammable clothing, that clothing ignites and the opponent must take 3 shots to slap the fre out or suï¬€er 1 Wound Point every 3 shots until something is done about the fre.', 5, 0, 1),
(22, 'Stoke the Fire', 'Under the adverse condition Extreme Heat, spend 2 Chi to gain a +2 Immunity bonus to Martial Arts and Defense until end of fght.', 5, 21, 0),
(23, 'Fire Stance', 'Until end of sequence, any opponent striking youbarehanded suï¬€ers 3 Wound Points per strike.', 5, 21, 1),
(24, 'Fire Fist', 'Strike an opponent barehanded with your fst wreathed in a nimbus of chi energy. Spend 1 Chi and make a Martial Arts punch attack against a featured foe or boss. On a success, target must check Toughness against the Smackdown. On a failure, opponent takes 3 Wound Points each time you make another attack against any opponent, until next keyframe.', 5, 23, 1),
(25, 'Fire Cloak', 'Flood the surrounding area with ï¬‚ame to create a hostile fghting environment for your foes. On a successful Martial Arts attack against an opponent whose Defense Value exceeds your Attack Value, the fght location suï¬€ers the adverse condition Extreme Heat until next keyframe.', 5, 24, 1),
(26, 'Hungry Fire', 'Spend 1 Chi and make a Martial Arts punch attack against a named enemy. On a success, spend 2 shots per named enemy. All named enemies take 5 Wound Points.', 5, 25, 1),
(27, 'The Fox&#039;s retreat', 'As an interrupt when attacked, spend 1 Chi. Until next keyframe, Dodges increase your Defense by 4', 7, 0, 1),
(28, 'Eyes of the Fox', 'Pay 2 Chi to reduce Wound Points dealt to you by an attack to 3.', 7, 27, 1),
(29, 'Laughter of the Fox', 'After a successful Martial Arts Check, roll a die. Even: gain +1 attack against the foe you just hit until end of fght. Odd: gain +1 Defense against the foe you just hit until end of fght. Bonuses against the same foe accumulate over multiple successful hits.', 7, 28, 1),
(30, 'vengeance of the Fox', 'When you are hit by a Martial Arts attack, spend 1 Chi and 1 shot as an interrupt. Make a Martial Arts Check against your attacker&rsquo;s Defense. If successful, the opponent is thrown a number of meters equal to your Outcome in the direction of your choice. Opponent takes a Smackdown equal to his Strength Check value (usually 7) plus the Outcome.', 7, 29, 1),
(31, 'Luck of the Fox', 'Spend 1 Chi and 1 shot. Until next keyframe, roll a die as an interrupt after adding a Fortune die to any check or to a Dodge. On an even result, regain the Fortune point', 7, 30, 1),
(32, 'Contract of the Fox', 'Spend 1 Chi immediately after Initiative is determined. Your Initiative result equals that of the combatant with the highest Initiative.', 7, 31, 1),
(33, 'Corners of the Mouth', 'Allies may spend 1 shot and 1 Fortune to give you 1 Chi.', 6, 0, 1),
(34, 'Flow restoration', 'Spend 1 shot; touch a subject who is unable to act due to the eï¬€ect of the Point Blockage fu power. Subject is released from eï¬€ect and takes an action during the following shot. Subject gets +2 to next check.', 6, 33, 0),
(35, 'Healing Chi', 'In a lightning-quick series of moves, jab crucial acupressure points of a wounded patient in order to dramatically speed up his natural healing process. Spend 3 shots and 1 Chi to reduce a character&rsquo;s Wound Point total by the result of your Martial Arts Check.', 6, 33, 1),
(36, 'Healing petals', 'Spend 4 shots and 1 Chi; make a Martial Arts Check. Take your Action Result and divide it any way you like between any number of characters. Te characters each subtract from their Wound Point totals the share of the Action Result you have allocated to them.', 6, 35, 1),
(37, 'The power of Love', 'Cradle an (apparently) dead comrade in your arms, weeping and wailing until your tears spatter his face. Spend 1 Chi when an ally who is close enough for you to touch fails a Death Check. Your ally lapses into immediate, death-like unconsciousness but gets to make a new Death Check.', 6, 35, 1),
(38, 'pressure Block', 'When an opponent misses you with a hand-tohand attack, spend 1 Chi as an interrupt to give opponent a &ndash;1 attack penalty until end of fght. Not usable if opponent is already Pressure Blocked.', 6, 37, 1),
(39, 'point Blockage', 'After making a successful Martial Arts Check, spend 3 Chi and 1 shot to prevent your opponent from taking actions until next keyframe, or until opponent takes 3 or more Wound Points, whichever comes frst.', 6, 38, 1),
(40, 'Bloody but unbowed I', 'Add +2 bonus to Up Checks.', 8, 0, 1),
(41, 'Bloody but unbowed II', 'Add +3 bonus to Up Checks.', 8, 40, 1),
(42, 'Bloody but unbowed III', 'Add +4 bonus to Up Checks.', 8, 41, 1),
(43, 'Humble Fury', 'Add +4 to Martial Arts on the frst attack you make after passing an Up Check.', 8, 0, 1),
(44, 'underdog Triumphant', 'Standard attacks against foes whose attacks have forced you to make Up Checks cost you 2 shots.', 8, 43, 1),
(45, 'rise in Slow Motion', 'Immediately before the frst attack you make after passing an Up Check, reduce your Wound Point total by your Toughness.', 8, 0, 1),
(46, 'Flesh Wound', 'As an interrupt when you take Wound Points, reduce Toughness by X until end of fght to reduce Wound Points taken to 0. X is equal to the number of the current sequence.', 9, 0, 1),
(47, 'Lone Wolf', 'Add +3 Defense if you are the only viable target for three or more named character opponents.', 9, 0, 1),
(48, 'Training Sequence I', 'Add +4 attack vs. uber-bosses.', 9, 0, 1),
(49, 'Training Sequence II', 'Add +1 to Defense vs. bosses; +3 Defense vs. uberbosses.', 9, 48, 1),
(50, 'Friend of Darkness', 'When attacking an opponent for the frst time in the current fght, treat the opponent&rsquo;s Toughness as 4. Tis is inapplicable if opponent&rsquo;s Toughness is less than 4.', 10, 0, 1),
(51, 'Dark&#039;s Soft Whisper', 'Make any attack completely silently. On a Guns attack, describe yourself using a silencer.', 10, 50, 0),
(52, 'Catlike Tread', 'When you give an ally a Defense boost, you also gain the beneft of the boost.', 10, 50, 1),
(53, 'panther pounce', 'If you are the only PC in a scene and you encounter a single GMC, spend 0 Chi (for a mook) or 2 Chi (for a named character) to knock out, daze, or otherwise render the target helpless and unable to interfere with you. Tis lasts for fve minutes, or until you try to harm the character, whichever comes frst.', 10, 50, 1),
(54, 'Blade of Darkness', 'Spend 2 Chi and 0 shots to create a six-inch razor-sharp blade from thin air. Its Damage Value of 14 drops by 1 at the end of each sequence. Te blade dematerializes at the end of the fght.', 10, 53, 1),
(55, 'Gathering the Darkness', 'Draw the darkness and shadows in the area towards you like a protective cloak. Add +2 Defense against foes who have not yet hit you during this fght.', 10, 54, 1),
(56, 'Strike from Darkness', 'On a successful Martial Arts attack against an opponent previously unaware of your presence, your Smackdown is not reduced by opponent&rsquo;s Toughness.', 10, 55, 1),
(57, 'Shelter of Darkness', 'Summon a cloud of unnatural darkness to shroud your allies from harm in combat. Spend 3 shots to grant a Defense boost to all of your allies, which you may augment with Fortune. When an ally takes Wound Points from an attack while benefting from this boost, you may, as a 0-shot interrupt, attack the ally&rsquo;s attacker.', 10, 56, 1),
(58, 'Whirl of Fury', 'Spend 1 Chi as you make a Martial Arts nunchaku attack. If you hit, this and all of your nunchaku attacks for the rest of the fght have a Damage Value of 14.', 11, 0, 1),
(59, 'Blur of rage', 'Spend 1 Chi as you make a Martial Arts nunchaku attack against a mook. Until next keyframe, roll a die whenever a mook attacks you. On an even result, the mook drops before it can attack.', 11, 58, 1),
(60, 'Cyclone of Wood and Chain', 'After a successful Martial Arts nunchaku attack, spend X shots. Your opponent must also spend X shots. X may not exceed 6.', 11, 59, 1),
(61, 'rain of pain', 'On a successful nunchaku attack against multiple opponents, add an additional nearby foe as a target of the attack for every point of diï¬€erence between the Outcome you needed and the Outcome you got.', 11, 60, 1),
(62, 'Nunchaku Nunchaku Nunchaku', 'When a Martial Arts nunchaku attack hits a named character, spend 1 Chi. Your nunchaku Damage Value increases by 2. Until the end of the fght, each additional successful Martial Arts nunchaku attack increases your nunchaku damage by an additional 1.', 11, 61, 1),
(63, 'rise of the Downtrodden', 'Spend 1 Chi and 1 shot as an interrupt when struck by an attack. Until the end of the fght, the base Damage Value of the weapon hitting you becomes the base Damage Value of your hand-to-hand weapon.', 12, 0, 1),
(64, 'Noooo', 'Spend 1 Chi and 1 shot as an interrupt when an ally makes an Up Check. Until the end of fght, add the total number of Up Checks made by allies this fght to the Smackdown you deal on a successful attack.', 12, 63, 1),
(65, 'Shield of the underdog', 'Spend 1 Chi and 1 shot as an interrupt when struck by an opponent whose Defense value exceeds yours. Your Defense increases to equal the opponent&rsquo;s (as of your use of this power) until end of fght', 12, 64, 1),
(66, 'rally the Shattered', 'Spend 1 Chi and 1 shot as an interrupt when an ally takes an Impairment point. Until end of sequence, the ally treats Impairment as a bonus instead of a penalty', 12, 65, 1),
(67, 'Turn the Tables', 'If the number of named opponents exceeds the number of heroes taking part in the current fght, spend 2 Chi and 1 shot to give all allies +2 to attacks until next keyframe.', 12, 66, 1),
(68, 'Blooded Blade', 'You have +1 bonus to sword damage for each mook you drop. Te bonus is reduced by half (round up) each time you hit a named foe and lasts until the end of the fght.', 13, 0, 1),
(69, 'Backslash', 'When you hit a named foe, spend 1 Chi as an interrupt and roll a die. Odd: drop 1 mook. Even: drop 2 mooks.', 13, 68, 1),
(70, 'Bullet Deflection', 'When you are missed by a named foe&rsquo;s ranged attack while Dodging, drop 1 mook.', 13, 69, 1),
(71, 'Hold Them at Bay', 'Spent 1 shot and 1 Chi. All mooks spend 3 shots.', 13, 0, 1),
(72, 'Water Sword', 'When you hit a named foe, a number of named foes equal to your Swerve lose 1 shot each, if your Swerve is more than 1.', 13, 0, 1),
(73, 'Flashing Katana', 'When you hit a named foe, give one ally a boost.', 13, 68, 1),
(74, 'Lethal Strike', 'Any time after the second sequence, spend 1 shot and take 1 Mark of Death to down a featured foe.', 13, 68, 1),
(75, 'Claw of the Tiger', 'When your Martial Arts attack deals Wound Points to an opponent, roll a die; if the result is even, add the result to the Wound Points dealt.', 14, 0, 1),
(76, 'Tiger Stance', 'When targeted for a Martial Arts attack, interrupt and spend 2 Chi to make one Martial Arts attack against your attacker, resolved before the original attack.', 14, 75, 1),
(77, 'unyielding Tiger Stance', 'Spend 1 Chi and 1 shot. Until next keyframe, any opponent missing you with a Martial Arts attack takes a Smackdown equal to your weapon&rsquo;s Damage Value.', 14, 76, 1),
(78, 'vengeance of the Tiger', 'When you take 10 or more Wound Points from a Martial Arts attack, spend 3 shots as an interrupt to make a +3 Martial Arts strike against the original attacker.', 14, 77, 1),
(79, 'Leap of the Tiger', 'Spend 2 Chi as an interrupt at the end of your action or another character&rsquo;s action. Your next action occurs at the beginning of the next shot.', 14, 78, 1),
(80, 'Signature Weapon', 'Select one specifc martial arts weapon as a signature weapon. Your character might wield his lucky combat knife, the sword that got his father through a war, the hallowed spear of his destroyed village, and so on. A character using a signature weapon gets a +3 Damage Value bonus with that particular weapon. Note that this applies to a single, actual weapon, not to all identical weapons; your wing chun butterï¬‚y sword gives you a +3, but none of the other identical copies hanging on the dojo wall do. GM guidance for Signature Weapons appears on p. 302.', 15, 0, 1),
(81, 'versatile Master', 'Gain +2 to your frst Martial Arts attack after switching from one weapon to another you have yet to use in the current fght.', 15, 0, 1),
(82, 'Spear push', 'When you switch from another weapon to a spear, gain +3 Defense until next keyframe. Tis bonus can&rsquo;t be combined with Dodge.', 15, 0, 1),
(83, 'Forceful Dart', 'Spend 1 Chi to give your thrown darts or throwing stars a Damage Value of X&ndash;1 until next keyframe. X is equal to the highest base Damage Value of any weapon currently being wielded by an ally (ignoring any special damage bonuses the ally gets, of course).', 15, 0, 1),
(84, 'Mesmerizing Dart', 'Spend 1 Chi and 1 shot. Until next keyframe, every time you attack an opponent they lose 1 shot, regardless of whether your attack hits or misses.', 15, 0, 1),
(85, 'Prodigious Leap', 'Spend 1 shot to make a horizontal, vertical, or diagonal leap of up to 14 m. Also costs 1 Chi, if your current Chi is less than 2. If you have two or more other schticks in the Welcoming Sky path, leap increases to 28 m.', 16, 0, 1),
(86, 'Aerial pushaway', 'Evade an enemy with a graceful midair backï¬‚ip. When an enemy misses you with a Martial Arts attack, spend 1 shot to ï¬‚y up to 14 m backwards, away from your enemy. Regain 1 spent Chi point.', 16, 85, 1),
(87, 'ominous Flutter', 'Spend 1 Chi. Until the end of the fght, any attack you immediately precede with a Prodigious Leap gets a +1 bonus.', 16, 86, 1),
(88, 'Flying Windmill Kick', 'Spend 4 shots to make a Martial Arts kick attack. If the attack hits, you may make another kick attack on the same opponent at 0 shot cost. You may continue doing this until an attack fails, or until you land a third hit.', 16, 85, 1),
(89, 'Willow Step', 'Spend 1 Chi and 1 shot to gain +2 Defense against non-Martial Arts attacks until the next keyframe.', 17, 0, 1),
(90, 'King on the Water', 'In a fght under the adverse condition Torrential Rain, spend 1 Chi and 0 shots to gain a +2 Immunity bonus until the end of the fght or the end of the condition', 17, 89, 0),
(91, 'Walk of a Thousand Steps', 'When you take 5 or more Wound Points from a non-Martial Arts attack, your next action occurs on the next shot. It and all subsequent actions carry their usual shot costs.', 17, 89, 1),
(92, 'Rustling Leaves', 'When you take 5 or more Wound Points from a Guns attack, the attacker must Reload.', 17, 0, 1),
(93, 'Enforced Tranquility', 'When targeted for a Guns attack, spend 1 Chi and 1 shot as an interrupt. Te attacker&rsquo;s gun malfunctions.', 17, 92, 1),
(94, 'Natural order', 'When you take Wound Points from a Guns attack, spend 2 Chi as an interrupt to ignore them. If the fght takes place outdoors, a downpour ensues, and the area undergoes the adverse condition Torrential Rain.', 17, 93, 1),
(95, 'Hammer Punch', 'Your base damage with an unarmed Martial Arts attack is 9 or the current shot number, whichever is higher.', 18, 0, 1),
(96, 'one-Inch Punch', 'In a fght under the adverse condition Confned Space, spend 1 Chi and 0 shots to gain a +2 Immunity bonus until end of fght or end of condition.', 18, 95, 0),
(97, 'Back Leg Kick', 'Add +1 Martial Arts vs. the opponent most recently targeted for attack by any of your allies.', 18, 95, 1),
(98, 'Target the Core', 'Spend 1 Chi as an interrupt after making a successful unarmed Martial Arts attack. Until next keyframe, the target is at &ndash;1 Defense vs. Martial Arts attacks.', 18, 95, 1),
(99, 'Trapping Hands', 'Spend 1 Chi. Until next keyframe, opponents making Martial Arts attacks against you must pay +1 shot to do so, and another extra shot if they miss.', 18, 98, 1),
(100, 'Flowing Strikes', 'Once per fght, spend 1 Chi and 1 shot, choosing a specifc foe. Your Martial Arts attacks against that foe cost 2 shots each until end of fght.', 18, 99, 1),
(101, 'Horse Stance', 'When a named opponent misses you with a Martial Arts attack, you move up in the shot order to act on the subsequent shot.', 19, 0, 1),
(102, 'Crane Stance', 'Whenever a mook hits you, attack the mook as an interrupt.', 19, 101, 1),
(103, 'The Four-Six Stance', 'You may make Martial Arts attacks at a shot cost of 2 against any characters who made Martial Arts attacks against you during the current sequence.', 19, 102, 1),
(104, 'unicorn Stance', 'As an interrupt when targeted for a Martial Arts attack, spend 2 shots to gain +2 Defense. If the attack hits you anyway, you gain +3 Martial Arts on your next attack against this attacker.', 19, 103, 1),
(105, 'Mantis Stance', 'Whenever a named character deals you 8 or more Wound Points with a close combat attack, attack that foe as an interrupt.', 19, 104, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fu_path`
--

CREATE TABLE `fu_path` (
  `path_id` int(11) NOT NULL,
  `path_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `path_msg` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fu_path`
--

INSERT INTO `fu_path` (`path_id`, `path_title`, `path_msg`) VALUES
(1, 'path of the Banisher', ''),
(2, 'path of the Death punch', ''),
(3, 'path of the Dragon', ''),
(4, 'path of the Drunken Master', ''),
(5, 'path of Flame', ''),
(6, 'path of the Healer', ''),
(7, 'path of the Fox', ''),
(8, 'path of the Hundred Names', ''),
(9, 'path of the Montage', ''),
(10, 'path of the Ninja', ''),
(11, 'path of the Nunchaku', ''),
(12, 'path of the outlaw', ''),
(13, 'path of the Sword', ''),
(14, 'path of the Tiger', ''),
(15, 'path of the Weapon Master', 'This is arguably not a path as much as it is a disparate arsenal of schticks, since none of these impose prerequisites.'),
(16, 'path of the Welcoming Sky', ''),
(17, 'path of the Willow', ''),
(18, 'path of Wing Chun', ''),
(19, 'path of Wushu', '');

-- --------------------------------------------------------

--
-- Table structure for table `magic_cate`
--

CREATE TABLE `magic_cate` (
  `path_id` int(11) NOT NULL,
  `path_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `path_msg` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `magic_cate`
--

INSERT INTO `magic_cate` (`path_id`, `path_title`, `path_msg`) VALUES
(1, 'Blast', 'Blast spells harm opponents and objects. No Feng Shui spellcasters worth their ritually-burnt tortoise shells lack this schtick. All eﬀects other than Chi Blast do what that eﬀect does, plus something extra. Teir entries don’t bother to repeat the basic Chi Blast rules, but just give you the extra. On a Backlash, you suﬀer damage equal to the diﬀerence between your failed result and the target number +9.'),
(2, 'Divination', 'Seers and prognosticators have been peering into the future since time immemorial. Join their ranks, and use magic to gather information. In a Backlash, you suﬀer bad luck. On your next two important checks (as chosen by the GM), roll an additional negative die on your Swerves.'),
(3, 'Fertility', 'You measure and modify the ﬂow of chi in the natural environment around you, either for good or ill eﬀect. A Backlash costs you an extra 1 Magic at the end of any scene in which you spent Magic, until end of session. If at the end of a scene you are unable to pay, you instead take 5 Wound Points per unpaid Magic point. As a broad story eﬀect, Fertility also allows you to make people, and farmland more fertile, and to boost the health of crops and livestock. You can use this eﬀect, which automatically succeeds whenever you use it, to curry favor with peasants — especially in the Past and Ancient Junctures.'),
(4, 'Heal', 'This ability lets you restore individuals to good health and repair objects. If you learned your magic the Chinese way, you are in all probability an alchemist. You whip up cures by mixing various powders and potions you carry on your person. Tese are then either applied externally or taken orally. Laying on of hands to heal is a special eﬀect more appropriate for Western characters. On a Backlash, you take 10 Wound Points.'),
(5, 'Influence', 'Tis schtick allows the spellcaster to aﬀect the emotions, thoughts, and sensory input of humans and other intelligent beings.\r\n\r\nOn a Backlash, you become susceptible to the malign inﬂuence of random mischief spirits. Te next time you make a failed attack, you then, as a 0-shot interrupt, launch another attack against another hero, targeting the one with the highest Wound Point total. In the event of a tied high Wound Point total (for example if no one has any Wound Points), you attack the hero who last made an attack.'),
(6, 'Movement', 'Allows the spellcaster to move objects around from a distance. Te Backlash from any movement eﬀect causes the sorcerer to be violently hurled a number of meters equal to the Difculty of the check in a random direction, taking a Smackdown equal to the number of meters.'),
(7, 'Summoning', 'This specialty grants you power over beings with Creature Powers, referred to here as creatures. On a Backlash, you accidentally summon 3 demons from the Underworld (use mook stats, p. 192, with Damage 10 (claw/bite)) per hero present in the scene. Tey immediately attack the group.');

-- --------------------------------------------------------

--
-- Table structure for table `magic_detail`
--

CREATE TABLE `magic_detail` (
  `magic_id` int(11) NOT NULL,
  `magic_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `magic_attack` text COLLATE utf8_unicode_ci NOT NULL,
  `magic_story` text COLLATE utf8_unicode_ci NOT NULL,
  `magic_cate` int(11) NOT NULL,
  `magic_cost` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `magic_detail`
--

INSERT INTO `magic_detail` (`magic_id`, `magic_title`, `magic_attack`, `magic_story`, `magic_cate`, `magic_cost`) VALUES
(1, 'Chi Blast', 'As a standard 3-shot action, direct a ranged attack of raw magical energy at a combatant of your choice, using your Sorcery attack value, at a Damage Value of 9.', '', 1, 1),
(2, 'Acid Blast', 'As per Chi Blast. Also: on a successful attack, spend 1 Magic to give the combat area the adverse condition Toxic Fumes until next keyframe.', 'Spend a Magic point to destroy or decisively degrade a piece of unwanted evidence, beyond all forensic eï¬€orts to reconstruct it.', 1, 1),
(3, 'Arctic Blast', 'As per Chi Blast. Also: on a successful attack, spend 1 Magic to give the combat area the adverse condition Snow until next keyframe. When the condition expires, roll a single die. On an even result, it renews until next keyframe.', '', 1, 1),
(4, 'Conjured Blade', 'You create a handheld blade of magical force and wade into hand-to-hand combat. As per Chi Blast, but doesnâ€™t count as a ranged attack, and so is useful against an opponent whose schticks somehow thwart ranged attacks.', '', 1, 1),
(5, 'Disintegration', 'As per Chi Blast. Also: on a successful attack, spend 2 Magic to utterly destroy a weapon of your choice carried by the target. You canâ€™t choose a signature weapon.', '', 1, 1),
(6, 'Escher Blast', 'As per Chi Blast. Also: on a successful attack, spend 1 Magic to give the combat area the adverse condition Confned Space until next keyframe.', '', 1, 1),
(7, 'Fire Blast', 'As per Chi Blast. When you take out a mook, spend 1 Magic and roll a single die. On an even die result, you take out another mook and roll a single die. If that result is even, you take out yet another mook, and so on, until you roll an odd result or run out of mooks to take out.', 'This is also useful for setting fres, lighting cigars and cigarettes in an impressive manner, heating up coï¬€ee, increasing room temperature, and thawing out frozen foods.', 1, 1),
(8, 'Flesh Melter', 'As per Chi Blast. Also: on a successful attack, spend x Magic to give target 1 Impairment from the horrifc sight of her ï¬‚esh melting oï¬€. X varies by foe type: 1 for Featured Foes, 2 for Bosses. Targets never suï¬€er more than 2 Impairment from this or any other source.', '', 1, 1),
(9, 'Foggy Tendril', 'As per Chi Blast. Also: on a successful attack, spend 1 Magic to give the combat area the adverse condition Obscured Vision until next keyframe.', '', 1, 1),
(10, 'Flying Weapon', 'You create from thin air a glowing, magical weapon or weapons â€” for example, a sword, spear, or rain of knives â€” which hurls towards your opponent. As per Chi Blast. Also: on a successful attack, target spends 1 shot.', '', 1, 1),
(11, 'Ice Blast', 'As per Chi Blast. Also, on a successful attack, spend 1 Magic, your target must spend 3 shots freeing himself from an encasing layer of ice. Targets with Strength Checks above 7 spend only 1 shot.', 'As per Chi Blast. Also, on a successful attack, spend 1 Magic, your target must spend 3 shots freeing himself from an encasing layer of ice. Targets with Strength Checks above 7 spend only 1 shot.', 1, 1),
(12, 'Lightning Blast', 'As per Chi Blast. Also, on a successful attack, spend 1 Magic to require your target to spend 3 shots recovering from a stunning eï¬€ect. Targets with Constitution Checks above 7 spend only 1 shot.', 'Spend 1 Magic to recharge or power any electrical device. Device works for one scene.', 1, 1),
(13, 'Lucky 8 Blast', 'As per Chi Blast. On an Outcome of 4 or more, regain 1 spent Magic.', '', 1, 1),
(14, 'Magnetic Blast', 'When you hit a vehicle with a Chi Blast, it takes +3 Condition Points.', '', 1, 1),
(15, 'pathogen', 'As per Chi Blast. Also: on a successful attack, spend 1 Magic. For the remainder of the adventure, Wound Points dealt by the attack can only be removed by the Sorcery Heal schtick.', '', 1, 1),
(16, 'Allegiance', '', 'Spend 1 shot or 1 Magic to tell if a person you can see (in person) knowingly works for a faction or conspiracy. If you have heard of the faction or conspiracy, you know which one. Otherwise, you only see that the person is a player in the Chi War. Shot cost matters only if youâ€™re seeking this story beneft in mid-fght.', 2, 1),
(17, 'Assessment', 'Spend 1 shot or 1 Magic to tell if any of the enemies you face are Bosses, and if so, which ones.', '', 2, 1),
(18, 'Bullseye', 'Spend 1 shot or 1 Magic to identify the named foe you have the best chance of hitting with a Chi Blast.', '', 2, 1),
(19, 'Elevated Senses', '', 'Spend 1 Magic to gain (your choice) +3 to Notice, or a Notice value of 12, until end of scene.', 2, 1),
(20, 'Exposure', '', 'Spend 2 shots or 1 Magic to tell whether a person you can see is a Transformed Animal.', 2, 1),
(21, 'Fight Finder', '', 'Spend 1 Magic to know the location of the nearest group of people who want to kill you. You do not know which group. If no one wants to kill you, it must be early in the series. You get the spent Magic back.', 2, 1),
(22, 'Ghost Sense', '', 'Spend 1 Magic to see the ghosts all around you in a single scene. Unless you count the odd grotesque transformation or ineï¬€ective lunge in your direction, they canâ€™t really communicate with you. But their presence and appearance may provide clues to past events in the area. Densely-populated areas always crawl with ghosts. No refunds on Magic points, even if you see no ghosts or none of them can help you.', 2, 1),
(23, 'prediction', '', 'Spend 1 Magic to gain good, if somewhat obscure, advice or information about the future.', 2, 1),
(24, 'revelation', '', 'Spend 2 shots or 1 Magic to tell if something you are directly looking at is real, or an illusion.', 2, 1),
(25, 'Truthseek', '', 'Spend 1 Magic to tell if someone talking to you in person is speaking the truth as he knows it. Spend 1 more Magic to know the real truth, at least as far as the speaker understands it.', 2, 1),
(26, 'Warning', 'Spend 1 Magic as you draw a chalk outline on a suitable surface, covering an area of up to 450 square meters (about the size of a convenience store). For the rest of the adventure, you immediately know if anyone crosses the line.', 'You can direct a Chi Blast (if you have that schtick) at any one target crossing the line, no matter how far away you are from it in space or time.', 2, 1),
(27, 'Bend Fate', 'As an interrupt when an enemy makes an Attack or Task Check, spend 3 shots and 1 Magic to add extra negative die to the result.', '', 3, 1),
(28, 'Big Luck', '', 'Spend 1 Magic to gain +3 to Fortune Checks until the end of the next scene in which you make a Fortune Check. (Or end of session, if that comes sooner.)', 3, 1),
(29, 'De-Attunement', 'Spend 2 shots and make a Sorcery Check against the Will Resistance of any foe attuned to one or more feng shui sites. (Featured foes may or may not be; Boss foes almost invariably are. Mooks never are.) If successful, target takes 1 Impairment until end of fght.', '', 3, 1),
(30, 'Doom Boon', 'Regain all spent Magic points after succeeding at an Up Check.', '', 3, 1),
(31, 'Harvest Chi', 'After a successful attack against a named foe, you may subtract 3 from its Outcome to regain a spent Magic point.', '', 3, 1),
(32, 'observe Chi', '', 'See the ï¬‚ow of chi in an area, noting how strong or weak it is and if it is corrupted or impinged upon by some unnatural force. Immediately identify feng shui sites. Tell whether an individual you can see in person is attuned to at least one feng shui site.', 3, 1),
(33, 'quid to quo', 'When you receive a boost from an ally, roll a die. On an even result, the ally also gains the beneft of the boost', '', 3, 1),
(34, 'radiant Grant', 'When you give an ally a boost, roll a die. On an even result, choose a second ally to also gain the beneft of your boost.', '', 3, 1),
(35, 'Superior Evasion', 'On a failed attack against an enemy with a higher Defense than yours, spend 1 shot. Until next keyframe, your Defense equals the enemyâ€™s Defense +1.', '', 3, 1),
(36, 'Yin to Yang', 'Spend 1 Magic as an interrupt when you take Wound Points. Your next successful attack deals no fewer than this number of Wound Points.', '', 3, 1),
(37, 'Widen the Circle', 'Spend 1 shot as an interrupt when an ally grants a boost to any other ally. You also gain the beneft of that boost.', '', 3, 1),
(38, 'Brew Antidote', '', 'Spend 1 Magic to eliminate any one eï¬€ect of a foe schtick that continues past the end of a fght.', 4, 1),
(39, 'Cure Disease', '', 'Spend 3 Magic to cure any terminal illness, 2 to cure any serious non-fatal illness, 1 to cure any minor debilitating ailment.', 4, 1),
(40, 'Heal object', '', 'Make a Sorcery Check to restore a damaged inanimate object to its original condition, using Difculties suggested by the table below. GMs set Difculties for unlisted items, with larger objects being harder than small ones, and complicated devices harder than simple ones. You get one try to heal any particular given object, ever.', 4, 1),
(41, 'Heal vehicle', 'Remember what we just said about transitive numinosity? Reduce the Condition Points of any vehicle by the result of your Sorcery Check. In combat, takes 3 shots.', 'Remember what we just said about transitive numinosity? Reduce the Condition Points of any vehicle by the result of your Sorcery Check. In combat, takes 3 shots.', 4, 1),
(42, 'Heal Wounds', 'Spend 1 Magic to reduce the Wound Points of any character by the result of your Sorcery Check. In combat, this takes you 4 shots.', 'Spend 1 Magic to reduce the Wound Points of any character by the result of your Sorcery Check. In combat, this takes you 4 shots.', 4, 1),
(43, 'Iron Mind powder', 'Spend 1 Magic to cancel a foe schtick eï¬€ect that does something to an ally and is otherwise due to expire at the end of the sequence, keyframe, or fght.', '', 4, 1),
(44, 'Shared Bounty', 'Spend 1 shot to remove 10 of your own Wound Points. Te enemy with the highest Wound Points total also removes 10 Wound Points. You can only use this if at least one enemy has 10 Wound Points.', '', 4, 1),
(45, 'vitamin S', 'Spend 1 Magic to grant yourself or an ally either +3 to Constitution Checks or a Toughness value of 12 for the purposes of making Constitution Checks (your choice) until end of scene.', '', 4, 1),
(46, 'Brain Fortress', '', 'Spend 1 Magic to grant yourself or an ally either +3 to Will Checks or a Will value of 12 (your choice) until end of scene.', 5, 1),
(47, 'Exemplary prostrations', '', 'Spend 1 Magic to seem trustworthy to all authority fgures present in the current scene. Lasts until end of adventure, or until you actively violate their trust, whichever comes frst.', 5, 1),
(48, 'False Memory', '', 'Spend 1 Magic and make a Sorcery Check against the Will Resistance of a GMC you are engaged in conversation with, and regards you in a positive or neutral light. In about a hundred words or less, describe an experience the target is supposed to have had, but did not. On a success, the subject believes that this happened to her. +3 to the subjectâ€™s Will Resistance if the incident strains credulity, but not the subjectâ€™s selfimage or sense of reality. +8 if the incident does contravene the subjectâ€™s self-image or sense of reality.', 5, 1),
(49, 'Greed potion', '', 'Spend 1 Magic to formulate a potion which, if ingested by a Featured Foe or supporting character, causes him to obsessively seek a particular item of value. At the end of each subsequent scene, make a Sorcery Check against the targetâ€™s Will Resistance. Te eï¬€ect ends when you fail a check, or at end of session, whichever comes sooner.', 5, 1),
(50, 'Hate potion', '', 'Spend 1 Magic to formulate a potion which, if ingested by a Featured Foe or supporting character, causes him to curse and despise another character specifed by the sorcerer at time of formulation. At the end of each subsequent scene, make a Sorcery Check against the targetâ€™s Will Resistance. The eï¬€ect ends when you fail a check, or at end of session, whichever comes sooner.', 5, 1),
(51, 'Illusion', '', 'Spend 1 Magic to make one object or person look, smell, and sound like something else of roughly the same size and physical confguration until end of scene. Or create an illusion from thin air, registering to sight, smell, and hearing, but not to touch or taste. Characters encountering the illusion make Notice Checks to identify it as false; if successful, they know something weird or magical is going on. Sorcerers with at least 1 Divination schtick get a +5 bonus to their Notice Checks.', 5, 1),
(52, 'Love potion', '', 'Spend 1 Magic to formulate a potion which, if ingested by a Featured Foe or supporting character, causes him to fall head over heels in love with another character specifed by the sorcerer at time of formulation. If attraction to the object of aï¬€ection contradicts the ingesting characterâ€™s orientation, the pull remains powerful but platonic. At the end of each subsequent scene, make a Sorcery Check against the targetâ€™s Will Resistance. Te eï¬€ect ends when you fail a check, or at end of session, whichever comes sooner.', 5, 1),
(53, 'Mind Control', 'When a Featured Foe declares an attack, spend 4 shots as an interrupt to choose a new hero, named character, or mook as target for the attack.', '', 5, 1),
(54, 'override Will', '', 'Spend 1 Magic and make a Sorcery Check against the Will Resistance of a GMC you can see in person, and is in a relaxed state of mind. On a success, the target executes, to the best of his ability, a single instruction of 25 words or less. +3 to the targetâ€™s Will Resistance for an instruction that clearly threatens his interests or self-image. +8 for an instruction that violates his safety or that of others.', 5, 1),
(55, 'Spatial Confusion', 'Spend 1 Magic and 1 shot to check Sorcery against a targetâ€™s Will Resistance value. On a success, gain +1 Sorcery and +1 Defense against that target until next keyframe.', '', 5, 1),
(56, 'Altruistic Switcheroo', 'As an interrupt when you or an ally is hit by an attack, spend 2 shots to choose either yourself or another willing ally to take the hit instead. Use the new recipientâ€™s Toughness to determine how many Wound Points get dished out', '', 6, 1),
(57, 'Far Lift', 'Far LiftCause an inanimate object to rise into the air, move horizontally, and then none-toogently set itself down again. Maximum vertical distance and maximum horizontal distance both equal your current Magic points in meters. Difculty is 1 for every 5 kg the object weighs', 'SAME', 6, 1),
(58, 'Flight', 'Fly through the air, moving up to 5 m per shot.', 'SAME', 6, 1),
(59, 'Harsh Switcheroo', 'As an interrupt when an enemy is hit by an attack, spend 1 shot and make a Sorcery Check against the Defense of another enemy. On a success, the second enemy takes the hit instead. Use the new recipientâ€™s Toughness to determine how many Wound Points get dished out.', '', 6, 1),
(60, 'Muscular Infusion', '', 'Spend 1 Magic to grant yourself or an ally either +3 to Strength Checks or a Strength value of 12 (your choice) until end of scene.', 6, 1),
(61, 'remote Manipulation', '', 'Perform manual tasks involving distant objects or devices. Difculty of the Sorcery Check equals your distance in meters from the object, which you must be able to see.', 6, 1),
(62, 'Slowdown', 'Spend X Magic and 3 shots to make a Sorcery Check against an enemyâ€™s Defense; if successful, enemyâ€™s Speed decreases by X until end of fght. Speed canâ€™t be reduced below 1.', '', 6, 1),
(63, 'Banishment', 'Spend 3 Magic and 3 shots; on a Sorcery success against a supernatural creatureâ€™s Defense, it Cheeses It. On a failure, you regain the Magic points.', '', 7, 1),
(64, 'Corruption', 'Spend 1 Magic and 3 shots to grant +1 to the Attacks, Defense, and checks of all creatures engaged in the fght, until next keyframe.', '', 7, 1),
(65, 'Demon Spoor Extract', 'Spend 1 Magic to cancel a foe schtick eï¬€ect that directly bolsters a foe and is otherwise due to expire at the end of the sequence, keyframe, or fght.', '', 7, 1),
(66, 'Echoes of the past', 'If you deal Wound Points to a Transformed Animal foe, and it goes down at any later point in the fght, it reverts to its animal form. Transformed Animal heroes present for this take 3 Reversion points.', '', 7, 1),
(67, 'Exorcism', 'Spend 1 Magic or 3 shots to free a single individual of any eï¬€ects caused by Sorcery or Creature Powers.', '', 7, 1),
(68, 'Invocation', '', 'Spend 2 Magic to seize a particular creature through time and space and cause it to appear at your side. You can target a creature if you successfully used Domination against it in the past, or if you have on your person a former body part of the creature, such as a claw, piece of hair, scraping of skin, or severed hand. Requires a Sorcery Check against the creatureâ€™s Will Resistance value; on a failure, nothing happens and you get the Magic points back. Merely summoning a creature does not ensure its cooperation. In fact, in most cases guarantees your subjectâ€™s extreme displeasure.', 7, 1),
(69, 'purification', 'Spend 1 Magic and 3 shots to levy a â€“1 penalty to the Attacks, Defense, and checks of all creatures engaged in the fght, until next keyframe.', '', 7, 1),
(70, 'Sustained Domination', '', 'Spend 1 Magic and make a Sorcery Check with a creatureâ€™s Will Resistance value as the Difculty. Te creature will obey your spoken instructions for a number of hours equal to your Outcome, or until end of session, whichever comes sooner. It will not fght for you but will otherwise obey the letter of your instructions to the best of its abilities. Does not work on Bosses or Uber-Bosses.', 7, 1),
(71, 'quick Domination', 'pend 1 Magic and X shots; make a Sorcery Check with a creatureâ€™s Will Resistance value as the Difculty. Te creature fghts as your ally for X shots, attacking targets you designate. Does not work on Bosses or Uber-Bosses.', '', 7, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fu_detail`
--
ALTER TABLE `fu_detail`
  ADD PRIMARY KEY (`fu_id`);

--
-- Indexes for table `fu_path`
--
ALTER TABLE `fu_path`
  ADD PRIMARY KEY (`path_id`);

--
-- Indexes for table `magic_cate`
--
ALTER TABLE `magic_cate`
  ADD PRIMARY KEY (`path_id`);

--
-- Indexes for table `magic_detail`
--
ALTER TABLE `magic_detail`
  ADD PRIMARY KEY (`magic_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fu_detail`
--
ALTER TABLE `fu_detail`
  MODIFY `fu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `fu_path`
--
ALTER TABLE `fu_path`
  MODIFY `path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `magic_cate`
--
ALTER TABLE `magic_cate`
  MODIFY `path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `magic_detail`
--
ALTER TABLE `magic_detail`
  MODIFY `magic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
