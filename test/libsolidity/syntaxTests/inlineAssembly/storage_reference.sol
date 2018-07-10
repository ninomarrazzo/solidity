contract C {
    uint[] x;
    function() public {
        uint[] storage y = x;
        assembly {
            pop(y)
        }
    }
}
// ----
// TypeError: (116-117): You have to use the _slot or _offset suffix to access storage reference variables.
