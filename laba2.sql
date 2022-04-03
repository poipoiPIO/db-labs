-- DB made for sqlite3
CREATE TABLE if not EXISTS Группа (
  нг    varchar(3) UNIQUE PRIMARY Key NOTNULL, -- номер группы
  кол   integer NULL, -- количество студентов в группе
  пбалл REAL NULL,  -- проходной балл
  
  CONSTRAINT проверка_количества -- Условие для столбца кол
  	CHECK (кол >= 0 and кол <= 35),
  
  CONSTRAINT проверка_проходного_балла -- Условие для столбца пбалл
  	CHECK (((пбалл > 2) and (пбалл < 5)) or (пбалл = 2))
);

CREATE table if EXISTS Студент (
  нг    varchar(3) PRIMARY key unique NOTNULL, -- номер группы
  нс    varchar(2) PRIMARY key NOTNULL, -- номер студента в группе
  фио   varchar(15) NOTNULL, -- фио
  годр  integer NULL, -- год рождения
  адрес varchar(25) NULL,
  пбал  real NULL -- проходной балл
);

CREATE TABLE if EXISTS Кафедра (
  ккаф Varchar(2) PRIMARY key UNIQUE NOTNULL, -- код кафедры
  нкаф varchar(15) NULL, -- название
  тел  varchar(9) NULL, -- телефон
  зав  varchar(15) NULL, -- фио заведущего кафедры
  фото blob NULL -- фотография заведующего
);

CREATE TABLE if EXISTS Преподаватель (
  табн varchar(4) PRIMARY KEY UNIQUE NOTNULL, -- таб. номер
  фио  varchar(30) NOTNULL, -- фио преподователя
  ст   varchar(15) NULL, -- ученое степень
  зв   varchar(10) NULL, -- ученое звание
  ккаф varchar(2) NOTNULL -- код кафедры
);

CREATE table if not EXISTS Предмет (
  кп    varchar(2) PRIMARY key NOTNULL UNIQUE, -- код предмета
  нп    varchar(15) NULL,  -- название предмета 
  часы  integer NULL, -- всего часов
  лек   integer NULL, -- Лекции
  пр 	integer NULL, -- практика
  чс    integer NULL, -- семестров
  прогр blob, --программа
  
  CONSTRAINT проверка_количества_часов -- Условие для столбца часы
  	CHECK (кол >= 0 and кол <= 300),
);

CREATE table if EXISTS Изучение (
  нг      Varchar(3) PRIMARY key NOTNULl, --номер группы
  кп      Varchar(2) PRIMARY key NOTNULl, -- код предмета
  табн    Varchar(4) PRIMARY key NOTNULl, -- таб. н. преподователя (Не знаю что ето значит, но наверное так надо)
  видз    Varchar(3) PRIMARY key NOTNULl, -- вид занятий
  часы    integer NULL,
  сбаллгр real, -- средний балл по предмету
);

CREATE table if EXISTS Успеваемость (
  нг     Varchar(3) PRIMARY key NOTNULl, --номер группы
  нс     Varchar(2) PRIMARY key NOTNULl, -- номер студента
  кп     Varchar(2) PRIMARY key NOTNULl, -- код предмета
  табн   Varchar(4) PRIMARY key NOTNULl, -- таб. н. преподователя (Не знаю что ето значит, но наверное так надо)
  видз   Varchar(3) PRIMARY key NOTNULl, -- вид занятий
  оценка INTEGER NULL
);

