INSERT INTO Группа(нг, кол, пбалл) VALUES
  ('101', 30, 4.5),
  ('102', 32, 4.5),
  ('103', 29, 4.8),
  ('104', 35, 4.4),
  ('105', 35, 4.8),
  ('201', 35, 3.9),
  ('202', 30, 4.0),
  ('203', 28, 4.7),
  ('204', 25, 4.0);

INSERT INTO Студент(нг, нс, фио, годр, пбал) VALUES
  ('101', '01', 'Петькин  П. П.', 1978, 4.25),
  ('102', '02', 'Уткин    П. П.', 1973, 4.25),
  ('103', '03', 'Зимба    А. Д.', 1978, 4.25),
  ('104', '04', 'Тортурин А. О.', 1978, 4.25),
  ('105', '05', 'Макова   Т. Т.', 1975, 4.25),
  ('106', '06', 'Федоров  О. О.', 1978, 4.25),
  ('107', '07', 'Иванов   Г. Г.', 1979, 4.25),
  ('108', '08', 'Трудный  А. А.', 1978, 4.25),
  ('104', '09', 'Сильный  Е. Я.', 1977, 4.25),
  ('106', '10', 'Большой  О. И.', 1978, 4.25);

INSERT INTO Кафедра(ккаф, нкаф, тел, зав) VALUES
  ('01', 'ИНФОРМАТИКИ', '31-22-34', 'Инокентьев Щ. Щ.'),
  ('02', 'МАТЕМАТИКИ' , '31-23-36', 'Шабашева   Щ. Щ.'),
  ('03', 'ИСТОРИИ'    , '31-22-39', 'Синабон    I. Р.'),
  ('04', 'КОМЕДИИ'    , '36-22-31', 'Траногорис Щ. Щ.'),
  ('05', 'ФИЗКУЛЬТУРЫ', '30-22-30', 'Идодоуорчи Ы. У.');

INSERT INTO Преподаватель (табн, фио, ст, ккаф) VALUES
  ('101', 'Андреев О. О.', 'Кандидат В-наук', '01'),
  ('102', 'Тынтынп С. О.', 'Доктор   S-наук', '02'),
  ('103', 'Устьгор О. С.', 'Магистр  Ш-наук', '02'),
  ('104', 'Андропо Ф. О.', 'Кандидат С-наук', '03'),
  ('105', 'Андреев U. О.', 'Кандидат В-наук', '05');

INSERT INTO Предмет (кп, нп, часы, лек, пр, чс) VALUES
  ('01', 'Егогология',      200, 80,  120, 4),
  ('02', 'Кетопримо мет.',  200, 80,  120, 3),
  ('03', 'История',         300, 170, 130, 4),
  ('04', 'Философия',       120, 0,   120, 2),
  ('05', 'Антология ист.',  200, 80,  120, 4);

INSERT INTO Изучение (нг, кп, табн, видз, часы) VALUES
  ('101', '01', '101', 'пр',  20),
  ('101', '01', '104', 'лек', 20),
  ('105', '02', '102', 'пр',  20),
  ('105', '02', '103', 'пр',  20),
  ('102', '03', '105', 'лек', 20),
  ('203', '03', '107', 'пр',  20);

INSERT INTO Успеваемость (нг, нс, кп, табн, видз, оценка) VALUES
  ('101', '01', '01', '101', 'пр',  5),
  ('102', '02', '03', '102', 'лек', 0),
  ('103', '03', '02', '103', 'пр',  5),
  ('104', '04', '04', '104', 'лек', 0),
  ('105', '05', '05', '105', 'пр',  5),
  ('106', '06', '06', '106', 'пр',  2);
