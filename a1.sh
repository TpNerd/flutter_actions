UDID=$(
          xcrun xctrace list devices |
          awk \
            -F ' *[][]' \
            -v 'device=iPhone 11' \
            '$1 == device { print $2 }'
)

echo "$UDID"
