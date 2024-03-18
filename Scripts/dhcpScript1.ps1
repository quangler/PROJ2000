$DNS1 = "10.100.10.10"
$DNS2 = "10.110.10.11"

$Scopes = @(
    @{
        Id = "10.100.60.0"
        Name = "Accounting"
        Subnet = "10.100.60.0"
        SubnetMask = "255.255.255.0"
        Router = "10.100.60.1"
        StartRange = "10.100.60.100"
        EndRange = "10.100.60.200"
    },
    @{
        Id = "10.100.70.0"
        Name = "Engineering"
        Subnet = "10.100.70.0"
        SubnetMask = "255.255.255.0"
        Router = "10.100.70.1"
        StartRange = "10.100.70.100"
        EndRange = "10.100.70.200"
    },
    @{
        Id = "10.100.80.0"
        Name = "IT"
        Subnet = "10.100.80.0"
        SubnetMask = "255.255.255.0"
        Router = "10.100.80.1"
        StartRange = "10.100.80.100"
        EndRange = "10.100.80.200"
    },
    @{
        Id = "10.100.90.0"
        Name = "Logistics"
        Subnet = "10.100.90.0"
        SubnetMask = "255.255.255.0"
        Router = "10.100.90.1"
        StartRange = "10.100.90.100"
        EndRange = "10.100.90.200"
    },
    @{
        Id = "10.100.100.0"
        Name = "Management Team"
        Subnet = "10.100.100.0"
        SubnetMask = "255.255.255.0"
        Router = "10.100.100.1"
        StartRange = "10.100.100.100"
        EndRange = "10.100.100.200"
    },
    @{
        Id = "10.100.110.0"
        Name = "MANUSecure (OT)"
        Subnet = "10.100.110.0"
        SubnetMask = "255.255.255.0"
        Router = "10.100.110.1"
        StartRange = "10.100.110.100"
        EndRange = "10.100.110.200"
    },
    @{
        Id = "10.100.120.0"
        Name = "Operations"
        Subnet = "10.100.120.0"
        SubnetMask = "255.255.255.0"
        Router = "10.100.120.1"
        StartRange = "10.100.120.100"
        EndRange = "10.100.120.200"
    },
    @{
        Id = "10.100.130.0"
        Name = "QA"
        Subnet = "10.100.130.0"
        SubnetMask = "255.255.255.0"
        Router = "10.100.130.1"
        StartRange = "10.100.130.100"
        EndRange = "10.100.130.200"
    },
    @{
        Id = "10.100.140.0"
        Name = "Sales"
        Subnet = "10.100.140.0"
        SubnetMask = "255.255.255.0"
        Router = "10.100.140.1"
        StartRange = "10.100.140.100"
        EndRange = "10.100.140.200"
    },
    @{
        Id = "10.100.150.0"
        Name = "Students"
        Subnet = "10.100.150.0"
        SubnetMask = "255.255.255.0"
        Router = "10.100.150.1"
        StartRange = "10.100.150.100"
        EndRange = "10.100.150.200"
    }
)

foreach ($scope in $Scopes) {
    try {
        $dhcpScope = Get-DhcpServerv4Scope -ScopeId $scope.Id
        if ($dhcpScope -eq $null) {
            Write-Host "Scope with ID $($scope.Id) not found."
            continue
        }

        #Add-DhcpServerv4Scope -Name $scope.Subnet -StartRange $scope.StartRange -EndRange $scope.EndRange -SubnetMaskLength $scope.SubnetMaskLength -State Active -ScopeId $scope.Id
        Set-DhcpServerv4OptionValue -ScopeId $scope.Id -DnsServer $DNS1, $DNS2
        Set-DhcpServerv4OptionValue -ScopeId $scope.Id -Router $scope.Router
        Write-Host "Successfully configured scope with ID $($scope.Id)."
    } catch {
        Write-Host "Failed to configure scope with ID $($scope.Id): $_"
    }
}
