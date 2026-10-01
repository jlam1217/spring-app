{{/*
Expand the name of the chart.
*/}}
{{- define "my-spring-app.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by DNS).
*/}}
{{- define "my-spring-app.fullname" -}}
{{- default .Chart.Name .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "my-spring-app.labels" -}}
helm.sh/chart: {{ .Chart.Version }}
app.kubernetes.io/name: {{ include "my-spring-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "my-spring-app.selectorLabels" -}}
app.kubernetes.io/name: {{ include "my-spring-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
