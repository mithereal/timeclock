defmodule TimeclockWeb.Router do
  use TimeclockWeb, :router

  alias TimeclockWeb.ApiSpec
  alias OpenApiSpex.Plug.PutApiSpec

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {TimeclockWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
    plug PutApiSpec, module: ApiSpec
  end

  scope "/api/v1", TimeclockWeb do
    pipe_through :api

    # --- Accounts Context ---
    resources "/users", UserController, except: [:new, :edit]
    resources "/roles", RoleController, except: [:new, :edit]
    resources "/employees", EmployeeController, except: [:new, :edit]
    resources "/managers", ManagerController, except: [:new, :edit]

    # --- Organizations Context ---
    resources "/companies", CompanyController, except: [:new, :edit]
    resources "/departments", DepartmentController, except: [:new, :edit]
    resources "/organizations", OrganizationController, except: [:new, :edit]
    resources "/addresses", AddressController, except: [:new, :edit]

    # --- Projects Context ---
    resources "/projects", ProjectController, except: [:new, :edit]
    resources "/tasks", TaskController, except: [:new, :edit]
    resources "/assignments", AssignmentController, except: [:new, :edit]

    # --- Scheduling Context ---
    resources "/schedules", ScheduleController, except: [:new, :edit]
    resources "/shifts", ShiftController, except: [:new, :edit]
    resources "/break_rules", BreakRuleController, except: [:new, :edit]
    resources "/calendars", CalendarController, except: [:new, :edit]

    # --- TimeTracking Context ---
    resources "/time_entries", TimeEntryController, except: [:new, :edit]
    resources "/geolocations", GeolocationController, except: [:new, :edit]

    # --- Absences Context ---
    resources "/absences", AbsenceController, except: [:new, :edit]
    resources "/absence_definitions", AbsenceDefinitionController, except: [:new, :edit]
    resources "/approval_requests", ApprovalRequestController, except: [:new, :edit]
  end

  scope "/", TimeclockWeb do
    pipe_through :browser

    get "/", PageController, :home
  end

  # Other scopes may use custom stacks.
  # scope "/api", TimeclockWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:timeclock, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: TimeclockWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
