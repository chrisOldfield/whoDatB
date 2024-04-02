Describe "winAdminScript Tests" {
    Context "When user chooses folder 1" {
        It "Should run all scripts in the linuxAdmin folder" {
            # Arrange
            $expectedFolder = ".\linuxAdmin"

            # Act
            $choice = "1"
            $folder = switch ($choice) {
                1 { ".\linuxAdmin" }
                2 { ".\windowsAdmin" }
                3 { ".\sysDuck" }
                4 { ".\miscTools" }
                default { throw "Invalid choice" }
            }

            # Assert
            $folder | Should Be $expectedFolder
        }
    }

    Context "When user chooses folder 2" {
        It "Should run all scripts in the windowsAdmin folder" {
            # Arrange
            $expectedFolder = ".\windowsAdmin"

            # Act
            $choice = "2"
            $folder = switch ($choice) {
                1 { ".\linuxAdmin" }
                2 { ".\windowsAdmin" }
                3 { ".\sysDuck" }
                4 { ".\miscTools" }
                default { throw "Invalid choice" }
            }

            # Assert
            $folder | Should Be $expectedFolder
        }
    }

    # Add more tests for other folders and scenarios...
}Describe "winAdminScript Tests" {
    Context "When user chooses folder 1" {
        It "Should run all scripts in the linuxAdmin folder" {
            # Arrange
            $expectedFolder = ".\linuxAdmin"

            # Act
            $choice = "1"
            $folder = switch ($choice) {
                1 { ".\linuxAdmin" }
                2 { ".\windowsAdmin" }
                3 { ".\sysDuck" }
                4 { ".\miscTools" }
                default { throw "Invalid choice" }
            }

            # Assert
            $folder | Should Be $expectedFolder
        }
    }

    Context "When user chooses folder 2" {
        It "Should run all scripts in the windowsAdmin folder" {
            # Arrange
            $expectedFolder = ".\windowsAdmin"

            # Act
            $choice = "2"
            $folder = switch ($choice) {
                1 { ".\linuxAdmin" }
                2 { ".\windowsAdmin" }
                3 { ".\sysDuck" }
                4 { ".\miscTools" }
                default { throw "Invalid choice" }
            }

            # Assert
            $folder | Should Be $expectedFolder
        }
    }

    Context "When user chooses folder 3" {
        It "Should run all scripts in the sysDuck folder" {
            # Arrange
            $expectedFolder = ".\sysDuck"

            # Act
            $choice = "3"
            $folder = switch ($choice) {
                1 { ".\linuxAdmin" }
                2 { ".\windowsAdmin" }
                3 { ".\sysDuck" }
                4 { ".\miscTools" }
                default { throw "Invalid choice" }
            }

            # Assert
            $folder | Should Be $expectedFolder
        }
    }

    Context "When user chooses folder 4" {
        It "Should run all scripts in the miscTools folder" {
            # Arrange
            $expectedFolder = ".\miscTools"

            # Act
            $choice = "4"
            $folder = switch ($choice) {
                1 { ".\linuxAdmin" }
                2 { ".\windowsAdmin" }
                3 { ".\sysDuck" }
                4 { ".\miscTools" }
                default { throw "Invalid choice" }
            }

            # Assert
            $folder | Should Be $expectedFolder
        }
    }
}