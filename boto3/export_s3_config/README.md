### AWS Config Export

**Location:** `boto3/export_s3_config/export_s3_config.py`

Exports AWS Config data for all S3 buckets in your account to JSON files.

**Features:**
- Automatically detects bucket regions
- Creates directory named after AWS account ID
- Exports each bucket's configuration as separate JSON file
- Handles datetime serialization for JSON compatibility

**Usage:**
```bash
cd boto3/export_s3_config/
python export_s3_config.py
```

**Requirements:**
- AWS Config enabled in your account
- IAM permissions:
  - `s3:ListAllMyBuckets`
  - `s3:GetBucketLocation`
  - `config:GetResourceConfigHistory`
  - `sts:GetCallerIdentity`

**Output:**
```
/tmp/{account-id}/
├── bucket1.json
├── bucket2.json
└── bucket3.json
```
