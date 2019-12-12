const Web3 = require('web3');
const HDWalletProvider= require('truffle-hdwallet-provider');
const {interface, bytecode}= require('../compile');

const provider = new Web3.providers.HttpProvider("https://rinkeby.infura.io/v3/bc9f0a0f50c04156be54a5d68fe4184b");
const web3 = new Web3(provider);

//const contract_Address="<ADD DEPLOYED ADDRESS HERE>";
const contract_Address="0xF8C410d28848644328540DDF74E17c970ab8b6d5";
const contract = new web3.eth.Contract(JSON.parse(interface), contract_Address);

const result= contract.methods.getChainOfOwners().call().then(console.log);