.class public Lcom/ecarx/sdk/vehicle/DashboardWrapper;
.super Ljava/lang/Object;
.source "DashboardWrapper.java"

# interfaces
.implements Lcom/ecarx/sdk/vehicle/dashboard/IDashboard;


# instance fields
.field private dashboardAdapt:Lcom/ecarx/xui/adaptapi/vehicle/dashboard/IDashboard;


# direct methods
.method public constructor <init>(Lcom/ecarx/xui/adaptapi/vehicle/dashboard/IDashboard;)V
    .registers 2
    .param p1, "dashboard"    # Lcom/ecarx/xui/adaptapi/vehicle/dashboard/IDashboard;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ecarx/sdk/vehicle/DashboardWrapper;->dashboardAdapt:Lcom/ecarx/xui/adaptapi/vehicle/dashboard/IDashboard;

    .line 15
    return-void
.end method


# virtual methods
.method public geMileageInfo()Lcom/ecarx/sdk/vehicle/dashboard/IMileageInfo;
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccStatus()I
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getAverageFuelConsumptionLevel()D
    .registers 3

    .prologue
    .line 29
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFuelLevel()I
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public getFullFuelLevel()I
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public getHandBrakeStatus()I
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getInstantaneousFuelConsumptionLevel()D
    .registers 3

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVehicleSpeed()I
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ecarx/sdk/vehicle/DashboardWrapper;->dashboardAdapt:Lcom/ecarx/xui/adaptapi/vehicle/dashboard/IDashboard;

    if-eqz v0, :cond_b

    .line 40
    iget-object v0, p0, Lcom/ecarx/sdk/vehicle/DashboardWrapper;->dashboardAdapt:Lcom/ecarx/xui/adaptapi/vehicle/dashboard/IDashboard;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/vehicle/dashboard/IDashboard;->getVehicleSpeed()I

    move-result v0

    .line 42
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
