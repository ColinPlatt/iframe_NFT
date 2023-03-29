//import {ethers} from "https://cdn.ethers.io/lib/ethers-5.6.umd.min.js"

function connection( evt ) {
    console.log("here");
    
    /*
    if (!window.provider) {
      console.log("Creating metamask provider");
      window.provider = new ethers.providers.Web3Provider(window.ethereum, "any");
  
      window.provider.on("network", (newNetwork, oldNetwork) => {
        // When a Provider makes its initial connection, it emits a "network"
        // event with a null oldNetwork along with the newNetwork. So, if the
        // oldNetwork exists, it represents a changing network
        if (oldNetwork) {
          window.location.reload();
        }
      });
    }
    if (!window.provider) {
      console.log("Failed to create metamask provider");
      throw "Failed to create metamask provider";
    }
    return window.provider
      .send("eth_requestAccounts", [])
      .then(function (accounts) {
        window.signer = window.provider.getSigner();
        if (window.signer) {
          window.signer.getAddress().then((address) => {
            console.log("Wallet address: " + address);
            popup("Connected to " + address);
          });
        } else {
          console.log("Faild to get signer");
          throw "FAILED TO GET SIGNER";
        }
      });
      */
  }
