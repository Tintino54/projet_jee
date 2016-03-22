DROP TABLE IF EXISTS USERS;
DROP TABLE IF EXISTS CAMPAIGNS;
DROP TABLE IF EXISTS PARTICIPATIONS;
DROP TABLE IF EXISTS USERS_ROLES;

CREATE TABLE `USERS` (
  `ID_USER` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN` varchar(15) NOT NULL,
  `PASSWORD` varchar(60) NOT NULL,
  `FIRSTNAME` varchar(30) NOT NULL,
  `LASTNAME` varchar(30) NOT NULL,
  `MAILADRESS` varchar(30) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `SEX` int(11) NOT NULL
);

CREATE TABLE `CAMPAIGNS` (
  `ID_CAMPAIGN` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(60) NOT NULL,
  `EXPECTEDAMOUNT` decimal(12,0) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `DEADLINE` date NOT NULL,
  `ID_USER` int(30) NOT NULL
);

CREATE TABLE `PARTICIPATIONS` (
  `ID_PARTICIPATION` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PROJET` int(11) NOT NULL,
  `ID_USER` int(11) NOT NULL,
  `DATEPARTICIPATION` date NOT NULL,
  `DONATION` decimal(10,0) NOT NULL,
  `MESSAGE` text NOT NULL
);

CREATE TABLE `USERS_ROLES` (
  `USER_ROLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN` varchar(15) NOT NULL,
  `ROLE` varchar(10) NOT NULL
);


ALTER TABLE `USERS`
  ADD PRIMARY KEY (`ID_USER`);
  
ALTER TABLE `CAMPAIGNS`
  ADD PRIMARY KEY (`ID_CAMPAIGN`);

ALTER TABLE `PARTICIPATIONS`
  ADD PRIMARY KEY (`ID_PARTICIPATION`);

ALTER TABLE `USERS_ROLES`
  ADD PRIMARY KEY (`USER_ROLE_ID`);
  
  
INSERT INTO `USERS` (`LOGIN`, `PASSWORD`, `FIRSTNAME`, `LASTNAME`, `MAILADRESS`, `BIRTHDATE`, `SEX`) VALUES
('aubergine', '$2a$10$oXWjKM23jFbLSpk/ZNzX1u5bytUQ2e7T0Br8FiQBF/.Kl/2JbMNnq', 'aubergine', '', 'aubergine@jardin.fr', CURRENT_TIMESTAMP, 0),
('radis', '$2a$10$hF9yMKVMIZxIxdmB5kdZIOQ5kVC5RJe58EM1OOr54zF/dejYQnjFe', 'radis', '', 'radis@jardin.fr', CURRENT_TIMESTAMP, 0);