// This is a "stub" file.  It's a little start on your solution.
// It's not a complete solution though; you have to write some code.

// Package bob should have a package comment that summarizes what it's about.
// https://golang.org/doc/effective_go.html#commentary
package bob

import (
	"strings"
)

// Hey should have a comment documenting it.
func Hey(remark string) string {
	s := strings.TrimSpace(remark)

	if isSilent(s) {
		return "Fine. Be that way!"
	} else if isQuestion(s) && isYelling(s) {
		return "Calm down, I know what I'm doing!"
	} else if isQuestion(s) {
		return "Sure."
	} else if isYelling(s) {
		return "Whoa, chill out!"
	}
	return "Whatever."
}

func isSilent(s string) bool {
	return len(s) == 0
}

func isYelling(s string) bool {
	return s == strings.ToUpper(s) && s != strings.ToLower(s)
}

func isQuestion(s string) bool {
	lastC := s[len(s)-1:]
	return lastC == "?"
}
