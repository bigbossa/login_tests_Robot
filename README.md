# Robot Framework Automation Project

This project contains automated tests using Robot Framework for login functionality testing.

## Prerequisites

- Python 3.x
- Robot Framework
- Required dependencies (see requirements.txt)

## Installation

1. Navigate to the project directory:
```bash
cd C:\bigboss\Automate\robotframework
```

2. Install required packages:
```bash
pip install -r requirements.txt
```

## Project Structure

```
robotframework/
├── login_tests/          # Login test suites
│   ├── login_test.robot  # Main login test file
│   ├── valid_login.robot # Valid login scenarios
│   └── resource.robot    # Shared resources
├── results/              # Test execution results
├── requirements.txt      # Python dependencies
└── README.md            # This file
```

## Running Tests

Execute all login tests:
```bash
robot .\login_tests
```

Test results will be generated in the `results/` directory with:
- `log.html` - Detailed test execution log
- `report.html` - Test execution report
- `output.xml` - Raw test output data

## Configuration

### Updating Login Credentials

Edit the login credentials in `login_tests/login_test.robot` (lines 56-57):

```robot
Input Text    id=username    ${user}
Input Text    id=password    ${PASSWORD}
```

**Important:** Verify the element IDs match your target website:
- Check the username input field ID
- Check the password input field ID
- Check the submit button ID in the login form

## Test Execution Reports

After running tests, view the results:
- Open `log.html` in a browser for detailed execution logs
- Open `report.html` for a summary report

## Notes

- Ensure the web application under test is accessible before running tests
- Update element locators (IDs) if the website structure changes
- Credentials can be parameterized using Robot Framework variables
