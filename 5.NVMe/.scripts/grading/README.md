# Setup

## :zero: Class - INF1102-201-26H-03 - Programmation de systèmes

- [ ] courseids[0]=3

```
https://${LMS_URL}/course/view.php?id=3
```

## :one: LMS Assignment ID = 42

```json
{
  "id": 42,
  "cmid": 47,
  "name": "5.NVMe"
}
```

## :two: Rubric Definition CMID = 47

```bash
curl -X POST "https://${LMS_URL}/webservice/rest/server.php" \
-d "wstoken=${API_SYNC_TOKEN}" \
-d "wsfunction=core_grading_get_definitions" \
-d "moodlewsrestformat=json" \
-d "cmids[0]=47" \
-d "areaname=submissions" | jq .
```
```
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  2397    0  2261  100   136   3849    231 --:--:-- --:--:-- --:--:--  4076
```
<details><summary>📑</summary>

```json
{
  "areas": [
    {
      "cmid": 47,
      "contextid": 566,
      "component": "mod_assign",
      "areaname": "submissions",
      "activemethod": "rubric",
      "definitions": [
        {
          "id": 41,
          "method": "rubric",
          "name": "Participation",
          "description": "5.NVMe",
          "descriptionformat": 1,
          "status": 20,
          "copiedfromid": null,
          "timecreated": 1783434250,
          "usercreated": 3,
          "timemodified": 1783434300,
          "usermodified": 3,
          "timecopied": 0,
          "rubric": {
            "rubric_criteria": [
              {
                "id": 202,
                "sortorder": 1,
                "description": "README.md",
                "descriptionformat": 1,
                "levels": [
                  {
                    "id": 474,
                    "score": 0,
                    "definition": "❌",
                    "definitionformat": 1
                  },
                  {
                    "id": 475,
                    "score": 1,
                    "definition": "🥈",
                    "definitionformat": 1
                  },
                  {
                    "id": 476,
                    "score": 2,
                    "definition": "🥇",
                    "definitionformat": 1
                  }
                ]
              },
              {
                "id": 203,
                "sortorder": 2,
                "description": "images",
                "descriptionformat": 1,
                "levels": [
                  {
                    "id": 477,
                    "score": 0,
                    "definition": "❌",
                    "definitionformat": 1
                  },
                  {
                    "id": 478,
                    "score": 1,
                    "definition": "✔️",
                    "definitionformat": 1
                  }
                ]
              },
              {
                "id": 204,
                "sortorder": 3,
                "description": "Appréciation",
                "descriptionformat": 1,
                "levels": [
                  {
                    "id": 479,
                    "score": 0,
                    "definition": "❌",
                    "definitionformat": 1
                  },
                  {
                    "id": 480,
                    "score": 1,
                    "definition": "🥉",
                    "definitionformat": 1
                  },
                  {
                    "id": 481,
                    "score": 2,
                    "definition": "🥈",
                    "definitionformat": 1
                  },
                  {
                    "id": 482,
                    "score": 3,
                    "definition": "🥇",
                    "definitionformat": 1
                  }
                ]
              }
            ]
          }
        }
      ]
    }
  ],
  "warnings": []
}

```

</details>
