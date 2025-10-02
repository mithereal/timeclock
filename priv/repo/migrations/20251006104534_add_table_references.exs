defmodule Timeclock.Repo.Migrations.AddTableReferences do
  use Ecto.Migration

  def change do
    #
    # Foreign Key Relationships
    #

    alter table(:absences) do
      add :user_id, references(:users, on_delete: :nilify_all)
      add :absence_definition_id, references(:absence_definitions, on_delete: :nilify_all)
      add :approved_by_id, references(:users, on_delete: :nilify_all)
    end

    alter table(:absence_definitions) do
      # no direct foreign keys
    end

    alter table(:addresses) do
      # no direct foreign keys
    end

    alter table(:approval_requests) do
      add :requester_id, references(:users, on_delete: :delete_all)
      add :approver_id, references(:users, on_delete: :nilify_all)
    end

    alter table(:assignments) do
      add :user_id, references(:users, on_delete: :delete_all)
      add :project_id, references(:projects, on_delete: :delete_all)
      add :role_id, references(:roles, on_delete: :nilify_all)
    end

    alter table(:break_rules) do
      # none
    end

    alter table(:calendars) do
      # none
    end

    alter table(:companies) do
      add :address_id, references(:addresses, on_delete: :nilify_all)
    end

    alter table(:departments) do
      add :company_id, references(:companies, on_delete: :delete_all)
    end

    alter table(:employees) do
      add :user_id, references(:users, on_delete: :delete_all)
      add :department_id, references(:departments, on_delete: :nilify_all)
    end

    alter table(:geolocations) do
      # none
    end

    alter table(:locations) do
      add :address_id, references(:addresses, on_delete: :nilify_all)
    end

    alter table(:managers) do
      add :user_id, references(:users, on_delete: :delete_all)
      add :department_id, references(:departments, on_delete: :delete_all)
    end

    alter table(:organizations) do
      add :company_id, references(:companies, on_delete: :delete_all)
    end

    alter table(:projects) do
      add :organization_id, references(:organizations, on_delete: :delete_all)
    end

    alter table(:roles) do
      # none
    end

    alter table(:schedules) do
      add :user_id, references(:users, on_delete: :delete_all)
      add :shift_id, references(:shifts, on_delete: :delete_all)
    end

    alter table(:shifts) do
      # none
    end

    alter table(:tasks) do
      add :project_id, references(:projects, on_delete: :delete_all)
    end

    alter table(:time_entries) do
      add :user_id, references(:users, on_delete: :delete_all)
      add :task_id, references(:tasks, on_delete: :nilify_all)
    end

    alter table(:users) do
      add :role_id, references(:roles, on_delete: :nilify_all)
    end
  end
end
