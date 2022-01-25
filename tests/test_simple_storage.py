from brownie import SimpleStorage, accounts


def test_deploy():
    # Arrage
    account = accounts[0]

    # Act
    simple_storage = SimpleStorage.deploy({"from": account})
    starting_value = simple_storage.retrieve()
    expected = 0

    # Assert

    assert starting_value == expected


def test_updating_storage():
    # Arrange
    account = accounts[0]
    simple_storage = SimpleStorage.deploy({"from": account})
    # Act
    expected = 15
    simple_storage.store(expected, {"from": account})

    # Assert
    result = simple_storage.retrieve()
    assert result == expected


# Look up Pytest for more testing features
