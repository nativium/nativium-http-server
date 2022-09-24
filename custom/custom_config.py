# -----------------------------------------------------------------------------
def run(params):
    return [
        {
            "type": "remove-dir",
            "path": "modules",
        },
        {
            "type": "symlink",
            "source": "modules",
            "target": "modules",
        },
        {
            "type": "replace-text",
            "path": "core/const.py",
            "list": [
                {
                    "old": 'BUCKET_NAME = "nativium"',
                    "new": 'BUCKET_NAME = "nativium-http-server"',
                },
            ],
        },
        {
            "type": "replace-text",
            "path": "targets/linux/config/target_config.py",
            "list": [
                {
                    "old": 'has_debug = True',
                    "new": 'has_debug = False',
                },
                {
                    "old": '"assets_dir": ""',
                    "new": '"assets_dir": "modules/app-main/resources"',
                },
            ],
        },
        {
            "type": "replace-text",
            "path": "targets/macos/config/target_config.py",
            "list": [
                {
                    "old": 'has_debug = True',
                    "new": 'has_debug = False',
                },
                {
                    "old": '"assets_dir": ""',
                    "new": '"assets_dir": "modules/app-main/resources"',
                },
                {
                    "old": '"min_version": "10.9",',
                    "new": '"min_version": "10.15",',
                },
            ],
        },
        {
            "type": "replace-text",
            "path": "targets/windows/config/target_config.py",
            "list": [
                {
                    "old": 'has_debug = True',
                    "new": 'has_debug = False',
                },
                {
                    "old": '"assets_dir": ""',
                    "new": '"assets_dir": "modules/app-main/resources"',
                },
            ],
        },
    ]
