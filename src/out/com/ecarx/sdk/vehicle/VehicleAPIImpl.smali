.class public Lcom/ecarx/sdk/vehicle/VehicleAPIImpl;
.super Lcom/ecarx/sdk/vehicle/VehicleAPI;
.source "VehicleAPIImpl.java"


# instance fields
.field private dashboardWrapper:Lcom/ecarx/sdk/vehicle/DashboardWrapper;

.field private mCtx:Landroid/content/Context;

.field private vehicleAdapt:Lcom/ecarx/xui/adaptapi/vehicle/Vehicle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "mCtx"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ecarx/sdk/vehicle/VehicleAPI;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ecarx/sdk/vehicle/VehicleAPIImpl;->mCtx:Landroid/content/Context;

    .line 25
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/vehicle/Vehicle;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/vehicle/Vehicle;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/vehicle/VehicleAPIImpl;->vehicleAdapt:Lcom/ecarx/xui/adaptapi/vehicle/Vehicle;

    .line 26
    new-instance v0, Lcom/ecarx/sdk/vehicle/DashboardWrapper;

    iget-object v1, p0, Lcom/ecarx/sdk/vehicle/VehicleAPIImpl;->vehicleAdapt:Lcom/ecarx/xui/adaptapi/vehicle/Vehicle;

    invoke-virtual {v1}, Lcom/ecarx/xui/adaptapi/vehicle/Vehicle;->getDashboard()Lcom/ecarx/xui/adaptapi/vehicle/dashboard/IDashboard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ecarx/sdk/vehicle/DashboardWrapper;-><init>(Lcom/ecarx/xui/adaptapi/vehicle/dashboard/IDashboard;)V

    iput-object v0, p0, Lcom/ecarx/sdk/vehicle/VehicleAPIImpl;->dashboardWrapper:Lcom/ecarx/sdk/vehicle/DashboardWrapper;

    .line 27
    return-void
.end method


# virtual methods
.method public getBcm()Lcom/ecarx/sdk/vehicle/bcm/IBcm;
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDashboard()Lcom/ecarx/sdk/vehicle/dashboard/IDashboard;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ecarx/sdk/vehicle/VehicleAPIImpl;->dashboardWrapper:Lcom/ecarx/sdk/vehicle/DashboardWrapper;

    return-object v0
.end method

.method public getEngine()Lcom/ecarx/sdk/vehicle/ems/IEms;
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHvacState()Lcom/ecarx/sdk/vehicle/hvac/IHvacState;
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTcu()Lcom/ecarx/sdk/vehicle/tcu/ITcu;
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTireState(I)Lcom/ecarx/sdk/vehicle/tpms/ITireState;
    .registers 3
    .param p1, "tire"    # I

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method
