progma solidity ^0.6.0;


contract ERC20 {
    using SafeMath for uint256;
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
    event Transfer(address indexed from, address indexed to, uint tokens);
    mapping(address => uint256) balances; 
    mapping(address => mapping(address => uint256)) allowed;
    string public symbol;
    uint8 public decimals;
    string public name;
    uint256 private _totalSupply;

    constructor(uint8 _decimals, string memory _symbol, string memory _name, uint256 _total_supply) public {
        decimals = _decimals;
        symbol = _symbol;
        name = _name;
        _totalSupply = _total_supply;
    }

    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address tokenOwner) public view returns (uint) {
        return balances[tokenOwner];
    }

    function transfer(address receiver, uint numTokens) public returns (bool) {
        require(numTokens <= balances[msg.sender]);
        balances[msg.sender] = balances[]
    }

    

}