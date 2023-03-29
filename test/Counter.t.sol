// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "libSVG/SVG.sol";
import "libSVG/JSON.sol";

contract CounterTest is Test {
    
    string public constant SVG = '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 350 350" height="350" width="350"><rect width="100%" height="100%" fill="gray"/><g onclick="connection(evt)"><rect class="btn" x="100" y="50" width="150" height="50" fill="lightGray" stroke="black"/><text x="100" y="50" font-size="20" fill="black" text-anchor="middle" alignment-baseline="middle"><tspan x="175" y="75">Click me!</tspan></text></g><script xlink:href="https://cdnjs.cloudflare.com/ajax/libs/ethers/6.2.3/ethers.umd.min.js" type="text/javascript"></script><script type="text/javascript" crossorigin="anonymous">async function connection(e){console.log(window.location.href),console.log(window.ethereum);let l=null,n;null==window.ethereum?(console.log("MetaMask not installed; using read-only defaults"),n=ethers.getDefaultProvider()):(l=await (n=new ethers.BrowserProvider(window.ethereum)).getSigner(),console.log(l.address))}</script></svg>';
    string public HTML = 
        string.concat(
            '<!DOCTYPE html><html lang="en">',
            SVG,
            '</html>'
        );


    function testEncoded() public {

        string memory formattedJson = json.formattedMetadata(
            string.concat('test #', utils.toString(4)),
            "LFG!",
            SVG
        );

        vm.writeFile('test/output/testURI.txt', formattedJson);
    }

    function testEncodedHTML() public {

        string memory formattedJson = json.formattedMetadataHTML(
            string.concat('test #', utils.toString(5)),
            "LFG!",
            HTML
        );

        vm.writeFile('test/output/testURI_HTML.txt', formattedJson);
    }


}
