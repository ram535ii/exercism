// Package gigasecond implements gigasecond utility functions
package gigasecond

import "time"

const (
	gigasecond = 1e9 * time.Second
)

// AddGigasecond adds an entire gigaesecond to the provided time
func AddGigasecond(t time.Time) time.Time {
	// yay for naive solution
	return t.Add(gigasecond)
}
