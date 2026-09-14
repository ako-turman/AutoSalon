-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 13 2026 г., 15:09
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `autosalon`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `year_prodused` int(4) NOT NULL,
  `vin_code` varchar(17) NOT NULL,
  `color` varchar(30) NOT NULL,
  `body_style` varchar(30) NOT NULL,
  `engine_type` varchar(20) NOT NULL,
  `engine_capacity` decimal(3,1) NOT NULL,
  `horsepower` int(5) NOT NULL,
  `transmission` varchar(20) NOT NULL,
  `drive_type` varchar(20) NOT NULL,
  `mileage` int(10) NOT NULL,
  `fuel_type` varchar(20) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `country` varchar(50) NOT NULL,
  `owners_count` int(2) NOT NULL,
  `is_damaged` tinyint(1) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Список автомобилей в салоне';

--
-- Дамп данных таблицы `cars`
--

INSERT INTO `cars` (`id`, `brand`, `model`, `year_prodused`, `vin_code`, `color`, `body_style`, `engine_type`, `engine_capacity`, `horsepower`, `transmission`, `drive_type`, `mileage`, `fuel_type`, `price`, `status`, `country`, `owners_count`, `is_damaged`, `description`) VALUES
(1, 'McLaren', '765lt', 2023, 'SBM11DAA6P1000765', 'Amethyst Black (Purple)', 'Coupe', 'V8 Twin-Turbo', 4.0, 765, '7-speed SSG (Automat', 'RWD (Rear Wheel Driv', 0, 'Petrol', 450000.00, 'Available', 'United Kingdom', 0, 0, 'Limited edition supercar in stunning purple finish.'),
(2, 'Lamborghini ', 'aventador svj', 2022, 'ZHWBU18S0NLA01234', 'Verde Mantis (Green)', 'Coupe', 'V12', 6.5, 770, 'ISR 7-speed', 'AWD', 150, 'Petrol', 600000.00, 'Available', 'Italy', 0, 0, 'Extreme performance V12.'),
(3, 'Ferrari', 'f8 tributo', 2023, 'ZFF81NHA5L0258369', 'Rosso Corsa', 'Coupe', 'V8 Twin-Turbo', 3.9, 720, 'Automatic', 'RWD (Rear Wheel Driv', 0, 'Petrol', 320000.00, 'Available', 'Italy', 0, 0, 'Classic Ferrari speed.'),
(4, 'Porsche', '911 gt3 rs', 2024, 'WP0ZZZ99ZNS214587', 'Shark Blue', 'Coupe', 'Flat-6', 4.0, 525, 'PDK', 'RWD (Rear Wheel Driv', 0, 'Petrol', 295000.00, 'Available', 'Germany', 0, 0, 'Track-focused legend.'),
(5, 'Mercedes-Benz', 'g63 amg', 2023, 'W1GDF7HB2PN369852', 'Obsidian Black', 'SUV', 'V8 Biturbo', 4.0, 585, 'Automatic', 'AWD', 500, 'Petrol', 255000.00, 'Available', 'Germany', 1, 0, 'Iconic G-Wagon.'),
(6, 'BMW', 'm5 cs', 2022, 'WBS53CH01LM456123', 'Frozen Deep Green', 'Sedan', 'V8', 4.4, 635, 'Steptronic', 'AWD', 1200, 'Petrol', 165000.00, 'Available', 'Germany', 1, 0, 'Limited production super-sedan.'),
(7, 'Audi', 'rs6 avant', 2023, 'WUAZZZ4GZBN001478', 'Nardo Grey', 'Wagon', 'V8', 4.0, 600, 'Tiptronic', 'AWD', 0, 'Petrol', 145000.00, 'Available', 'Germany', 0, 0, 'Perfect family supercar.'),
(8, 'Rolls-Royce', 'cullinan', 2024, 'SCAXN21S4PU584123', 'Arctic White', 'SUV', 'V12', 6.8, 571, 'Automatic', 'AWD', 0, 'Petrol', 480000.00, 'Available', 'United Kingdom', 0, 0, 'Peak of luxury SUVs.'),
(9, 'Bentley', 'continental gt', 2023, 'SCBGP4ZA6NC021458', 'Sequin Blue', 'Coupe', 'W12', 6.0, 650, '8-speed Dual-clutch', 'AWD', 0, 'Petrol', 310000.00, 'Available', 'UK', 0, 0, 'Grand tourer excellence.'),
(10, 'Tesla', 'model s plaid', 2024, '5YJSA1E45PF123456', 'Solid Black', 'Sedan', 'Tri-Motor Electric', 0.0, 1020, 'Single-speed', 'AWD', 0, 'Electric', 115000.00, 'Available', 'USA', 0, 0, '0-100 km/h in 2.1s.'),
(11, 'Toyota', 'land cruiser 300', 2023, 'JTMBA31J2P1456789', 'Silver Metallic', 'SUV', 'V6 Turbo', 4.5, 415, '10-speed AT', 'AWD', 0, 'Petrol', 25000.00, 'Sold', 'Japan', 0, 0, 'Legend of reliability.'),
(12, 'Aston Martin', 'dbs volante', 2023, 'SCFMC63D2PG001245', 'British Racing Green', 'Convertible', 'V12', 5.2, 715, '8-speed AT', 'RWD', 0, 'Petrol', 350000.00, 'Available', 'UK', 0, 0, 'James Bond\'s choice.'),
(13, 'Bugatti', 'chiron', 2022, 'VF951111LA0004587', 'French Racing Blue', 'Coupe', 'W16 Quadturbo', 8.0, 1500, '7-speed DSG', 'AWD', 250, 'Petrol', 3800000.00, 'Available', 'France', 1, 0, 'Fastest car in the world.'),
(14, 'Nissan', 'gt-r nismo', 2023, 'JN1AR0EF5PC014785', 'Ultimate Silver', 'Coupe', 'V6', 3.8, 600, '6-speed DCT', 'AWD', 0, 'Petrol', 215000.00, 'Available', 'Japan', 0, 0, 'The Godzilla.'),
(15, 'Ford', 'gt500', 2022, '1FA6P8SJ0L5458712', 'Twister Orange', 'Coupe', 'V8 Supercharged', 5.2, 760, '7-speed Dual-clutch', 'RWD (Rear Wheel Driv', 1500, 'Petrol', 98000.00, 'Available', 'USA', 1, 0, 'American muscle.'),
(16, 'Lexus', 'lfa', 2012, 'JTHAK19G100000147', 'Pearl White', 'Coupe', 'V10', 4.8, 560, '6-speed ASG', 'RWD', 4500, 'Petrol', 850000.00, 'Available', 'Japan', 2, 0, 'Best sounding V10 engine.'),
(17, 'Range Rover', 'autobiography', 2024, 'SALGS2BE5PA125874', 'Sunset Gold', 'SUV', 'V8', 4.4, 530, '8-speed AT', 'AWD', 0, 'Petrol', 220000.00, 'Available', 'UK', 0, 0, 'Luxury off-road king.'),
(18, 'Maserati', 'mc20', 2023, 'ZAM67S3A0NP014587', 'Blu Infinito', 'Coupe', 'V6 Nettuno', 3.0, 630, '8-speed DCT', 'RWD', 0, 'Petrol', 240000.00, 'Available', 'Italy', 0, 0, 'Italian soul.'),
(19, 'Lotus', 'emira', 2024, 'SCCAF12E3RC145872', 'Seneca Blue', 'Coupe', 'V6', 3.5, 400, 'Manual', 'RWD (Rear Wheel Driv', 0, 'Petrol', 105000.00, 'Available', 'UK', 0, 0, 'For driving purists.'),
(20, 'Cadillac', 'escalade-v', 2023, '1GYS4HKR3PR254781', 'Black Raven', 'SUV', 'V8 Supercharged', 6.2, 682, '10-speed AT', 'AWD', 50, 'Petrol', 180000.00, 'Available', 'USA', 0, 0, 'Power and size.');

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `passport_id` varchar(20) NOT NULL,
  `birth_date` date NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `driver_license` varchar(20) NOT NULL,
  `client_status` varchar(20) NOT NULL,
  `discount_percent	INT` int(3) NOT NULL,
  `preferred_brand` varchar(50) NOT NULL,
  `registration_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Список клиентов автосалона';

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `phone_number`, `email`, `passport_id`, `birth_date`, `city`, `address`, `driver_license`, `client_status`, `discount_percent	INT`, `preferred_brand`, `registration_date`) VALUES
(1, 'John', 'Smith', '+1 202 555 0173', 'j.smith@gmail.com', '123456789', '1985-05-15', 'New York', '5th Ave, 10', 'NY9901123', 'VIP', 5, 'McLaren', '2025-12-01'),
(2, 'Yuki', 'Tanaka', '+81 90 1234 5678', 'y.tanaka@sony.jp', 'TK9876543', '1992-08-20', 'Tokyo', 'Minato City, 4-2-8', 'JP7710654', 'regular customer', 3, 'Nissan GT-R', '2026-01-10'),
(3, 'Ahmed', 'Al-Mansouri', '+971 50 123 4567', 'ahmed.m@dubai.ae', 'DXB112233', '1980-03-12', 'Dubai', 'Burj Khalifa Dist.', 'DXB00145', 'VIP', 10, 'Bugatti', '2026-01-15'),
(4, 'Marie', 'Dubois', '+33 1 42 68 53 00', 'm.dubois@orange.fr', 'FR5015321', '1995-11-30', 'Paris', 'Rue de Rivoli, 45', 'FR6620321', 'regular customer', 2, 'Ferrari', '2025-05-20'),
(5, 'Hans', 'Müller', '+49 30 123456', 'h.mueller@berlin.de', 'GER2010456', '1978-07-07', 'Berlin', 'Unter den Linden, 88', 'DE2315456', 'VIP', 7, 'Porsche', '2024-10-12'),
(6, 'Leonardo', 'Ricci', '+39 06 1234567', 'l.ricci@ferrari.it', 'IT0312987', '1990-01-25', 'Rome', 'Via del Corso, 12', 'IT5410987', 'new client', 0, 'Lamborghini', '2026-01-19'),
(7, 'James', 'Bond', '+44 20 7946 0007', 'agent007@mi6.uk', 'UK007007', '1982-09-14', 'London', 'Vauxhall Cross, 85', 'UK2301222', 'VIP', 0, 'Aston Martin', '2025-08-05'),
(8, 'Isabella', 'Silva', '+55 11 98765-4321', 'i.silva@uol.com.br', 'BR4016555', '1987-12-05', 'Sao Paulo', 'Av. Paulista, 15', 'BR2412555', 'new client', 0, 'Audi', '2026-01-20'),
(9, 'Zhang', 'Wei', '+86 10 8888 8888', 'z.wei@wechat.cn', 'CN1414111', '1991-04-18', 'Beijing', 'Wangfujing St, 7', 'CN3105111', 'VIP', 8, 'Rolls-Royce', '2025-11-11'),
(10, 'Fatima', 'Hassan ', '+966 11 123 4567', 'f.hassan@saudi.com', 'SA0815333', '1993-06-22', 'Riyadh', 'King Fahd Rd, 1', 'SA2710333', 'regular customer', 4, 'Bentley', '2025-02-14'),
(11, 'Carlos', 'Lopez', '+52 55 1234 5678', 'c.lopez@prodigy.mx', 'MX2210777', '1980-10-10', 'Mexico City', 'Paseo de la Reforma', 'MX2515777', 'New customer ', 0, 'Cadillac', '2026-01-05'),
(12, 'Elena', 'Petrovna', '+7 701 123 4567', 'e.petrovna@mail.kz', 'KZ3314999', '1989-02-28', 'Astana', 'Mangilik El, 14', 'KZ6305999', 'regular customer', 3, 'Range Rover', '2025-12-25'),
(13, 'Kim', 'Min-su', '+82 2 1234 5678', 'kim.ms@samsung.kr', 'KR5510121', '1994-01-01', 'Seoul', 'Gangnam-gu, 22', 'KR5210121', 'New customer ', 0, 'Tesla', '2026-01-18'),
(14, 'Sofia', 'Rossi', '+41 44 123 45 67', 's.rossi@bank.ch', 'CH6612343', '1996-09-09', 'Zurich', 'Bahnhofstrasse, 50', 'Bahnhofstrasse, 50', 'VIP', 5, 'Maserati', '2024-06-30'),
(15, 'Oscar', 'Nilsson', '+46 8 123 45 67', 'o.nilsson@volvo.se', 'SE7715565', '1984-12-12', 'Stockholm', 'Hamngatan, 3', 'SE5905565', 'regular customer', 5, 'Lotus', '2025-03-03');

-- --------------------------------------------------------

--
-- Структура таблицы `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL COMMENT 'должность ',
  `hire_date` date NOT NULL,
  `salary` decimal(10,2) NOT NULL COMMENT 'зарплата ',
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sales_count` int(5) NOT NULL COMMENT 'Сколько машин продал',
  `branch_office` varchar(50) NOT NULL COMMENT 'Филиал'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `position`, `hire_date`, `salary`, `phone`, `email`, `sales_count`, `branch_office`) VALUES
(1, 'Michael', 'Jordan', 'Manager', '2020-01-15', 5500.00, '+14155550101', 'm.jordan@luxauto.com', 120, 'New York'),
(2, 'Sarah', 'Connor', 'Sales Consultant', '2022-03-10', 3200.00, '+12125550199', 's.connor@luxauto.com', 85, 'New York'),
(3, 'Jean', 'Reno', 'Sales Consultant', '2021-06-01', 3500.00, '+33140050505', 'j.reno@luxauto.com', 94, 'Paris'),
(4, 'Klaus', 'Schmidt', 'Technician', '2019-11-20', 4000.00, '+49301234567', 'k.schmidt@luxauto.com', 0, 'Berlin'),
(5, 'Akira', 'Tanaka', 'Regional Manager', '2018-05-12', 6000.00, '+81332221111', 'a.tanaka@luxauto.com', 200, 'Tokyo'),
(6, 'Monica', 'Bellucci', 'Marketing Director', '2023-01-10', 4800.00, '+39061234567', 'm.bellucci@luxauto.com', 10, 'Rome'),
(7, 'Steve', 'Jobs', 'IT Support', '2024-02-01', 3800.00, '+14085550101', 's.jobs@luxauto.com', 0, 'New York'),
(8, 'Ricardo', 'Santos', 'Security Chief', '2020-08-15', 2500.00, '+551198765432', 'r.santos@luxauto.com', 0, 'Dubai'),
(9, 'Emma', 'Watson', 'Receptionist', '2023-10-01', 2000.00, '+442071234567', 'e.watson@luxauto.com', 5, 'London'),
(10, 'Carlos', 'Sainz', 'Test Driver', '2022-12-12', 7000.00, '+34911234567', 'c.sainz@luxauto.com', 0, 'Madrid');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_date` date NOT NULL COMMENT 'дата заказа',
  `client_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `total_amount` decimal(15,2) NOT NULL COMMENT 'Итоговая сумма',
  `payment_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Заказы запчастей и оборудования';

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `client_id`, `car_id`, `employee_id`, `service_id`, `total_amount`, `payment_status`) VALUES
(1, '2026-01-20', 1, 2, 2, 4, 10000.00, 'Paid'),
(2, '2026-01-21', 2, 4, 1, 2, 5400.00, 'Installment'),
(3, '2026-01-22', 3, 13, 5, 1, 1500.00, 'Bank'),
(4, '2026-01-22', 4, 3, 10, 5, 2400.00, 'Cash'),
(5, '2026-01-23', 5, 6, 3, 3, 8500.00, 'Paid'),
(6, '2026-01-24', 6, 8, 6, 2, 1500.00, 'Bank Transfer'),
(7, '2026-01-24', 12, 16, 5, 1, 4800.00, 'Installment'),
(8, '2026-01-25', 14, 19, 4, 5, 540.00, 'Paid'),
(9, '0000-00-00', 1, 1, 1, 1, 5000.00, NULL),
(10, '0000-00-00', 1, 1, 2, 2, 15000.00, NULL),
(11, '2024-05-10', 1, 1, 3, 2, 5000.00, NULL),
(12, '2024-06-15', 1, 1, 3, 2, 5500.00, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(100) NOT NULL COMMENT 'Название',
  `service_cost` decimal(10,2) NOT NULL COMMENT 'Цена',
  `execution_time:` varchar(50) NOT NULL COMMENT 'Сколько времени займет.',
  `category` varchar(50) NOT NULL COMMENT 'Группа'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `service_name`, `service_cost`, `execution_time:`, `category`) VALUES
(1, 'Комплексное техническое обслуживание', 45000.00, '4 часа', 'Обслуживание'),
(2, 'Полировка и покрытие воском', 25000.00, '8 часов', 'Уход'),
(3, 'Сезонная смена резины с балансировкой', 8000.00, '1.5 часа', 'Обслуживание'),
(4, 'Программное увеличение мощности', 120000.00, '3 часа', '3 часа'),
(5, 'Полная компьютерная проверка систем', 5000.00, '1 час', 'Диагностика');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
