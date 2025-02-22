def convert_model:
  {
    "model": {
      "type": "select",
      "fallback": {
        "type": "model",
        "model": .textures.layer0
      },
      "property": "custom_model_data",
      "cases": [
        .overrides[] | {
          "when": [.predicate.custom_model_data],
          "model": {
            "type": "model",
            "model": .model
          }
        }
      ]
    }
  };

convert_model
