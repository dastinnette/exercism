// Package weather provides data from the weather.com API.
package weather

// CurrentCondition represents a certain weather condition.
var CurrentCondition string
// CurrentLocation represents a certain geographic location.
var CurrentLocation string

// Forecast takes a city and condition as strings and returns a string reporting the current weather in a specific location.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
