function buildSolution ([string] $solution)
{
    $msbuild = "C:\Program Files (x86)\MSBuild\12.0\Bin\msbuild.exe"
    & $msbuild  $solution
}

function restorePackages ([string] $solution)
{
    $nuget = "C:\Program Files (x86)\Jenkins\jobs\ToAzure.Build\workspace\nuget\nuget-signed.exe"
    & $nuget restore $solution
}

