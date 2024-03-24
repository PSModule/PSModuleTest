Class Function {
    [string] $Name
    [string] $Version

    Function([string] $Name, [string] $Version) {
        $this.Name = $Name
        $this.Version = $Version
    }
}
