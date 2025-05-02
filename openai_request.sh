#! /bin/sh

API_KEY=$(cat path/to/openai_key)

rm $1_from_openai.jsonl
python ./openai_api_request_parallel_processor.py \
  --requests_filepath $1_to_openai.jsonl \
  --save_filepath $1_from_openai.jsonl \
  --request_url https://api.openai.com/v1/chat/completions \
  --max_requests_per_minute 28000 \
  --max_tokens_per_minute 13000000 \
  --token_encoding_name cl100k_base \
  --max_attempts 5 \
  --logging_level 20 \
  --api_key $API_KEY


