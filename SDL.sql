create database comm_demo_db;
Use comm_demo_db ;

CREATE TABLE `role` (
  `role_id` int(10) NOT NULL,
  `role_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(2, 'Software Programmer');


CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role_id` int(10) NOT NULL,
  `jobexperience` varchar(200) DEFAULT NULL,
  `education` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `user` (`user_id`, `firstName`, `lastName`, `email`, `password`, `role_id`, `jobexperience`, `education`) VALUES
(1, 'april', 'cho', 'aprilcho@gmail.com', 'admin', 1, '10', 'B.C.Sc'),
(8, 'khin', 'ma', 'khin@gmail.com', 'user', 2, '8', 'computer');

ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);
  
  ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role_id_fk` (`role_id`);
  
  
  ALTER TABLE `role`
  MODIFY `role_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
  
 


