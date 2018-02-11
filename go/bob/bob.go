// Package bob imitates a lackadaisical teenager
package bob

import (
	"strings"
)

// Hey responds as bob would
func Hey(remark string) string {
	s := strings.TrimSpace(remark)

	if isSilent(s) {
		return "Fine. Be that way!"
	}
	q := isQuestion(s)
	y := isYelling(s)

	if q && y {
		return "Calm down, I know what I'm doing!"
	} else if q {
		return "Sure."
	} else if y {
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
