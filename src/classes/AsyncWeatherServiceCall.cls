//Generated by wsdl2apex

public class AsyncWeatherServiceCall {
    public class GetCitiesByCountryResponse_elementFuture extends System.WebServiceCalloutFuture {
        public String getValue() {
            WeatherServiceCall.GetCitiesByCountryResponse_element response = (WeatherServiceCall.GetCitiesByCountryResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.GetCitiesByCountryResult;
        }
    }
    public class GetWeatherResponse_elementFuture extends System.WebServiceCalloutFuture {
        public String getValue() {
            WeatherServiceCall.GetWeatherResponse_element response = (WeatherServiceCall.GetWeatherResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.GetWeatherResult;
        }
    }
    public class AsyncGlobalWeatherSoap {
        public String endpoint_x = 'http://www.webservicex.com/globalweather.asmx';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://www.webserviceX.NET', 'WeatherServiceCall'};
        public AsyncWeatherServiceCall.GetCitiesByCountryResponse_elementFuture beginGetCitiesByCountry(System.Continuation continuation,String CountryName) {
            WeatherServiceCall.GetCitiesByCountry_element request_x = new WeatherServiceCall.GetCitiesByCountry_element();
            request_x.CountryName = CountryName;
            return (AsyncWeatherServiceCall.GetCitiesByCountryResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncWeatherServiceCall.GetCitiesByCountryResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://www.webserviceX.NET/GetCitiesByCountry',
              'http://www.webserviceX.NET',
              'GetCitiesByCountry',
              'http://www.webserviceX.NET',
              'GetCitiesByCountryResponse',
              'WeatherServiceCall.GetCitiesByCountryResponse_element'}
            );
        }
        public AsyncWeatherServiceCall.GetWeatherResponse_elementFuture beginGetWeather(System.Continuation continuation,String CityName,String CountryName) {
            WeatherServiceCall.GetWeather_element request_x = new WeatherServiceCall.GetWeather_element();
            request_x.CityName = CityName;
            request_x.CountryName = CountryName;
            return (AsyncWeatherServiceCall.GetWeatherResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncWeatherServiceCall.GetWeatherResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              'http://www.webserviceX.NET/GetWeather',
              'http://www.webserviceX.NET',
              'GetWeather',
              'http://www.webserviceX.NET',
              'GetWeatherResponse',
              'WeatherServiceCall.GetWeatherResponse_element'}
            );
        }
    }
}