SELECT name FROM instructor WHERE dept_name = 'Physics' ORDER BY name;

name   	ID	name   	dept_name	salary   	name	name	
Shuming	
Voronina	
19368	Wieland	Pol. Sci.	124651.41	
74420	Voronina	Physics	121141.99	
96895	Mird	Marketing	119921.41	
95709	Sakurai	English	118143.98	
90376	Bietzk	Cybernetics	117836.50	
34175	Bondi	Comp. Sci.	115469.11	
50330	Shuming	Physics	108011.81	
48507	Lent	Mech. Eng.	107978.47	
74426	Kenje	Marketing	106554.73	
6569	Mingoz	Finance	105311.38	
37687	Arias	Statistics	104563.38	
63287	Jaekel	Athletics	103146.87	
77346	Mahmoud	Geology	99382.59	
16807	Yazdi	Athletics	98333.65	
63395	McKinnon	Cybernetics	94333.99	
99052	Dale	Cybernetics	93348.83	
25946	Liley	Languages	90891.69	
73623	Sullivan	Elec. Eng.	90038.09	
79653	Levine	Elec. Eng.	89805.83	
4233	Luo	English	88791.45	
52647	Bancilhon	Pol. Sci.	87958.01	
48570	Sarkar	Pol. Sci.	87549.80	
28400	Atanassov	Statistics	84982.92	
3199	Gustafsson	Elec. Eng.	82534.37	
3335	Bourrier	Comp. Sci.	80797.83	
Yazdi	
Liley	
McKinnon	
Sullivan	
Mahmoud	
Dale	
Yazdi	
Liley	
McKinnon	
Sullivan	
Mahmoud	
Dale	

SELECT * FROM instructor ORDER BY salary DESC,name ASC;
SELECT name FROM instructor WHERE salary BETWEEN 90000 AND 100000;
SELECT name FROM instructor WHERE salary <= 100000 AND salary >=90000;
select name, course_id from instructor, teaches where instructor.ID= teaches.ID and dept_name = 'Biology';


name	course_id	
Queiroz	559	
Valtchev	415	
Valtchev	702	


SELECT name,course_id FROM instructor, teaches WHERE (instructor.ID,dept_name)=(teaches.ID,'Biology');


name	course_id	
Queiroz	559	
Valtchev	415	
Valtchev	702	

(select course_id from section where semester = 'Fall' and year= 2017) union all (select course_id from section where semester = 'Spring' and year= 2018);



select dept_name
from department
where building like '%a%';


dept_name	
Accounting	
Astronomy	
Athletics	
Biology	
Civil Eng.	
Comp. Sci.	
Elec. Eng.	
English	
Finance	
Geology	
History	
Languages	
Marketing	
Math	
Mech. Eng.	
Pol. Sci.	
Statistics	



select name, instructor.dept_name, building
from instructor, department
where instructor.dept_name= department.dept_name;


name	dept_name	building	
Lembr	Accounting	Saucon	
Moreira	Accounting	Saucon	
Hau	Accounting	Saucon	
Ullman 	Accounting	Saucon	
Romero	Astronomy	Taylor	
Bawa	Athletics	Bronfman	
Yazdi	Athletics	Bronfman	
Murata	Athletics	Bronfman	
Tung	Athletics	Bronfman	
Jaekel	Athletics	Bronfman	
Queiroz	Biology	Candlestick	
Valtchev	Biology	Candlestick	
Bourrier	Comp. Sci.	Lamberton	
Bondi	Comp. Sci.	Lamberton	
McKinnon	Cybernetics	Mercer	
Pimenta	Cybernetics	Mercer	
Bietzk	Cybernetics	Mercer	
Dale	Cybernetics	Mercer	
Gustafsson	Elec. Eng.	Main	
Vicentino	Elec. Eng.	Main	
Sullivan	Elec. Eng.	Main	
Levine	Elec. Eng.	Main	
Kean	English	Palmer	
Luo	English	Palmer	
Yin	English	Palmer	
Sakurai	English	Palmer	
Mingoz	Finance	Candlestick	
Mahmoud	Geology	Palmer	
Liley	Languages	Linderman	
Konstantinides	Languages	Linderman	
Desyl	Languages	Linderman	
Morris	Marketing	Lambeau	
Dusserre	Marketing	Lambeau	
Kenje	Marketing	Lambeau	
Mird	Marketing	Lambeau	
Lent	Mech. Eng.	Rauch	
Bertolino	Mech. Eng.	Rauch	
Shuming	Physics	Wrigley	
Voronina	Physics	Wrigley	
Wieland	Pol. Sci.	Whitman	
Sarkar	Pol. Sci.	Whitman	
Bancilhon	Pol. Sci.	Whitman	
DAgostino	Psychology	Thompson	
Soisalon-Soininen	Psychology	Thompson	
Atanassov	Statistics	Taylor	
Arias	Statistics	Taylor	
Gutierrez	Statistics	Taylor	
Pingr	Statistics	Taylor	
Choll	Statistics	Taylor	
Arinb	Statistics	Taylor	




SELECT T.name, S.course_id FROM instructor as T, teaches as S WHERE T.ID=S.ID;


name	course_id	
Lembr	200	
Lembr	843	
Bawa	457	
Wieland	545	
Wieland	581	
Wieland	591	
DAgostino	338	
DAgostino	338	
DAgostino	352	
DAgostino	400	
DAgostino	400	
DAgostino	482	
DAgostino	599	
DAgostino	642	
DAgostino	663	
DAgostino	867	
DAgostino	962	
DAgostino	972	
DAgostino	991	
Liley	192	
Kean	366	
Kean	808	
Atanassov	603	
Atanassov	604	
Gustafsson	169	
Gustafsson	169	
Gustafsson	561	
Gustafsson	631	
Bourrier	949	
Bourrier	960	
Bondi	274	
Bondi	571	
Bondi	747	
Morris	242	
Morris	313	
Morris	696	
Morris	791	
Morris	795	
Tung	401	
Tung	421	
Tung	692	
Luo	679	
Vicentino	793	
Romero	105	
Romero	105	
Romero	476	
Romero	489	
Lent	626	
Sarkar	867	
Shuming	468	
Jaekel	334	
Jaekel	852	
Mingoz	137	
Mingoz	304	
Mingoz	319	
Mingoz	349	
Mingoz	362	
Mingoz	362	
Mingoz	362	
Mingoz	426	
Mingoz	445	
Mingoz	527	
Pimenta	875	
Sullivan	694	
Voronina	239	
Voronina	376	
Voronina	443	
Voronina	443	
Voronina	612	
Voronina	959	
Mahmoud	486	
Mahmoud	493	
Mahmoud	704	
Mahmoud	735	
Mahmoud	735	
Mahmoud	864	
Ullman 	200	
Ullman 	345	
Ullman 	408	
Ullman 	408	
Ullman 	760	
Ullman 	974	
Queiroz	559	
Valtchev	415	
Valtchev	702	
Bietzk	158	
Choll	461	
Sakurai	258	
Sakurai	270	
Sakurai	468	
Sakurai	960	
Dale	158	
Dale	237	
Dale	237	
Dale	496	
Dale	629	
Dale	748	
Dale	802	
Dale	893	
Dale	927	





SELECT DISTINCT T.name FROM instructor as T, instructor as S WHERE T.salary>S.salary AND S.dept_name = 'Biology';


name	
Bawa	
Yazdi	
Wieland	
DAgostino	
Liley	
Atanassov	
Moreira	
Gustafsson	
Bourrier	
Bondi	
Soisalon-Soininen	
Arias	
Murata	
Tung	
Luo	
Romero	
Lent	
Sarkar	
Shuming	
Bancilhon	
Dusserre	
Desyl	
Jaekel	
McKinnon	
Mingoz	
Pimenta	
Yin	
Sullivan	
Voronina	
Kenje	
Mahmoud	
Pingr	
Ullman 	
Levine	
Valtchev	
Bietzk	
Choll	
Arinb	
Sakurai	
Mird	
Bertolino	
Dale	
