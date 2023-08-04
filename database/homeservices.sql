
CREATE TABLE `booking` (
  `book_id` int(3) NOT NULL,
  `work` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(300) NOT NULL,
  `date` varchar(30) NOT NULL,
  `reg_id` int(3) NOT NULL,
  `status` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `booking` (`book_id`, `work`, `city`, `name`, `mobile`, `address`, `date`,`reg_id`, `status`) VALUES
(1, 'Electrician', 'Shivamogga', 'Shri', '7412589632', 'near railway station', '2023-02-01',  1, '2'),
(2, 'Electrician', 'Bengaluru', 'Sinch', '7745990607', 'laggere', '2023-02-02', 2, '2'),
(3, 'Electrician', 'Shivamogga', 'Manoj', '7746990607', 'Bapuji rd', '2023-02-03', 1, '2');



CREATE TABLE `City` (
  `id` int(11) NOT NULL,
  `city` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `City` (`id`,`city`) VALUES
(1,  'Shivamogga'),
(2,  'Bengaluru'),
(3, 'Mysore'),
(4, 'Mangaluru'),
(5, 'Delhi'),
(6,  'Mumbai'),
(7,  'Chennai'),
(8, 'Udaipur'),
(9, 'Kerala'),
(10,  'Jaipur');



CREATE TABLE `registration` (
  `id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `experience` varchar(9) NOT NULL,
  `id_proof` varchar(30) NOT NULL,
  `id_picture` varchar(45) NOT NULL,
  `work_type` varchar(40) NOT NULL,
  `picture` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `registration` (`id`, `name`, `mobile`, `email`, `password`, `city`, `experience`, `id_proof`, `id_picture`, `work_type`, `picture`) VALUES
(1, 'Shriprada', '7896589658', 'shriprada@gmail.com', '1234', 'Shivamogga','2', 'Adhaar','aadhaar-pvc-card-500x500.png', 'Electician', 'pic3.png'),
(2, 'Sinchana', '7412589632', 'sinchana@gmail.com', '1234', 'Bengaluru','3', 'Adhaar', 'aadhaar-pvc-card-500x500.png', 'Electician', 'pic2.png');


ALTER TABLE `booking`
  ADD PRIMARY KEY (`book_id`);


ALTER TABLE `City`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `booking`
  MODIFY `book_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `City`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `registration`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;


create table contact
(
  cname varchar(30),
  cemail varchar(10),
  cmobile varchar(10),
  cmessage varchar(100)
  );


create table category
(
id int(5) primary key auto_increment,
categoryname varchar(50)
);

