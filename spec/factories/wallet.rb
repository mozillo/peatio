# encoding: UTF-8
# frozen_string_literal: true

FactoryBot.define do
  factory :wallet do

    trait :eth_deposit do
      currency_id        { 'eth' }
      blockchain_key     { 'eth-rinkeby' }
      name               { 'Ethereum Deposit Wallet' }
      address            { '0x828058628DF254Ebf252e0b1b5393D1DED91E369' }
      kind               { 'deposit' }
      max_balance        { 0.0 }
      nsig               { 2 }
      status             { 'active' }
      gateway            { 'geth' }
      uri                { 'http://127.0.0.1:8545' }
      secret             { 'changeme' }
    end

    trait :eth_hot do
      currency_id        { 'eth' }
      blockchain_key     { 'eth-rinkeby' }
      name               { 'Ethereum Hot Wallet' }
      address            { '0xb6a61c43DAe37c0890936D720DC42b5CBda990F9' }
      kind               { 'hot' }
      max_balance        { 100.0 }
      nsig               { 2 }
      status             { 'active' }
      gateway            { 'geth' }
      uri                { 'http://127.0.0.1:8545' }
      secret             { 'changeme' }
    end

    trait :eth_warm do
      currency_id        { 'eth' }
      blockchain_key     { 'eth-rinkeby' }
      name               { 'Ethereum Warm Wallet' }
      address            { '0x2b9fBC10EbAeEc28a8Fc10069C0BC29E45eBEB9C' }
      kind               { 'warm' }
      max_balance        { 1000.0 }
      nsig               { 2 }
      status             { 'active' }
      gateway            { 'geth' }
      uri                { 'http://127.0.0.1:8545' }
      secret             { 'changeme' }
    end

    trait :eth_cold do
      currency_id        { 'eth' }
      blockchain_key     { 'eth-rinkeby' }
      name               { 'Ethereum Cold Wallet' }
      address            { '0x2b9fBC10EbAeEc28a8Fc10069C0BC29E45eBEB9C' }
      kind               { 'cold' }
      max_balance        { 1000.0 }
      nsig               { 2 }
      status             { 'active' }
      gateway            { 'geth' }
      uri                { 'http://127.0.0.1:8545' }
      secret             { 'changeme' }
    end

    trait :eth_fee do
      currency_id        { 'eth' }
      blockchain_key     { 'eth-rinkeby' }
      name               { 'Ethereum Fee Wallet' }
      address            { '0x45a31b15a2ab8a8477375b36b6f5a0c63733dce8' }
      kind               { 'fee' }
      max_balance        { 1000.0 }
      nsig               { 2 }
      status             { 'active' }
      gateway            { 'geth' }
      uri                { 'http://127.0.0.1:8545' }
      secret             { 'changeme' }
    end

    trait :trst_deposit do
      currency_id        { 'trst' }
      blockchain_key     { 'eth-rinkeby' }
      name               { 'Trust Coin Deposit Wallet' }
      address            { '0x828058628DF254Ebf252e0b1b5393D1DED91E369' }
      kind               { 'deposit' }
      max_balance        { 0.0 }
      nsig               { 2 }
      status             { 'active' }
      gateway            { 'geth' }
      uri                { 'http://127.0.0.1:8545' }
      secret             { 'changeme' }
    end

    trait :trst_hot do
      currency_id        { 'trst' }
      blockchain_key     { 'eth-rinkeby' }
      name               { 'Trust Coin Hot Wallet' }
      address            { '0xb6a61c43DAe37c0890936D720DC42b5CBda990F9' }
      kind               { 'hot' }
      max_balance        { 100.0 }
      nsig               { 2 }
      status             { 'active' }
      gateway            { 'geth' }
      uri                { 'http://127.0.0.1:8545' }
      secret             { 'changeme' }
    end

    trait :ring_deposit do
      currency_id        { 'ring' }
      blockchain_key     { 'eth-kovan' }
      name               { 'Ring Coin Deposit Wallet' }
      address            { '0x828058628DF254Ebf252e0b1b5393D1DED91E369' }
      kind               { 'deposit' }
      max_balance        { 0.0 }
      nsig               { 2 }
      status             { 'active' }
      gateway            { 'parity' }
      uri                { 'http://127.0.0.1:8545' }
      secret             { 'changeme' }
    end

    trait :ring_hot do
      currency_id        { 'ring' }
      blockchain_key     { 'eth-kovan' }
      name               { 'Ring Coin Hot Wallet' }
      address            { '0x23236af7d03c4b0720f709593f5ace0ea92e77cf' }
      kind               { 'hot' }
      max_balance        { 100.0 }
      nsig               { 2 }
      status             { 'active' }
      gateway            { 'parity' }
      uri                { 'http://127.0.0.1:8545' }
      secret             { 'changeme' }
    end

    trait :parity_deposit do
      currency_id        { 'eth' }
      blockchain_key     { 'eth-kovan' }
      name               { 'Kovan Ethereum Deposit Wallet' }
      address            { '0x828058628DF254Ebf252e0b1b5393D1DED91E369' }
      kind               { 'deposit' }
      max_balance        { 0.0 }
      nsig               { 2 }
      status             { 'active' }
      gateway            { 'parity' }
      uri                { 'http://127.0.0.1:8545' }
      secret             { 'changeme' }
    end

    trait :parity_hot do
      currency_id        { 'eth' }
      blockchain_key     { 'eth-kovan' }
      name               { 'Kovan Ethereum Hot Wallet' }
      address            { '0xb6a61c43DAe37c0890936D720DC42b5CBda990F9' }
      kind               { 'hot' }
      max_balance        { 100.0 }
      nsig               { 2 }
      status             { 'active' }
      gateway            { 'parity' }
      uri                { 'http://127.0.0.1:8545' }
      secret             { 'changeme' }
    end

    trait :parity_cold do
      currency_id        { 'eth' }
      blockchain_key     { 'eth-kovan' }
      name               { 'Kovan Ethereum Cold Wallet' }
      address            { '0x2b9fBC10EbAeEc28a8Fc10069C0BC29E45eBEB9C' }
      kind               { 'cold' }
      max_balance        { 1000.0 }
      nsig               { 2 }
      status             { 'active' }
      gateway            { 'parity' }
      uri                { 'http://127.0.0.1:8545' }
      secret             { 'changeme' }
    end

    trait :parity_fee do
      currency_id        { 'eth' }
      blockchain_key     { 'eth-kovan' }
      name               { 'Kovan Ethereum Fee Wallet' }
      address            { '0x45a31b15a2ab8a8477375b36b6f5a0c63733dce8' }
      kind               { 'fee' }
      max_balance        { 1000.0 }
      nsig               { 2 }
      status             { 'active' }
      gateway            { 'parity' }
      uri                { 'http://127.0.0.1:8545' }
      secret             { 'changeme' }
    end

    trait :btc_deposit do
      currency_id        { 'btc' }
      blockchain_key     { 'btc-testnet' }
      name               { 'Bitcoin Deposit Wallet' }
      address            { '3DX3Ak4751ckkoTFbYSY9FEQ6B7mJ4furT' }
      kind               { 'deposit' }
      max_balance        { 0.0 }
      nsig               { 2 }
      status             { 'active' }
      gateway            { 'bitcoind' }
      uri                { 'http://127.0.0.1:18332' }
      secret             { 'changeme' }
    end

    trait :btc_hot do
      currency_id        { 'btc' }
      blockchain_key     { 'btc-testnet' }
      name               { 'Bitcoin Hot Wallet' }
      address            { '3NwYr8JxjHG2MBkgdBiHCxStSWDzyjS5U8' }
      kind               { 'hot' }
      max_balance        { 500.0 }
      nsig               { 2 }
      status             { 'active' }
      gateway            { 'bitcoind' }
      uri                { 'http://127.0.0.1:18332' }
      secret             { 'changeme' }
    end

    trait :fake_deposit do
      currency_id       { 'fake' }
      blockchain_key    { 'fake-testnet' }
      name              { 'Fake Currency Deposit Wallet' }
      address           { 'fake-deposit' }
      kind              { 'deposit' }
      max_balance       { 0.0 }
      nsig              { 1 }
      status            { 'active' }
      gateway           { 'fake' }
      uri               { 'http://127.0.0.1:18881' }
    end

    trait :fake_hot do
      currency_id       { 'fake' }
      blockchain_key    { 'fake-testnet' }
      name              { 'Fake Currency Hot Wallet' }
      address           { 'fake-hot' }
      kind              { 'hot' }
      max_balance       { 10.0 }
      nsig              { 1 }
      status            { 'active' }
      gateway           { 'fake' }
      uri               { 'http://127.0.0.1:18881' }
    end

    trait :fake_warm do
      currency_id       { 'fake' }
      blockchain_key    { 'fake-testnet' }
      name              { 'Fake Currency Warm Wallet' }
      address           { 'fake-warm' }
      kind              { 'warm' }
      max_balance       { 100.0 }
      nsig              { 1 }
      status            { 'active' }
      gateway           { 'fake' }
      uri               { 'http://127.0.0.1:18881' }
    end

    trait :fake_cold do
      currency_id       { 'fake' }
      blockchain_key    { 'fake-testnet' }
      name              { 'Fake Currency Cold Wallet' }
      address           { 'fake-cold' }
      kind              { 'cold' }
      max_balance       { 1000.0 }
      nsig              { 1 }
      status            { 'active' }
      gateway           { 'fake' }
      uri               { 'http://127.0.0.1:18881' }
    end

    trait :fake_fee do
      currency_id        { 'fake' }
      blockchain_key     { 'fake-testnet' }
      name               { 'Fake Currency Fee Wallet' }
      address            { 'fake-fee' }
      kind               { 'fee' }
      max_balance        { 1000.0 }
      nsig               { 2 }
      status             { 'active' }
      gateway            { 'fake' }
      uri                { 'http://127.0.0.1:8545' }
      secret             { 'changeme' }
    end
  end
end
