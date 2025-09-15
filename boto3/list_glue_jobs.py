#!/usr/bin/env python3

import boto3


def main():
    glue = boto3.client("glue")

    try:
        response = glue.get_jobs()
        jobs = response["Jobs"]

        print(f"Found {len(jobs)} Glue ETL jobs:")
        for job in jobs:
            print(job["Name"])

    except Exception as e:
        print(f"Error: {e}")


if __name__ == "__main__":
    main()
