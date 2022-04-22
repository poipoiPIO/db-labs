CREATE TABLE if not EXISTS Группа (
  нг    VARCHAR(3) UNIQUE PRIMARY Key NOT NULL, -- номер группы
  кол   INTEGER NULL, -- количество студентов в группе
  пбалл REAL NULL,  -- проходной балл
  
  CONSTRAINT проверка_количества -- Условие для столбца кол
  	CHECK (кол >= 0 and кол <= 35),
  
  CONSTRAINT проверка_проходного_балла -- Условие для столбца пбалл
  	CHECK ((пбалл > 2 and пбалл < 5) or пбалл = 2)
);

CREATE table if not EXISTS Студент (
  нг    VARCHAR(3) NOT NULL, -- номер группы
  нс    VARCHAR(2) NOT NULL, -- номер студента в группе
  фио   VARCHAR(15) NOT NULL, -- фио
  годр  INTEGER NULL, -- год рождения
  адрес VARCHAR(25) NULL,
  пбал  REAL NULL, -- проходной балл
  
  PRIMARY KEY (нг, нс)
);

CREATE TABLE if not EXISTS Кафедра (
  ккаф VARCHAR(2) UNIQUE NOT NULL, -- код кафедры
  нкаф VARCHAR(15) NULL, -- название
  тел  VARCHAR(9) NULL, -- телефон
  зав  VARCHAR(15) NULL, -- фио заведущего кафедры
  фото BLOB NULL -- фотография заведующего
);

CREATE TABLE if not EXISTS Преподаватель (
  табн VARCHAR(4) UNIQUE NOT NULL, -- таб. номер
  фио  VARCHAR(30) NOT NULL, -- фио преподователя
  ст   VARCHAR(15) NULL, -- ученое степень
  зв   VARCHAR(10) NULL, -- ученое звание
  ккаф VARCHAR(2) NOT NULL -- код кафедры
);

CREATE table if not EXISTS Предмет (
  кп    VARCHAR(2) NOT NULL UNIQUE, -- код предмета
  нп    VARCHAR(15) NULL,  -- название предмета 
  часы  INTEGER NULL, -- всего часов
  лек   INTEGER NULL, -- Лекции
  пр 	  INTEGER NULL, -- практика
  чс    INTEGER NULL, -- семестров
  прогр BLOB, --программа
  
  CONSTRAINT проверка_количества_часов -- Условие для столбца часы
  	CHECK (часы >= 0 and часы <= 300)
);

CREATE table if not EXISTS Изучение (
  нг      VARCHAR(3) NOT NULL, --номер группы
  кп      VARCHAR(2) NOT NULL, -- код предмета
  табн    VARCHAR(4) NOT NULL, -- таб. н. преподователя (Не знаю что ето значит, но наверное так надо)
  видз    VARCHAR(3) NOT NULL, -- вид занятий
  часы    INTEGER NULL,
  сбаллгр REAL, -- средний балл по предмету
  
  PRIMARY KEY (нг, кп, табн, видз)
);

CREATE table if not EXISTS Успеваемость (
  нг     VARCHAR(3) NOT NULL, --номер группы
  нс     VARCHAR(2) NOT NULL, -- номер студента
  кп     VARCHAR(2) NOT NULL, -- код предмета
  табн   VARCHAR(4) NOT NULL, -- таб. н. преподователя (Не знаю что ето значит, но наверное так надо)
  видз   VARCHAR(3) NOT NULL, -- вид занятий
  оценка INTEGER NULL,
  
  PRIMARY KEY (нг, нс, кп, табн)
);

