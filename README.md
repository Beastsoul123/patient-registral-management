# MedChain - Decentralized Patient Health Record Management
![image](https://github.com/user-attachments/assets/4d73867f-4586-49fb-b641-0c0595135050)

## Vision

MedChain is a decentralized platform that aims to revolutionize the management and sharing of patient health records. By leveraging blockchain technology, MedChain ensures that health records are securely stored, easily accessible, and fully controlled by the patient. Our goal is to empower patients with ownership over their medical data while enabling seamless collaboration among healthcare providers and researchers.

## Features

- **Decentralized Record Storage:** Securely store patient health records on the blockchain, ensuring data integrity and availability.
- **Patient-Centric Control:** Patients have full control over their health data, deciding who can access or modify their records.
- **Access Management:** Grant or revoke access to healthcare providers and researchers with ease.
- **Data Privacy:** Records are only accessible to authorized individuals, ensuring patient privacy.

## Smart Contract Overview

The MedChain platform is powered by a smart contract deployed on the Ethereum blockchain. The contract allows patients to create and manage their health records, grant or revoke access to healthcare providers, and share data with researchers.

### Contract Address

- **Contract Address:** `0xa649d9030fb89ff7807f2a71890ef2ff050d9cdd`

![image](https://github.com/user-attachments/assets/869ae977-4899-4856-abd2-04543a222470)



### Flowchart

Below is a high-level flow of how MedChain operates:

```
Patient Registration
       |
       v
+---------------------------+
|    Create Patient Record   |
+---------------------------+
       |
       v
+---------------------------+
|   Update Health Record     |
+---------------------------+
       |
       v
+---------------------------+
|   Grant/Revoke Access to   |
|   Healthcare Providers     |
+---------------------------+
       |
       v
+---------------------------+
|   Share Record with        |
|   Researchers              |
+---------------------------+
```

### Smart Contract Functions

- **`createPatientRecord(string memory _medicalHistory)`**: Creates a new health record for the patient.
- **`updateHealthRecord(string memory _medicalHistory)`**: Updates the patient's health record.
- **`grantAccess(address _provider)`**: Grants access to a healthcare provider.
- **`revokeAccess(address _provider)`**: Revokes access from a healthcare provider.
- **`shareRecordWithResearcher(address _researcher)`**: Shares the patient's health record with a researcher.
- **`getHealthRecord(address _patient)`**: Retrieves the health record of a specified patient.

### Events

- **`NewPatientRecord(address patient, string medicalHistory)`**: Emitted when a new patient record is created.
- **`UpdateHealthRecord(address patient, string medicalHistory)`**: Emitted when a health record is updated.
- **`GrantAccess(address patient, address provider)`**: Emitted when access is granted to a healthcare provider.
- **`RevokeAccess(address patient, address provider)`**: Emitted when access is revoked from a healthcare provider.

## Future Scope

MedChain has the potential to expand and incorporate additional features, including:

- **Interoperability:** Integrate with existing electronic health record (EHR) systems to ensure seamless data exchange.
- **AI Integration:** Leverage AI to provide insights and recommendations based on patient data.
- **Multi-Chain Support:** Extend the platform to support multiple blockchain networks.
- **Decentralized Identity (DID):** Implement DID standards to enhance patient identity management.
- **Data Monetization:** Allow patients to monetize their data by securely sharing it with researchers and pharmaceutical companies.

## Contact Information

For more information or queries about the MedChain project, feel free to reach out:

- **Email:** praneet.gogoi@gmail.com
- **LinkedIn:** www.linkedin.com/in/praneet-gogoi-b71340224

This README provides a clear overview of the MedChain project, outlining its vision, functionality, and future scope. It also includes contact information for further inquiries.
