.class public Lcom/ecarx/sdk/ECarXAPIImpl;
.super Ljava/lang/Object;
.source "ECarXAPIImpl.java"

# interfaces
.implements Lcom/ecarx/sdk/openapi/IeCarXAPI;


# static fields
.field private static final TAG:Ljava/lang/String; = "ECarXVrAPIImpl"


# instance fields
.field private final iNaviAPILock:Ljava/lang/Object;

.field private final mCtx:Landroid/content/Context;

.field private mNaviAPI:Lcom/ecarx/sdk/navi/NaviServerImpl;

.field private final mSysPolicyAPILock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/ECarXAPIImpl;->iNaviAPILock:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/ECarXAPIImpl;->mSysPolicyAPILock:Ljava/lang/Object;

    .line 25
    iput-object p1, p0, Lcom/ecarx/sdk/ECarXAPIImpl;->mCtx:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public getBtAPI()Lcom/ecarx/sdk/bt/IBtAPI;
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHardKeyApi()Lcom/ecarx/sdk/input/hardkey/IHardKeyAPI;
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSysPolicyApi()Lcom/ecarx/sdk/syspolicy/ISysPolicyAPI;
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method
