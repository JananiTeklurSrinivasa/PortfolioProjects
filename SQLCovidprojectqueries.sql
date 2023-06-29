--Select * 
--from PortfolioProject..CovidVaccinations
--order by 3,4;

Select * 
from PortfolioProject..CovidDeaths
where continent is not null
order by 3,4;


Select location,date,total_cases,new_cases,total_deaths,population
from PortfolioProject..CovidDeaths
order by 1,2

--Total Cases Vs Total deaths
--Likelyhood of dying if you get covid
Select location,date,total_cases,total_deaths, (total_deaths*100)/total_cases AS deathPercentage
from PortfolioProject..CovidDeaths
where location like '%states%'
order by 1,2

--Total cases Vs Population
--Shows what population has got covid
Select location,date,population,total_cases, ROUND((total_cases/population)*100,4)AS PercentPopulationInfected
from PortfolioProject..CovidDeaths
--where location like '%states%'
order by 1,2

--Countries with highest infection rate compared to population
Select location, population, MAX(total_cases) AS Highest_infection_count, MAX((total_cases/population))*100 AS PercentPopulationInfected
from PortfolioProject..CovidDeaths
GROUP BY location,population
order by PercentPopulationInfected desc;

--Showing countries with Highest death count
Select location,MAX(cast(total_deaths AS INT)) as TotalDeathCount
from PortfolioProject..CovidDeaths
where continent is not null
Group By location
Order by TotalDeathCount desc;

--Breaking things down by continent

--Showing continents with highest death count

Select continent,MAX(cast(total_deaths AS INT)) as TotalDeathCount
from PortfolioProject..CovidDeaths
where continent is not  null
Group By continent
Order by TotalDeathCount desc;

--Global numbers
Select SUM(new_Cases) as total_Cases,
SUM(CAST(new_deaths AS int)) as total_deaths,
(SUM(CAST(new_deaths AS int))/SUM(new_Cases))*100 deathPercentage
from PortfolioProject..CovidDeaths
--where location like '%states%' 
where continent is not null
--group by date
order by 1,2


--Looking at total population Vs Total vaccinated location wise 
--Using CTE
WITH PopVsVAC(Continent, Location,date,population,new_vaccinations, Running_total_vaccination)
AS(
select dea.continent,
dea.location,
dea.date,
dea.population,
vac.new_vaccinations,
SUM(CAST(vac.new_vaccinations AS int)) OVER(PARTITION BY dea.Location Order by dea.Location, 
dea.date) AS Running_total_vaccination
from PortfolioProject..CovidDeaths dea
join PortfolioProject..CovidVaccinations vac
on dea.location = vac.location and dea.date = vac.date
where dea.continent is not null
--order by 2,3
)

Select *, (Running_total_vaccination/population)*100  from PopVsVAC;


--TEMP Table

DROP Table if exists #PercentPopulationVaccinated
Create Table #PercentPopulationVaccinated
(
Continent nvarchar(255),
Location nvarchar(255),
Date Datetime,
Population numeric,
New_Vaccinations numeric,
Running_total_vaccinated numeric
)
Insert into #PercentPopulationVaccinated
select dea.continent,
dea.location,
dea.date,
dea.population,
vac.new_vaccinations,
SUM(CAST(vac.new_vaccinations AS int)) OVER(PARTITION BY dea.Location Order by dea.Location, 
dea.date) AS Running_total_vaccination
from PortfolioProject..CovidDeaths dea
join PortfolioProject..CovidVaccinations vac
on dea.location = vac.location and dea.date = vac.date
where dea.continent is not null


Select *, (Running_total_vaccinated/population)*100  from #PercentPopulationVaccinated;

--Creating VIEW to store data for later visualization
CREATE VIEW Percent_Population_Vaccinated AS

select dea.continent,
dea.location,
dea.date,
dea.population,
vac.new_vaccinations,
SUM(CAST(vac.new_vaccinations AS int)) OVER(PARTITION BY dea.Location Order by dea.Location, 
dea.date) AS Running_total_vaccination
from PortfolioProject..CovidDeaths dea
join PortfolioProject..CovidVaccinations vac
on dea.location = vac.location and dea.date = vac.date
where dea.continent is not null
--order by 2,3

SELECT * from Percent_Population_Vaccinated


