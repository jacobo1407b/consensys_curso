
import "github.com/provable-things/ethereum-api/provableAPI.sol";

contract DieselPrice is usingProvable {
    uint dieselPriceUSD;

    constructor() public {
        provable_query("URL", "xml(https://www.fueleconomy.gov/ws/rest/fuelprices).fuelPrices.diesel");
    }

    function __callback (bytes32 myid, string result) public {
        require(msg.sender == provable_cbAddress());
        dieselPriceUSD = parseInt(result);
    }
}
      