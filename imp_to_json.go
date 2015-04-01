package main

import (
	"bufio"
	"encoding/json"
	"fmt"
	"os"
	"runtime"
	"strings"
)

func main() {
	runtime.GOMAXPROCS(runtime.NumCPU() - 1)
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		parseLine(scanner.Text())
	}
}

func parseLine(line string) {
	parts := strings.Split(line, ",")
	imp, err := json.Marshal(impression{
		ID:           parts[13],
		AdID:         parts[0],
		AdGroupID:    parts[1],
		CampaignID:   parts[2],
		AdvertiserID: parts[3],
		ZoneID:       parts[4],
		PublisherID:  parts[5],
		KeywordID:    parts[6],
		CountryID:    parts[9],
		Bid:          parts[10],
		Cpc:          parts[11],
		Cpv:          parts[12],
		TS:           parts[14],
	})

	if err == nil {
		fmt.Printf("%s\n", imp)
	}
}

type impression struct {
	ID           string
	AdID         string
	AdGroupID    string
	CampaignID   string
	AdvertiserID string
	ZoneID       string
	PublisherID  string
	KeywordID    string
	CountryID    string
	Bid          string
	Cpc          string
	Cpv          string
	TS           string `json:"ts"`
}
