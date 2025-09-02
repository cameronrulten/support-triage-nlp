PY:=uv run
.PHONY: prepare train serve ui

prepare:
	$(PY) python -m src.data.prepare --config configs/data.yaml

train:
	$(PY) python -m src.models.train_hf --config configs/model.yaml

serve:
	$(PY) uvicorn src.serve.api:app --host 0.0.0.0 --port 8010 --reload

ui:
	$(PY) streamlit run src/app/ui.py
