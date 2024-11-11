# Analizator wyników
## 1. Klonowanie repozytorium
Aby sklonować repozytorium, należy wpisać w CMD:
```
git clone https://github.com/PiotrNowickii/ASI_LAB_4.git
```
lub wykorzystać aplikację GitHub Desktop
## 2. Uruchomienie aplikacji lokalnie
1. Przechodzimy do folderu z aplikacją
```
cd ASI_LAB_4
```
2. Instalujemy wymagane zależności
```
pip install -r requirements.txt
```
3. Trenujemy model
```
python s24667.py
```
4. Uruchamiamy aplikację
```
python app.py
```
5. W celu przetestowania modelu, w CMD wpisujemy:  
```
curl -X POST http://localhost:5000/predict -H "Content-Type: application/json" -d "{\"gender\": \"male\", \"ethnicity\": \"other\", \"fcollege\": 39.150001525878906, \"mcollege\": \"yes\", \"home\": \"no\", \"urban\": \"yes\", \"unemp\": 6.199999809265137, \"wage\": 8.09000015258789, \"distance\": 0.20000000298023224, \"tuition\": 0.8891500234603882, \"education\": 12, \"income\": \"high\", \"region\": \"other\"}"
```
## 3. Uruchomienie aplikacji z wykorzystaniem dockera
1. Budujemy obraz dockera
```
docker build  -t asi_lab_4
```
2. Uruchamiamy kontener
```
docker run -p 5000:5000 asi_lab_4
```
3. W celu przetestowania modelu, ponownie w CMD wpisujemy:  
```
curl -X POST http://localhost:5000/predict -H "Content-Type: application/json" -d "{\"gender\": \"male\", \"ethnicity\": \"other\", \"fcollege\": 39.150001525878906, \"mcollege\": \"yes\", \"home\": \"no\", \"urban\": \"yes\", \"unemp\": 6.199999809265137, \"wage\": 8.09000015258789, \"distance\": 0.20000000298023224, \"tuition\": 0.8891500234603882, \"education\": 12, \"income\": \"high\", \"region\": \"other\"}"
```
## 4. Korzystanie z obrazu Docker z Docker Huba
1. Logujemy się do dockera
```
docker login
```
2. Pobieramy obraz dockera
```
docker pull s24667/asi_lab_4:v1
```
3. Uruchamiamy kontener
```
docker run -p 5000:5000 s24667/asi_lab_4:v1
```
4. W celu przetestowania modelu, ponownie w CMD wpisujemy:  
```
curl -X POST http://localhost:5000/predict -H "Content-Type: application/json" -d "{\"gender\": \"male\", \"ethnicity\": \"other\", \"fcollege\": 39.150001525878906, \"mcollege\": \"yes\", \"home\": \"no\", \"urban\": \"yes\", \"unemp\": 6.199999809265137, \"wage\": 8.09000015258789, \"distance\": 0.20000000298023224, \"tuition\": 0.8891500234603882, \"education\": 12, \"income\": \"high\", \"region\": \"other\"}"
```
