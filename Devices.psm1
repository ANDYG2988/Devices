function Search-Devices($device){
    Get-PnpDevice -PresentOnly | Where-Object {$_.class -eq $device} | Format-Table -AutoSize
}

function Enable-Camera{
    Enable-PnpDevice -InstanceId 'USB\VID_0C45&PID_6730&MI_00\6&318FB77&0&0000'

    Write-Host "Camera Enabled"
}

function Disable-Camera{
    Disable-PnpDevice -InstanceId 'USB\VID_0C45&PID_6730&MI_00\6&318FB77&0&0000'

    Write-Host "Camera Disabled"
}


function Enable-Mic{
    Enable-PnpDevice -InstanceId 'SWD\MMDEVAPI\{0.0.1.00000000}.{F4A2EBAA-2E65-4B09-8550-7795D5D3D49E}'

    Write-Host "Mic Enabled"
}

function Disable-Mic{
    Disable-PnpDevice -InstanceId 'SWD\MMDEVAPI\{0.0.1.00000000}.{F4A2EBAA-2E65-4B09-8550-7795D5D3D49E}'

    Write-Host "Mic Disabled"
}

function Show-Devices{
    Get-PnpDevice -PresentOnly | Format-Table -AutoSize
}

function Enable-Device($device){
    Enable-PnpDevice -InstanceId $device

    Write-Host "Device Diabled"
}

function Disable-Device($device){
    Disable-PnpDevice -InstanceId $device

    Write-Host "Device Diabled"
}

function Get-Devices{
    Write-Host '
    Search-Devices
    Start-Camera
    Stop-Camera
    Start-Mic
    Stop-Mic
    Show-Devices
    Enable-Device
    Disable-Device
    '
}

Write-Host "
Devices Module Connected

To Get all Commands Type Get-Devices
"