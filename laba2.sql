CREATE TABLE if not EXISTS Группа (
  нг    varchar(3) UNIQUE PRIMARY Key NOT NULL, -- номер группы
  кол   integer NULL, -- количество студентов в группе
  пбалл REAL NULL,  -- проходной балл
  
  CONSTRAINT проверка_количества -- Условие для столбца кол
  	CHECK (кол >= 0 and кол <= 35),
  
  CONSTRAINT проверка_проходного_балла -- Условие для столбца пбалл
  	CHECK ((пбалл > 2 and пбалл < 5) or пбалл = 2)
);

CREATE table if not EXISTS Студент (
  нг    varchar(3) unique NOT NULL, -- номер группы
  нс    varchar(2) NOT NULL, -- номер студента в группе
  фио   varchar(15) NOT NULL, -- фио
  годр  integer NULL, -- год рождения
  адрес varchar(25) NULL,
  пбал  real NULL, -- проходной балл
  
  PRIMARY KEY (нг, нс)
);

CREATE TABLE if not EXISTS Кафедра (
  ккаф Varchar(2)UNIQUE NOT NULL, -- код кафедры
  нкаф varchar(15) NULL, -- название
  тел  varchar(9) NULL, -- телефон
  зав  varchar(15) NULL, -- фио заведущего кафедры
  фото blob NULL -- фотография заведующего
);

CREATE TABLE if not EXISTS Преподаватель (
  табн varchar(4) UNIQUE NOT NULL, -- таб. номер
  фио  varchar(30) NOT NULL, -- фио преподователя
  ст   varchar(15) NULL, -- ученое степень
  зв   varchar(10) NULL, -- ученое звание
  ккаф varchar(2) NOT NULL -- код кафедры
);

CREATE table if not EXISTS Предмет (
  кп    varchar(2) NOT NULL UNIQUE, -- код предмета
  нп    varchar(15) NULL,  -- название предмета 
  часы  integer NULL, -- всего часов
  лек   integer NULL, -- Лекции
  пр 	  integer NULL, -- практика
  чс    integer NULL, -- семестров
  прогр blob, --программа
  
  CONSTRAINT проверка_количества_часов -- Условие для столбца часы
  	CHECK (часы >= 0 and часы <= 300)
);

CREATE table if not EXISTS Изучение (
  нг      Varchar(3) NOT NULL, --номер группы
  кп      Varchar(2) NOT NULL, -- код предмета
  табн    Varchar(4) NOT NULL, -- таб. н. преподователя (Не знаю что ето значит, но наверное так надо)
  видз    Varchar(3) NOT NULL, -- вид занятий
  часы    integer NULL,
  сбаллгр real, -- средний балл по предмету
  
  PRIMARY KEY (нг, кп, табн, видз)
);

CREATE table if not EXISTS Успеваемость (
  нг     Varchar(3) NOT NULL, --номер группы
  нс     Varchar(2) NOT NULL, -- номер студента
  кп     Varchar(2) NOT NULL, -- код предмета
  табн   Varchar(4) NOT NULL, -- таб. н. преподователя (Не знаю что ето значит, но наверное так надо)
  видз   Varchar(3) NOT NULL, -- вид занятий
  оценка INTEGER NULL,
  
  PRIMARY KEY (нг, нс, кп, табн, видз)
);

