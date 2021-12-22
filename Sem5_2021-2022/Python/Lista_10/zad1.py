import pandas as pd
import matplotlib.pyplot as plt
from datetime import datetime, date

nagl_zakazenia = ["Dzień tyg", "Data", "Nowe przypadki", "Wszystkie przypadki", "Zgony", "Wszystkie zgony", "Ozdrowieńcy", "Wszyscy ozdrowieńcy", "Aktywne przypadki", "Kwarantanna", "Nazdzór"]
strconv = lambda x: str(x.replace(' ', ''))
zakazenia = pd.read_csv('zakazenia_fala.csv', encoding='utf-8', header=None, names=nagl_zakazenia, sep=';', converters= {"Nowe przypadki" : strconv})

nagl_klimat = ["Kod stacji", "Nazwa stacji", "Rok", "Miesiąc", "Dzień", "Max. temp", "Status TMAX", "Min. temp", "Status TMIN", "Średnia temp", "Status STD", "Min. temp grunt", "Status TMNG", "Suma opadów", "Status SMDB", "Rodzaj opadu", "Wysokość pokrywy śnieżnej", "Status PKSN"]
klimat = pd.read_csv('temperatura.csv', encoding='iso8859-2', header=None, names=nagl_klimat, parse_dates={ "Data" : ["Rok", "Miesiąc", "Dzień"]})

########################################################
# OKRES "II FALI ZACHOROWAŃ" (1.08.2020 - 30.11.2020)
########################################################

start_date = datetime(2020, 8, 1)
end_date = datetime(2020, 11, 30)
zakazenia["Data"] = pd.to_datetime(zakazenia["Data"], format="%d.%m.%Y")
zakazenia["Nowe przypadki"] = pd.to_numeric(zakazenia["Nowe przypadki"])
zakazenia_fala = zakazenia.loc[(zakazenia["Data"] <= end_date) & (zakazenia["Data"] >= start_date)]

klimat["Data"] = pd.to_datetime(klimat["Data"], format="%d.%m.%Y")
klimat_sr = klimat.groupby(["Data"])["Średnia temp"].mean()

fig = plt.figure()
ax1 = fig.add_subplot(211)
ax1.set_ylabel('Średnia temperatura [°C]')

ax2 = ax1.twinx()
ax2.set_ylabel('Nowe przypadki')

klimat_sr.plot(x="Data", y="Średnia temp", ax=ax1, color='tab:blue')
zakazenia_fala.plot(x="Data", y="Nowe przypadki", ax=ax2, color='tab:red')

########################################################
# OKRES PO III FALI ZACHOROWAŃ (1.04.2021 - 31.07.2021)
########################################################
nagl_zakazenia = ['ISO', 'Kontynent', 'Panstwo', 'Data', 'Wszystkie przypadki', 'Nowe przypadki', 'new_cases_smoothed', 'total_deaths', 'new_deaths', 'new_deaths_smoothed', 'total_cases_per_million', 'new_cases_per_million', 'new_cases_smoothed_per_million', 'total_deaths_per_million', 'new_deaths_per_million', 'new_deaths_smoothed_per_million', 'reproduction_rate', 'icu_patients', 'icu_patients_per_million', 'hosp_patients', 'hosp_patients_per_million', 'weekly_icu_admissions', 'weekly_icu_admissions_per_million', 'weekly_hosp_admissions', 'weekly_hosp_admissions_per_million', 'new_tests', 'total_tests', 'total_tests_per_thousand', 'new_tests_per_thousand', 'new_tests_smoothed', 'new_tests_smoothed_per_thousand', 'positive_rate', 'tests_per_case', 'tests_units', 'total_vaccinations', 'people_vaccinated', 'people_fully_vaccinated', 'total_boosters', 'new_vaccinations', 'new_vaccinations_smoothed', 'total_vaccinations_per_hundred', 'people_vaccinated_per_hundred', 'people_fully_vaccinated_per_hundred', 'total_boosters_per_hundred', 'new_vaccinations_smoothed_per_million', 'new_people_vaccinated_smoothed', 'new_people_vaccinated_smoothed_per_hundred', 'stringency_index', 'population', 'population_density', 'median_age', 'aged_65_older', 'aged_70_older', 'gdp_per_capita', 'extreme_poverty', 'cardiovasc_death_rate', 'diabetes_prevalence', 'female_smokers', 'male_smokers', 'handwashing_facilities', 'hospital_beds_per_thousand', 'life_expectancy', 'human_development_index', 'excess_mortality_cumulative_absolute', 'excess_mortality_cumulative', 'excess_mortality', 'excess_mortality_cumulative_per_million']
zakazenia = pd.read_csv('zakazenia_po_fali.csv', header=None, names=nagl_zakazenia, sep=',')

nagl_klimat = ["Kod stacji", "Nazwa stacji", "Rok", "Miesiąc", "Dzień", "Max. temp", "Status TMAX", "Min. temp", "Status TMIN", "Średnia temp", "Status STD", "Min. temp grunt", "Status TMNG", "Suma opadów", "Status SMDB", "Rodzaj opadu", "Wysokość pokrywy śnieżnej", "Status PKSN"]
klimat = pd.read_csv('temperatura_po_fali.csv', encoding='iso8859-2', header=None, names=nagl_klimat, parse_dates={ "Data" : ["Rok", "Miesiąc", "Dzień"]})

start_date = datetime(2021, 4, 1)
end_date = datetime(2021, 7, 31)
zakazenia["Data"] = pd.to_datetime(zakazenia["Data"], format="%Y-%m-%d")
zakazenia_fala = zakazenia.loc[(zakazenia["Data"] <= end_date) & (zakazenia["Data"] >= start_date)]

klimat["Data"] = pd.to_datetime(klimat["Data"], format="%d.%m.%Y")
klimat_sr = klimat.groupby(["Data"])["Średnia temp"].mean()

ax3 = fig.add_subplot(212)
ax3.set_ylabel('Średnia temperatura [°C]')

ax4 = ax3.twinx()
ax4.set_ylabel('Nowe przypadki')

klimat_sr.plot(x="Data", y="Średnia temp", ax=ax3, color='tab:blue')
zakazenia_fala.plot(x="Data", y="Nowe przypadki", ax=ax4, color='tab:red')

plt.show()