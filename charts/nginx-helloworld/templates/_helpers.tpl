{{- define "nginx-helloworld.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "nginx-helloworld.fullname" -}}
{{- printf "%s-%s" (include "nginx-helloworld.name" .) .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}