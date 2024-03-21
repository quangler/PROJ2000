$DNS1 = "10.110.10.11"
$DNS2 = "10.100.10.10"

$Scopes = @(
    @{
        Id = "10.110.60.0"
        Name = "MP-Accounting"
        Subnet = "10.110.60.0"
        SubnetMask = "255.255.255.0"
        Router = "10.110.60.1"
        StartRange = "10.110.60.100"
        EndRange = "10.110.60.200"
    },
    @{
        Id = "10.110.70.0"
        Name = "MP-Engineering"
        Subnet = "10.110.70.0"
        SubnetMask = "255.255.255.0"
        Router = "10.110.70.1"
        StartRange = "10.110.70.100"
        EndRange = "10.110.70.200"
    },
    @{
        Id = "10.110.80.0"
        Name = "MP-IT"
        Subnet = "10.110.80.0"
        SubnetMask = "255.255.255.0"
        Router = "10.110.80.1"
        StartRange = "10.110.80.100"
        EndRange = "10.110.80.200"
    },
    @{
        Id = "10.110.90.0"
        Name = "MP-Logistics"
        Subnet = "10.110.90.0"
        SubnetMask = "255.255.255.0"
        Router = "10.110.90.1"
        StartRange = "10.110.90.100"
        EndRange = "10.110.90.200"
    },
    @{
        Id = "10.110.100.0"
        Name = "MP-Management Team"
        Subnet = "10.110.100.0"
        SubnetMask = "255.255.255.0"
        Router = "10.110.100.1"
        StartRange = "10.110.100.100"
        EndRange = "10.110.100.200"
    },
    @{
        Id = "10.110.110.0"
        Name = "MP-MANUSecure (OT)"
        Subnet = "10.110.110.0"
        SubnetMask = "255.255.255.0"
        Router = "10.110.110.1"
        StartRange = "10.110.110.110"
        EndRange = "10.110.110.200"
    },
    @{
        Id = "10.110.120.0"
        Name = "MP-Operations"
        Subnet = "10.110.120.0"
        SubnetMask = "255.255.255.0"
        Router = "10.110.120.1"
        StartRange = "10.110.120.100"
        EndRange = "10.110.120.200"
    },
    @{
        Id = "10.110.130.0"
        Name = "MP-QA"
        Subnet = "10.110.130.0"
        SubnetMask = "255.255.255.0"
        Router = "10.110.130.1"
        StartRange = "10.110.130.100"
        EndRange = "10.110.130.200"
    },
    @{
        Id = "10.110.140.0"
        Name = "MP-Sales"
        Subnet = "10.110.140.0"
        SubnetMask = "255.255.255.0"
        Router = "10.110.140.1"
        StartRange = "10.110.140.100"
        EndRange = "10.110.140.200"
    },
    @{
        Id = "10.110.150.0"
        Name = "MP-Students"
        Subnet = "10.110.150.0"
        SubnetMask = "255.255.255.0"
        Router = "10.110.150.1"
        StartRange = "10.110.150.100"
        EndRange = "10.110.150.200"
    }
)


foreach ($scope in $Scopes) {
    try {
        Add-DhcpServerv4Scope -Name $scope.Name -StartRange $scope.StartRange -EndRange $scope.EndRange -SubnetMask $scope.SubnetMask -State Active #-ScopeId $scope.Id
        Set-DhcpServerv4OptionValue -ScopeId $scope.Id -DnsServer $DNS1, $DNS2
        Set-DhcpServerv4OptionValue -ScopeId $scope.Id -Router $scope.Router
        Write-Host "Successfully configured scope with ID $($scope.Id)."
        } catch {
        Write-Host "Failed to configure $($scope.name)."
    }
}
