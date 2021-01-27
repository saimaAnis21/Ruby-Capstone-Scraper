# Covid-19 Latest Stats Scraper
A website scraper which collects data regarding the latest data on COvid-19 deaths, from the website
[Worldometer](https://www.worldometers.info/coronavirus/coronavirus-death-toll/) and saves it in a csv file.
Built for the Ruby Capstone project in the Microverse curriculum.
![](https://img.shields.io/badge/Microverse-blueviolet)

This project includes the following features:

- Scrapes the [Worldometer](https://www.worldometers.info/coronavirus/coronavirus-death-toll/) Website
- Collects the latest data on the Covid-19 death toll
- Displays the data categorically in a CSV file

## Built With

![Ruby](https://www.vectorlogo.zone/logos/ruby-lang/ruby-lang-horizontal.svg)
- Visual Studio Code
- Tested with Rspec
- Gems used: nokogiri, csv

## Getting Started

- Clone the project to your local machine (Using git clone https://github.com/saimaAnis21/Ruby-Capstone-Scraper.git <local-location-path>). The project folder will appear on the mentioned path.
- Install the above mentioned gems by opening the Terminal on your desktop and running the following   commands.
  - gem install nokogiri
  - gem install csv  
- Open the terminal, cd into the project directory and run the command (ruby bin/main.rb)
- The program will ask you to input the past no. of days for which you need the data.
- It will then pull your required data into a csv file, found inside the bin folder of your project directory.
- You can use the data.csv file and easily convert it to an excel file and use it as a data source for making charts.
-![win](ruby-shot-2)
## Author

👤 **Saima**

- GitHub: [@saimaAnis21](https://github.com/saimaAnis21)
- Twitter: [@SheTALKS](https://twitter.com/SheTALKS6)
- LinkedIn: [Saima Anis](https://www.linkedin.com/in/saima-anis-3a07921b2/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!


## Show your support

Give a ⭐️ if you like this project!

## 📝 License

Copyright 2020 Saima Anis

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.