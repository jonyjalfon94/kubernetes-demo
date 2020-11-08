{{/* Generate basic labels */}}
{{- define "fruitapp.labels" }}
  generator: helm
  date: {{ now | htmlDate }}
  chart: {{ .Chart.Name }}
  version: {{ .Chart.Version }}
{{- end }}