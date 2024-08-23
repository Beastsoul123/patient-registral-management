// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract MedChain {
    // Mapping of patient IDs to their corresponding health records
    mapping (address => HealthRecord) public patientRecords;

    // Struct to store patient health records
    struct HealthRecord {
        string medicalHistory;
        string medications;
        string testResults;
        // ... add more fields as needed
        address[] authorizedProviders;
        address[] authorizedResearchers;
    }
    event NewPatientRecord(address patient, string medicalHistory);

    // Event emitted when a health record is updated
    event UpdateHealthRecord(address patient, string medicalHistory);

    // Event emitted when a patient grants access to a healthcare provider
    event GrantAccess(address patient, address provider);

    // Event emitted when a patient revokes access from a healthcare provider
    event RevokeAccess(address patient, address provider);

    // Function to create a new patient record
    function createPatientRecord(string memory _medicalHistory) public {
        require(msg.sender != address(0), "Invalid sender");
        HealthRecord storage patientRecord = patientRecords[msg.sender];
        patientRecord.medicalHistory = _medicalHistory;
        emit NewPatientRecord(msg.sender, _medicalHistory);
    }

    // Function to update a patient's health record
    function updateHealthRecord(string memory _medicalHistory) public {
        require(msg.sender != address(0), "Invalid sender");
        HealthRecord storage patientRecord = patientRecords[msg.sender];
        patientRecord.medicalHistory = _medicalHistory;
        emit UpdateHealthRecord(msg.sender, _medicalHistory);
    }

    // Function to grant access to a healthcare provider
    function grantAccess(address _provider) public {
        require(msg.sender != address(0), "Invalid sender");
        HealthRecord storage patientRecord = patientRecords[msg.sender];
        patientRecord.authorizedProviders.push(_provider);
        emit GrantAccess(msg.sender, _provider);
    }

    // Function to revoke access from a healthcare provider
    function revokeAccess(address _provider) public {
        require(msg.sender != address(0), "Invalid sender");
        HealthRecord storage patientRecord = patientRecords[msg.sender];
        for (uint256 i = 0; i < patientRecord.authorizedProviders.length; i++) {
            if (patientRecord.authorizedProviders[i] == _provider) {
                patientRecord.authorizedProviders[i] = patientRecord.authorizedProviders[patientRecord.authorizedProviders.length - 1];
                patientRecord.authorizedProviders.pop();
                emit RevokeAccess(msg.sender, _provider);
                return;
            }
        }
    }

    // Function to share a health record with a researcher
    function shareRecordWithResearcher(address _researcher) public {
        require(msg.sender != address(0), "Invalid sender");
        HealthRecord storage patientRecord = patientRecords[msg.sender];
        patientRecord.authorizedResearchers.push(_researcher);
    }

    // Function to retrieve a patient's health record
    function getHealthRecord(address _patient) public view returns (HealthRecord memory) {
        require(_patient != address(0), "Invalid patient");
        return patientRecords[_patient];
    }
}
