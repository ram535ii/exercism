// Package gigasecond implements gigasecond utility functions
package gigasecond

import "time"

// AddGigasecond adds an entire gigaesecond to the provided time
func AddGigasecond(t time.Time) time.Time {
	// yay for naive solution
	return t.Add(time.Second * 1000000000)
}
