//
//  DailyWeatherData.swift
//  WeatherTestSwiftUITests
//
//  Created by Jack Vanderpump on 07/07/2022.
//

import Foundation

struct TestData {
    
    static let dialyWeather = """
{
    "type": "FeatureCollection",
    "features": [
        {
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    0.003,
                    51.503,
                    5.0
                ]
            },
            "properties": {
                "requestPointDistance": 1166.9907,
                "modelRunDate": "2022-07-07T21:00Z",
                "timeSeries": [
                    {
                        "time": "2022-07-06T00:00Z",
                        "midnight10MWindSpeed": 5.81,
                        "midnight10MWindDirection": 280,
                        "midnight10MWindGust": 8.23,
                        "midnightVisibility": 26842,
                        "midnightRelativeHumidity": 69.37,
                        "midnightMslp": 102440,
                        "nightSignificantWeatherCode": 2,
                        "nightMinScreenTemperature": 17.46,
                        "nightUpperBoundMinTemp": 18.0,
                        "nightLowerBoundMinTemp": 15.13,
                        "nightMinFeelsLikeTemp": 15.39,
                        "nightUpperBoundMinFeelsLikeTemp": 16.16,
                        "nightLowerBoundMinFeelsLikeTemp": 14.09,
                        "nightProbabilityOfPrecipitation": 9,
                        "nightProbabilityOfSnow": 0,
                        "nightProbabilityOfHeavySnow": 0,
                        "nightProbabilityOfRain": 9,
                        "nightProbabilityOfHeavyRain": 0,
                        "nightProbabilityOfHail": 0,
                        "nightProbabilityOfSferics": 0
                    },
                    {
                        "time": "2022-07-07T00:00Z",
                        "midday10MWindSpeed": 3.96,
                        "midnight10MWindSpeed": 0.55,
                        "midday10MWindDirection": 359,
                        "midnight10MWindDirection": 147,
                        "midday10MWindGust": 6.69,
                        "midnight10MWindGust": 2.18,
                        "middayVisibility": 24294,
                        "midnightVisibility": 11498,
                        "middayRelativeHumidity": 55.4,
                        "midnightRelativeHumidity": 64.32,
                        "middayMslp": 102990,
                        "midnightMslp": 103190,
                        "maxUvIndex": 1,
                        "daySignificantWeatherCode": 1,
                        "nightSignificantWeatherCode": 0,
                        "dayMaxScreenTemperature": 24.45,
                        "nightMinScreenTemperature": 16.89,
                        "dayUpperBoundMaxTemp": 26.15,
                        "nightUpperBoundMinTemp": 17.83,
                        "dayLowerBoundMaxTemp": 21.77,
                        "nightLowerBoundMinTemp": 14.38,
                        "dayMaxFeelsLikeTemp": 23.3,
                        "nightMinFeelsLikeTemp": 16.95,
                        "dayUpperBoundMaxFeelsLikeTemp": 24.43,
                        "nightUpperBoundMinFeelsLikeTemp": 17.13,
                        "dayLowerBoundMaxFeelsLikeTemp": 21.33,
                        "nightLowerBoundMinFeelsLikeTemp": 15.21,
                        "dayProbabilityOfPrecipitation": 0,
                        "nightProbabilityOfPrecipitation": 0,
                        "dayProbabilityOfSnow": 0,
                        "nightProbabilityOfSnow": 0,
                        "dayProbabilityOfHeavySnow": 0,
                        "nightProbabilityOfHeavySnow": 0,
                        "dayProbabilityOfRain": 0,
                        "nightProbabilityOfRain": 0,
                        "dayProbabilityOfHeavyRain": 0,
                        "nightProbabilityOfHeavyRain": 0,
                        "dayProbabilityOfHail": 0,
                        "nightProbabilityOfHail": 0,
                        "dayProbabilityOfSferics": 0,
                        "nightProbabilityOfSferics": 0
                    },
                    {
                        "time": "2022-07-08T00:00Z",
                        "midday10MWindSpeed": 2.49,
                        "midnight10MWindSpeed": 3.85,
                        "midday10MWindDirection": 306,
                        "midnight10MWindDirection": 341,
                        "midday10MWindGust": 4.74,
                        "midnight10MWindGust": 7.05,
                        "middayVisibility": 25732,
                        "midnightVisibility": 27531,
                        "middayRelativeHumidity": 43.89,
                        "midnightRelativeHumidity": 59.97,
                        "middayMslp": 103190,
                        "midnightMslp": 103033,
                        "maxUvIndex": 8,
                        "daySignificantWeatherCode": 1,
                        "nightSignificantWeatherCode": 0,
                        "dayMaxScreenTemperature": 27.75,
                        "nightMinScreenTemperature": 16.45,
                        "dayUpperBoundMaxTemp": 29.05,
                        "nightUpperBoundMinTemp": 17.76,
                        "dayLowerBoundMaxTemp": 25.1,
                        "nightLowerBoundMinTemp": 14.6,
                        "dayMaxFeelsLikeTemp": 26.13,
                        "nightMinFeelsLikeTemp": 15.74,
                        "dayUpperBoundMaxFeelsLikeTemp": 27.64,
                        "nightUpperBoundMinFeelsLikeTemp": 16.59,
                        "dayLowerBoundMaxFeelsLikeTemp": 25.57,
                        "nightLowerBoundMinFeelsLikeTemp": 14.74,
                        "dayProbabilityOfPrecipitation": 0,
                        "nightProbabilityOfPrecipitation": 1,
                        "dayProbabilityOfSnow": 0,
                        "nightProbabilityOfSnow": 0,
                        "dayProbabilityOfHeavySnow": 0,
                        "nightProbabilityOfHeavySnow": 0,
                        "dayProbabilityOfRain": 0,
                        "nightProbabilityOfRain": 1,
                        "dayProbabilityOfHeavyRain": 0,
                        "nightProbabilityOfHeavyRain": 0,
                        "dayProbabilityOfHail": 0,
                        "nightProbabilityOfHail": 0,
                        "dayProbabilityOfSferics": 0,
                        "nightProbabilityOfSferics": 0
                    },
                    {
                        "time": "2022-07-09T00:00Z",
                        "midday10MWindSpeed": 3.59,
                        "midnight10MWindSpeed": 1.74,
                        "midday10MWindDirection": 336,
                        "midnight10MWindDirection": 132,
                        "midday10MWindGust": 7.19,
                        "midnight10MWindGust": 3.02,
                        "middayVisibility": 31967,
                        "midnightVisibility": 28103,
                        "middayRelativeHumidity": 38.25,
                        "midnightRelativeHumidity": 76.08,
                        "middayMslp": 102990,
                        "midnightMslp": 102988,
                        "maxUvIndex": 8,
                        "daySignificantWeatherCode": 1,
                        "nightSignificantWeatherCode": 0,
                        "dayMaxScreenTemperature": 25.15,
                        "nightMinScreenTemperature": 14.68,
                        "dayUpperBoundMaxTemp": 26.63,
                        "nightUpperBoundMinTemp": 17.54,
                        "dayLowerBoundMaxTemp": 22.62,
                        "nightLowerBoundMinTemp": 12.8,
                        "dayMaxFeelsLikeTemp": 22.76,
                        "nightMinFeelsLikeTemp": 15.61,
                        "dayUpperBoundMaxFeelsLikeTemp": 24.21,
                        "nightUpperBoundMinFeelsLikeTemp": 17.57,
                        "dayLowerBoundMaxFeelsLikeTemp": 21.97,
                        "nightLowerBoundMinFeelsLikeTemp": 12.59,
                        "dayProbabilityOfPrecipitation": 3,
                        "nightProbabilityOfPrecipitation": 0,
                        "dayProbabilityOfSnow": 0,
                        "nightProbabilityOfSnow": 0,
                        "dayProbabilityOfHeavySnow": 0,
                        "nightProbabilityOfHeavySnow": 0,
                        "dayProbabilityOfRain": 3,
                        "nightProbabilityOfRain": 0,
                        "dayProbabilityOfHeavyRain": 0,
                        "nightProbabilityOfHeavyRain": 0,
                        "dayProbabilityOfHail": 0,
                        "nightProbabilityOfHail": 0,
                        "dayProbabilityOfSferics": 0,
                        "nightProbabilityOfSferics": 0
                    },
                    {
                        "time": "2022-07-10T00:00Z",
                        "midday10MWindSpeed": 1.79,
                        "midnight10MWindSpeed": 2.16,
                        "midday10MWindDirection": 286,
                        "midnight10MWindDirection": 190,
                        "midday10MWindGust": 5.56,
                        "midnight10MWindGust": 4.3,
                        "middayVisibility": 34191,
                        "midnightVisibility": 31445,
                        "middayRelativeHumidity": 44.05,
                        "midnightRelativeHumidity": 65.43,
                        "middayMslp": 102802,
                        "midnightMslp": 102576,
                        "maxUvIndex": 7,
                        "daySignificantWeatherCode": 1,
                        "nightSignificantWeatherCode": 0,
                        "dayMaxScreenTemperature": 26.47,
                        "nightMinScreenTemperature": 16.39,
                        "dayUpperBoundMaxTemp": 27.5,
                        "nightUpperBoundMinTemp": 20.86,
                        "dayLowerBoundMaxTemp": 22.26,
                        "nightLowerBoundMinTemp": 13.87,
                        "dayMaxFeelsLikeTemp": 25.92,
                        "nightMinFeelsLikeTemp": 17.18,
                        "dayUpperBoundMaxFeelsLikeTemp": 27.31,
                        "nightUpperBoundMinFeelsLikeTemp": 21.65,
                        "dayLowerBoundMaxFeelsLikeTemp": 21.13,
                        "nightLowerBoundMinFeelsLikeTemp": 13.99,
                        "dayProbabilityOfPrecipitation": 1,
                        "nightProbabilityOfPrecipitation": 1,
                        "dayProbabilityOfSnow": 0,
                        "nightProbabilityOfSnow": 0,
                        "dayProbabilityOfHeavySnow": 0,
                        "nightProbabilityOfHeavySnow": 0,
                        "dayProbabilityOfRain": 1,
                        "nightProbabilityOfRain": 1,
                        "dayProbabilityOfHeavyRain": 1,
                        "nightProbabilityOfHeavyRain": 1,
                        "dayProbabilityOfHail": 0,
                        "nightProbabilityOfHail": 0,
                        "dayProbabilityOfSferics": 0,
                        "nightProbabilityOfSferics": 0
                    },
                    {
                        "time": "2022-07-11T00:00Z",
                        "midday10MWindSpeed": 1.17,
                        "midnight10MWindSpeed": 2.05,
                        "midday10MWindDirection": 54,
                        "midnight10MWindDirection": 142,
                        "midday10MWindGust": 4.83,
                        "midnight10MWindGust": 4.13,
                        "middayVisibility": 37519,
                        "midnightVisibility": 31963,
                        "middayRelativeHumidity": 41.67,
                        "midnightRelativeHumidity": 64.75,
                        "middayMslp": 102566,
                        "midnightMslp": 102567,
                        "maxUvIndex": 8,
                        "daySignificantWeatherCode": 1,
                        "nightSignificantWeatherCode": 0,
                        "dayMaxScreenTemperature": 28.48,
                        "nightMinScreenTemperature": 16.93,
                        "dayUpperBoundMaxTemp": 30.19,
                        "nightUpperBoundMinTemp": 22.18,
                        "dayLowerBoundMaxTemp": 22.84,
                        "nightLowerBoundMinTemp": 14.03,
                        "dayMaxFeelsLikeTemp": 28.05,
                        "nightMinFeelsLikeTemp": 18.5,
                        "dayUpperBoundMaxFeelsLikeTemp": 29.07,
                        "nightUpperBoundMinFeelsLikeTemp": 22.05,
                        "dayLowerBoundMaxFeelsLikeTemp": 19.88,
                        "nightLowerBoundMinFeelsLikeTemp": 14.12,
                        "dayProbabilityOfPrecipitation": 2,
                        "nightProbabilityOfPrecipitation": 1,
                        "dayProbabilityOfSnow": 0,
                        "nightProbabilityOfSnow": 0,
                        "dayProbabilityOfHeavySnow": 0,
                        "nightProbabilityOfHeavySnow": 0,
                        "dayProbabilityOfRain": 2,
                        "nightProbabilityOfRain": 1,
                        "dayProbabilityOfHeavyRain": 1,
                        "nightProbabilityOfHeavyRain": 0,
                        "dayProbabilityOfHail": 0,
                        "nightProbabilityOfHail": 0,
                        "dayProbabilityOfSferics": 0,
                        "nightProbabilityOfSferics": 0
                    },
                    {
                        "time": "2022-07-12T00:00Z",
                        "midday10MWindSpeed": 2.62,
                        "midnight10MWindSpeed": 2.65,
                        "midday10MWindDirection": 162,
                        "midnight10MWindDirection": 194,
                        "midday10MWindGust": 6.84,
                        "midnight10MWindGust": 5.07,
                        "middayVisibility": 37000,
                        "midnightVisibility": 33385,
                        "middayRelativeHumidity": 41.89,
                        "midnightRelativeHumidity": 54.88,
                        "middayMslp": 102587,
                        "midnightMslp": 102444,
                        "maxUvIndex": 7,
                        "daySignificantWeatherCode": 1,
                        "nightSignificantWeatherCode": 0,
                        "dayMaxScreenTemperature": 29.17,
                        "nightMinScreenTemperature": 19.59,
                        "dayUpperBoundMaxTemp": 31.37,
                        "nightUpperBoundMinTemp": 23.34,
                        "dayLowerBoundMaxTemp": 23.49,
                        "nightLowerBoundMinTemp": 15.21,
                        "dayMaxFeelsLikeTemp": 27.73,
                        "nightMinFeelsLikeTemp": 19.64,
                        "dayUpperBoundMaxFeelsLikeTemp": 30.77,
                        "nightUpperBoundMinFeelsLikeTemp": 24.32,
                        "dayLowerBoundMaxFeelsLikeTemp": 23.32,
                        "nightLowerBoundMinFeelsLikeTemp": 15.52,
                        "dayProbabilityOfPrecipitation": 2,
                        "nightProbabilityOfPrecipitation": 1,
                        "dayProbabilityOfSnow": 0,
                        "nightProbabilityOfSnow": 0,
                        "dayProbabilityOfHeavySnow": 0,
                        "nightProbabilityOfHeavySnow": 0,
                        "dayProbabilityOfRain": 2,
                        "nightProbabilityOfRain": 1,
                        "dayProbabilityOfHeavyRain": 0,
                        "nightProbabilityOfHeavyRain": 0,
                        "dayProbabilityOfHail": 0,
                        "nightProbabilityOfHail": 0,
                        "dayProbabilityOfSferics": 0,
                        "nightProbabilityOfSferics": 0
                    },
                    {
                        "time": "2022-07-13T00:00Z",
                        "midday10MWindSpeed": 2.93,
                        "midnight10MWindSpeed": 2.04,
                        "midday10MWindDirection": 254,
                        "midnight10MWindDirection": 133,
                        "midday10MWindGust": 7.52,
                        "midnight10MWindGust": 4.21,
                        "middayVisibility": 35376,
                        "midnightVisibility": 28887,
                        "middayRelativeHumidity": 39.31,
                        "midnightRelativeHumidity": 66.96,
                        "middayMslp": 102498,
                        "midnightMslp": 102597,
                        "maxUvIndex": 7,
                        "daySignificantWeatherCode": 1,
                        "nightSignificantWeatherCode": 0,
                        "dayMaxScreenTemperature": 29.39,
                        "nightMinScreenTemperature": 17.25,
                        "dayUpperBoundMaxTemp": 33.2,
                        "nightUpperBoundMinTemp": 24.49,
                        "dayLowerBoundMaxTemp": 24.64,
                        "nightLowerBoundMinTemp": 13.37,
                        "dayMaxFeelsLikeTemp": 27.21,
                        "nightMinFeelsLikeTemp": 19.09,
                        "dayUpperBoundMaxFeelsLikeTemp": 33.97,
                        "nightUpperBoundMinFeelsLikeTemp": 25.38,
                        "dayLowerBoundMaxFeelsLikeTemp": 21.0,
                        "nightLowerBoundMinFeelsLikeTemp": 11.1,
                        "dayProbabilityOfPrecipitation": 1,
                        "nightProbabilityOfPrecipitation": 1,
                        "dayProbabilityOfSnow": 0,
                        "nightProbabilityOfSnow": 0,
                        "dayProbabilityOfHeavySnow": 0,
                        "nightProbabilityOfHeavySnow": 0,
                        "dayProbabilityOfRain": 1,
                        "nightProbabilityOfRain": 1,
                        "dayProbabilityOfHeavyRain": 0,
                        "nightProbabilityOfHeavyRain": 0,
                        "dayProbabilityOfHail": 0,
                        "nightProbabilityOfHail": 0,
                        "dayProbabilityOfSferics": 0,
                        "nightProbabilityOfSferics": 0
                    }
                ]
            }
        }
    ],
    "parameters": [
        {
            "daySignificantWeatherCode": {
                "type": "Parameter",
                "description": "Day Significant Weather Code",
                "unit": {
                    "label": "dimensionless",
                    "symbol": {
                        "value": "https://metoffice.apiconnect.ibmcloud.com/metoffice/production/",
                        "type": "1"
                    }
                }
            },
            "midnightRelativeHumidity": {
                "type": "Parameter",
                "description": "Relative Humidity at Local Midnight",
                "unit": {
                    "label": "percentage",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "%"
                    }
                }
            },
            "nightProbabilityOfHeavyRain": {
                "type": "Parameter",
                "description": "Probability of Heavy Rain During The Night",
                "unit": {
                    "label": "percentage",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "%"
                    }
                }
            },
            "midnight10MWindSpeed": {
                "type": "Parameter",
                "description": "10m Wind Speed at Local Midnight",
                "unit": {
                    "label": "metres per second",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "m/s"
                    }
                }
            },
            "nightUpperBoundMinFeelsLikeTemp": {
                "type": "Parameter",
                "description": "Upper Bound on Night Minimum Feels Like Air Temperature",
                "unit": {
                    "label": "degrees Celsius",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "Cel"
                    }
                }
            },
            "nightUpperBoundMinTemp": {
                "type": "Parameter",
                "description": "Upper Bound on Night Minimum Screen Air Temperature",
                "unit": {
                    "label": "degrees Celsius",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "Cel"
                    }
                }
            },
            "midnightVisibility": {
                "type": "Parameter",
                "description": "Visibility at Local Midnight",
                "unit": {
                    "label": "metres",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "m"
                    }
                }
            },
            "dayUpperBoundMaxFeelsLikeTemp": {
                "type": "Parameter",
                "description": "Upper Bound on Day Maximum Feels Like Air Temperature",
                "unit": {
                    "label": "degrees Celsius",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "Cel"
                    }
                }
            },
            "nightProbabilityOfRain": {
                "type": "Parameter",
                "description": "Probability of Rain During The Night",
                "unit": {
                    "label": "percentage",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "%"
                    }
                }
            },
            "midday10MWindDirection": {
                "type": "Parameter",
                "description": "10m Wind Direction at Local Midday",
                "unit": {
                    "label": "degrees",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "deg"
                    }
                }
            },
            "nightLowerBoundMinFeelsLikeTemp": {
                "type": "Parameter",
                "description": "Lower Bound on Night Minimum Feels Like Air Temperature",
                "unit": {
                    "label": "degrees Celsius",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "Cel"
                    }
                }
            },
            "nightProbabilityOfHail": {
                "type": "Parameter",
                "description": "Probability of Hail During The Night",
                "unit": {
                    "label": "percentage",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "%"
                    }
                }
            },
            "middayMslp": {
                "type": "Parameter",
                "description": "Mean Sea Level Pressure at Local Midday",
                "unit": {
                    "label": "pascals",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "Pa"
                    }
                }
            },
            "dayProbabilityOfHeavySnow": {
                "type": "Parameter",
                "description": "Probability of Heavy Snow During The Day",
                "unit": {
                    "label": "percentage",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "%"
                    }
                }
            },
            "nightProbabilityOfPrecipitation": {
                "type": "Parameter",
                "description": "Probability of Precipitation During The Night",
                "unit": {
                    "label": "percentage",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "%"
                    }
                }
            },
            "dayProbabilityOfHail": {
                "type": "Parameter",
                "description": "Probability of Hail During The Day",
                "unit": {
                    "label": "percentage",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "%"
                    }
                }
            },
            "dayProbabilityOfRain": {
                "type": "Parameter",
                "description": "Probability of Rain During The Day",
                "unit": {
                    "label": "percentage",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "%"
                    }
                }
            },
            "midday10MWindSpeed": {
                "type": "Parameter",
                "description": "10m Wind Speed at Local Midday",
                "unit": {
                    "label": "metres per second",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "m/s"
                    }
                }
            },
            "midday10MWindGust": {
                "type": "Parameter",
                "description": "10m Wind Gust Speed at Local Midday",
                "unit": {
                    "label": "metres per second",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "m/s"
                    }
                }
            },
            "middayVisibility": {
                "type": "Parameter",
                "description": "Visibility at Local Midday",
                "unit": {
                    "label": "metres",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "m"
                    }
                }
            },
            "midnight10MWindGust": {
                "type": "Parameter",
                "description": "10m Wind Gust Speed at Local Midnight",
                "unit": {
                    "label": "metres per second",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "m/s"
                    }
                }
            },
            "midnightMslp": {
                "type": "Parameter",
                "description": "Mean Sea Level Pressure at Local Midnight",
                "unit": {
                    "label": "pascals",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "Pa"
                    }
                }
            },
            "dayProbabilityOfSferics": {
                "type": "Parameter",
                "description": "Probability of Sferics During The Day",
                "unit": {
                    "label": "percentage",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "%"
                    }
                }
            },
            "nightSignificantWeatherCode": {
                "type": "Parameter",
                "description": "Night Significant Weather Code",
                "unit": {
                    "label": "dimensionless",
                    "symbol": {
                        "value": "https://metoffice.apiconnect.ibmcloud.com/metoffice/production/",
                        "type": "1"
                    }
                }
            },
            "dayProbabilityOfPrecipitation": {
                "type": "Parameter",
                "description": "Probability of Precipitation During The Day",
                "unit": {
                    "label": "percentage",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "%"
                    }
                }
            },
            "dayProbabilityOfHeavyRain": {
                "type": "Parameter",
                "description": "Probability of Heavy Rain During The Day",
                "unit": {
                    "label": "percentage",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "%"
                    }
                }
            },
            "dayMaxScreenTemperature": {
                "type": "Parameter",
                "description": "Day Maximum Screen Air Temperature",
                "unit": {
                    "label": "degrees Celsius",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "Cel"
                    }
                }
            },
            "nightMinScreenTemperature": {
                "type": "Parameter",
                "description": "Night Minimum Screen Air Temperature",
                "unit": {
                    "label": "degrees Celsius",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "Cel"
                    }
                }
            },
            "midnight10MWindDirection": {
                "type": "Parameter",
                "description": "10m Wind Direction at Local Midnight",
                "unit": {
                    "label": "degrees",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "deg"
                    }
                }
            },
            "maxUvIndex": {
                "type": "Parameter",
                "description": "Day Maximum UV Index",
                "unit": {
                    "label": "dimensionless",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "1"
                    }
                }
            },
            "dayProbabilityOfSnow": {
                "type": "Parameter",
                "description": "Probability of Snow During The Day",
                "unit": {
                    "label": "percentage",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "%"
                    }
                }
            },
            "nightProbabilityOfSnow": {
                "type": "Parameter",
                "description": "Probability of Snow During The Night",
                "unit": {
                    "label": "percentage",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "%"
                    }
                }
            },
            "dayLowerBoundMaxTemp": {
                "type": "Parameter",
                "description": "Lower Bound on Day Maximum Screen Air Temperature",
                "unit": {
                    "label": "degrees Celsius",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "Cel"
                    }
                }
            },
            "nightProbabilityOfHeavySnow": {
                "type": "Parameter",
                "description": "Probability of Heavy Snow During The Night",
                "unit": {
                    "label": "percentage",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "%"
                    }
                }
            },
            "dayLowerBoundMaxFeelsLikeTemp": {
                "type": "Parameter",
                "description": "Lower Bound on Day Maximum Feels Like Air Temperature",
                "unit": {
                    "label": "degrees Celsius",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "Cel"
                    }
                }
            },
            "dayUpperBoundMaxTemp": {
                "type": "Parameter",
                "description": "Upper Bound on Day Maximum Screen Air Temperature",
                "unit": {
                    "label": "degrees Celsius",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "Cel"
                    }
                }
            },
            "dayMaxFeelsLikeTemp": {
                "type": "Parameter",
                "description": "Day Maximum Feels Like Air Temperature",
                "unit": {
                    "label": "degrees Celsius",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "Cel"
                    }
                }
            },
            "middayRelativeHumidity": {
                "type": "Parameter",
                "description": "Relative Humidity at Local Midday",
                "unit": {
                    "label": "percentage",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "%"
                    }
                }
            },
            "nightLowerBoundMinTemp": {
                "type": "Parameter",
                "description": "Lower Bound on Night Minimum Screen Air Temperature",
                "unit": {
                    "label": "degrees Celsius",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "Cel"
                    }
                }
            },
            "nightMinFeelsLikeTemp": {
                "type": "Parameter",
                "description": "Night Minimum Feels Like Air Temperature",
                "unit": {
                    "label": "degrees Celsius",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "Cel"
                    }
                }
            },
            "nightProbabilityOfSferics": {
                "type": "Parameter",
                "description": "Probability of Sferics During The Night",
                "unit": {
                    "label": "percentage",
                    "symbol": {
                        "value": "http://www.opengis.net/def/uom/UCUM/",
                        "type": "%"
                    }
                }
            }
        }
    ]
}
"""
}
