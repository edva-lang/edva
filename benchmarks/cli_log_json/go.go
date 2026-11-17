package main

import (
	"encoding/json"
	"fmt"
	"os"
	"strconv"
)

type logRow struct {
	ID  int64  `json:"id"`
	Svc string `json:"svc"`
	Ok  bool   `json:"ok"`
	Lat int64  `json:"lat"`
}

func main() {
	n := int64(20000)
	if len(os.Args) > 1 {
		if v, err := strconv.ParseInt(os.Args[1], 10, 64); err == nil && v > 0 {
			n = v
		}
	}

	var checksum, okCnt, errCnt int64
	for i := int64(0); i < n; i++ {
		id := i*7 + 3
		lat := (i*131+17)%500 + 1
		isOk := i%5 != 0
		svc := i % 4
		line := fmt.Sprintf(`{"id":%d,"svc":"svc_%d","ok":%t,"lat":%d}`, id, svc, isOk, lat)
		var row logRow
		if err := json.Unmarshal([]byte(line), &row); err == nil {
			if row.Ok {
				okCnt++
				checksum = (checksum + row.ID + row.Lat*3) % 1000000007
			} else {
				errCnt++
				checksum = (checksum + row.ID + row.Lat*7) % 1000000007
			}
		}
	}
	fmt.Printf("checksum=%d,ok=%d,err=%d\n", checksum, okCnt, errCnt)
}
