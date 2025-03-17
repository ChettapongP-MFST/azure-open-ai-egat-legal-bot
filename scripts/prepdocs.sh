 #!/bin/sh

. ./scripts/load_python_env.sh

echo 'Running "prepdocs.py"'

additionalArgs=""
if [ $# -gt 0 ]; then
  additionalArgs="$@"
fi

./.venv/bin/python ./app/backend/prepdocs.py './data/' --verbose $additionalArgs
# ./.venv/bin/python ./app/backend/prepdocs.py './data/EGAT Bot Sample question with expected answer.xlsx' --verbose $additionalArgs