function Write-ConfigurationSection {
    param(
        [string]$Server
    )

    Write-Output "## :gear: Configuration"
    Write-Output ""

    Write-Output "| Windows Server 2022 Datacenter            | User/Pwd                   |"
    Write-Output "|-------------------------------------------|----------------------------|"
    Write-Output "| ${Server}                                 | Administrator/Boreal@2️⃣02️⃣6 |"
    Write-Output ""

}


function Write-LabHeader {
    param(
        [hashtable]$FeedbackLookup = @{}
    )

    Write-Output ""
    Write-Output "## :a: Présence"
    Write-Output ""

    if ($FeedbackLookup.Count -gt 0) {
        Write-Output "|:hash:| Boréal :id: | README.md | images | Appréciation | Commentaires | :link: IP |"
        Write-Output "|------|-------------|-----------|--------|--------------|--------------|-----------|"
    }
    else {
        Write-Output "|:hash:| Boréal :id: | README.md | images | :link: IP |"
        Write-Output "|------|-------------|-----------|--------|-----------|"
    }
}

function Write-LabStudentRow {
    param(
        [int]$Index,
        [string]$StudentID,
        [string]$GitHubLink,
        [string]$ReadmePath,
        [hashtable]$Checks,
        [hashtable]$FeedbackLookup = @{},
        [string]$Server
    )

    if ($FeedbackLookup.Count -gt 0) {

        $Feedback = $FeedbackLookup[$StudentID]

        $Appreciation = if ($Feedback) { $Feedback.Appreciation } else { "" }
        $Comments     = if ($Feedback) { $Feedback.Comments } else { "" }

        Write-Output "| $Index | [$StudentID](../$ReadmePath) :point_right: $GitHubLink | $($Checks.README) | $($Checks.Images) | $Appreciation | $Comments | $($Server) |"
    }
    else {

        Write-Output "| $Index | [$StudentID](../$ReadmePath) :point_right: $GitHubLink | $($Checks.README) | $($Checks.Images) | $($Server) |"
    }
}
