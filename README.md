# Support Triage NLP

Classify support tickets by topic/urgency with weak supervision + transformer fine-tuning.
Includes an **active learning** loop and explanations for analysts.

## Quickstart
```bash
uv sync
make prepare
make train
make serve
make ui
