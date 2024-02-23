create schema reports;

create table reports.cloud_formation_templates (
  stack_name text,
  tag_version text,
  commit_sha text NOT NULL,
  template_body text NOT NULL,
  created_at timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
  environment_name text DEFAULT 'SANDBOX'::text,
  CONSTRAINT reports_cloud_formation_templates_pkey PRIMARY KEY (stack_name, environment_name, tag_version));