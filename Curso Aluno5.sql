--------AVG Retrona a m�dia dos valores em um grupo --- os nulos s�o ignorados---

select * from senso; 


SELECT AVG(ID_PACIENTE) AS M�DIA FROM PACIENTES
WHERE DT_ENTRADA='2021';


select estado,avg(populacao) from senso
where ano='2014'
group by estado
order by 2 desc;

select estado,avg(populacao) from senso
where ano='2013'
group by estado
order by 2 desc;


ALTER USER SYSTEM IDENTIFIED By oracle123;
ALTER USER ALUNO IDENTIFIED By oracle123;