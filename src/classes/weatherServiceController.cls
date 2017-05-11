public class weatherServiceController {
public String city{get;set;}
public String country{get;set;}
public String message{get;set;}

public weatherServiceController (){
    WeatherServiceCall.GlobalWeatherSoap  test = new WeatherServiceCall.GlobalWeatherSoap();
}
public void getService(){
    WeatherServiceCall.GlobalWeatherSoap  test = new WeatherServiceCall.GlobalWeatherSoap();
    message = test.GetWeather(city,country);
}

}