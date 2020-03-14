# docker run
rdk(){
  IMAGE="$1"
  PORT="$2"
  if [[ -n "${IMAGE}" && -n "${PORT}" ]]; then
    docker run --rm -it -v $(pwd):/src:cached -p "${PORT}":"${PORT}" "${IMAGE}" bin/bash
  elif [[ -n "${IMAGE}" ]]; then
    docker run --rm -it -v $(pwd):/src:cached "${IMAGE}" bin/bash
  fi
}

# docker run demon
rdkd(){
  IMAGE="$1"
  PORT="$2"
  if [[ -n "${IMAGE}" && -n "${PORT}" ]]; then
    docker run --rm -d -v $(pwd):/src:cached -p "${PORT}":"${PORT}" "${IMAGE}"
  elif [[ -n "${IMAGE}" ]]; then
    docker run --rm -d -v $(pwd):/src:cached "${IMAGE}"
  fi
}
