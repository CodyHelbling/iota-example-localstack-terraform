import json


def make_prettier(json_str):
    parsed = json.loads(json_str)
    pretty = json.dumps(parsed, indent=2)

    return pretty
