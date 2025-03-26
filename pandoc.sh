PANDOC=pandoc
FLAGS="\
    --from=markdown+rebase_relative_paths+raw_tex \
    --to=beamer \
    --metadata-file=metadata.yaml \
    --bibliography=references.bib \
    --citeproc\
"
# To add a custom CSL, say x.csl, download it to the repo root and add
# `--csl=x` to FLAGS

sh -c "${PANDOC} ${FLAGS} --output=${2} ${1}"
