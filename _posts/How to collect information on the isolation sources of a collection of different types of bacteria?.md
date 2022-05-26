### How to get basic isolation source information from ncbi assembly accession

```bash
esearch -query [accession] -db assembly | elink -target biosample | esummary | xtract -pattern DocumentSummary -first Title -element Accession -group Attribute -if Attribute@harmonized_name -equals "isolation_source" -element Attribute
```

You can call this from an Rscript using `system()`
