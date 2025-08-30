# Useful Scripts

A collection of useful AWS and utility scripts for cloud infrastructure management and automation.

## Structure

```
useful-scripts/
├── boto3/                    # AWS SDK scripts
│   └── export_s3_config/     # S3 configuration export tools
├── tests/                    # Test files
└── README.md                 # This file
```

## Scripts

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
{account-id}/
├── bucket1.json
├── bucket2.json
└── bucket3.json
```

## Installation

```bash
# Install dependencies
pip install -e .

# Install with development dependencies
pip install -e ".[dev]"
```

## Development

```bash
# Format code
black .

# Lint code
flake8 .

# Run tests
pytest
```

## Dependencies

- **boto3**: AWS SDK for Python
- **requests**: HTTP library for API calls

## Contributing

1. Add new scripts in appropriate subdirectories
2. Include documentation and usage examples
3. Add tests where applicable
4. Follow existing code style (black formatting)
